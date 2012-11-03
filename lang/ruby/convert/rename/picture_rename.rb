#!/opt/local/bin/ruby
# -*- coding: utf-8 -*-


def reNameFile
  Dir::glob("*.jpg").each do |file|
    rename_filename = @rename_string + file
    begin
      File.rename(file, rename_filename)
    rescue
      p "ファイル名変更時にエラーが発生しました。"
    end
  end
end

def setRenameString(string = "old")
  @rename_string = string
end

def setBaseDir(string = NULL)
  begin
    Dir::chdir(string)
  rescue
    p "ディレクトリが存在しません。"
    return 0
  end
end

if ARGV.size == 0
  print <<DESCRIPT
  第一引数:置き換える文字列(ファイル名の前につきます。)
  第二引数:置換するディレクトリ名(ディレクトリ配下のjpgファイルを置換します。)
DESCRIPT
exit
end

rename_string = "old"

setRenameString(ARGV[0])
setBaseDir(ARGV[1])
reNameFile
