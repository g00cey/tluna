#!/usr/bin/ruby -Ku
#使うときには、downloadlist.txtを用意してください。
#written by gushi atsushi
#動作環境：ruby download-dl(http://sourceforge.jp/projects/nicovideo-dl/wiki/FrontPage)
#使用方法
#@ndownuserに

require 'open3'

@ndown = "./nicovideo-dl"
@ndownuser = "--username=totugekiluna2@gmail.com"
@ndownpass = "--password=totugeki"
@downlist = "downloadlist.txt"
@nosuchurllist = "nosuchurllist.txt"
@urllist = []
@faileddownlist = []
@nosuchvideomsg = /unable to retrieve video webpage./
@downdir = '/big/public/Movie/nico/'

def readURL
	if File.zero? @downlist then
		p "file is not registerted url"
		downlistcreate
	end
	File.open(@downlist, 'r').each do |line|
		if line =~ /http\:\/\/.*sm[0-9]*/
			@urllist.push line.chop
    else
      p "次のURLが間違っています。#{line}"
		end
	end
end

def downlistcreate
  p "=========================================="
  p "downloadlistに何も登録されていないので登録お願いします。"
  p "exitって入力すると、ダウンロード開始します。"
  File.open(@downlist,'a') do |line|
    while fline = STDIN.gets
      if fline.chop =~ /http\:\/\/.*sm[0-9]*/
        line.puts fline
        p "次のURLもしくは、exitを押してダウンロードを開始してください。"
      elsif fline =~ /exit/
        break
      else
        p "niconicoのURLを入力してください"
      end
    end
  end
end

def downloadvideo
	if @urllist.empty?
		exit
  end
  @urllist.each do |line|
    cmd = @ndown + " " + @ndownuser + " " + @ndownpass + " "
    Open3.popen3(cmd + line) do |stdin, stdout, stderr|
      stdin.close
      stderr.each do |er|
        if er =~ @nosuchvideomsg then
          @faileddownlist.push line
          p er
        end
      end
    end
	end
end

def faileddownload(url)
  File.open(@downlist, 'a').puts url 
end

def downlistinitialize
  File.open(@downlist,'w')
end

def dispfaileddownlist
  if not @faileddownlist.empty? then
    p "以下のファイルが見つかりませんでした。"
    @faileddownlist.each do |line|
      File.open(@nosuchurllist, 'a').puts line
      p line
    end
  end
end

readURL
downloadvideo
#downlistinitialize
dispfaileddownlist
