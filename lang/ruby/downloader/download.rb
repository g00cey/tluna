# encoding:utf-8
require 'fileutils'

require 'open-uri'

def getFiles(url)
  filename = url.split(/\//).last.chomp
  open(filename, "wb") do |o|
    open(url) do |source|
      o.write source.read
    end
  end
end

#なんか?とかついてきたので、しゃーなしでファイル名変更のchangeFilename
def getDownloadurl()
  f = File::open("downloadlist.txt","r") 
  f.each do |line|
    getFiles line
  end
end

def deletefiles()
  Dir::entries("./").each do |file_path|
    if(/.*wav$/ =~ file_path)
      FileUtils::rm(file_path)
    end
  end
end

#これを追加したのはダウンロードしたときにつけたファイル名の改行コード　アッー
def changeFilename(str)
  Dir::entries("./").each do |file_path|
    if(/.*wav$/ =~ file_path)
      FileUtils::mv(file_path,file_path.delete(str))
    end
  end
end

getDownloadurl
