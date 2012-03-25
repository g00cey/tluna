#!/usr/bin/ruby1.8

#= passengerの設定を補助するためのスクリプト
#Authors::    t1una
#Version::    1.0 2011 11 24 t1una
#Copyright::  t1una. 2011. all rights reserved.
#License::    Ruby License

railssite_dir = "/var/www/rails/"
railssite_work_dir = "/home/luna/tluna/ruby/rails/"
dir = Dir.open("/home/luna/tluna/ruby/rails")
expire = /document/

  #== site一覧取得  
  rails_sites  = Array.new
dir.each do | d |
  if d !~ /\.+/
    rails_sites.push d
  end
end
#== apacheのサイト名
a2_site_name  = "passenger"

#== 引数が無い場合は警告
if ARGV == nil
  puts 'args => enable disable'
  exit
end

#== 処理開始
ARGV.each do |arg|
  #=== 有効化の場合
  if arg == "enable" then
    #railssite_dirが存在しない場合は作成
    if not File.exist? railssite_dir
      begin
        Dir.mkdir(railssite_dir)
      rescue 
        puts 'must be run root'
      end
    end
    #各railssiteのシンボリックリンクを作成
    ##documentに関しては無視
    rails_sites.each do | railssite |
      if railssite =~ expire then
        next
      end
    link_src = railssite_work_dir + railssite.to_s + '/public'
    link_name = railssite_dir + railssite.to_s
    puts "src: "  + link_src 
    puts "link: " + link_name
    begin
      File::symlink(link_src,link_name)
    rescue Errno::EEXIST
      puts 'already symlinks ' + link_name
    rescue Errno::EACCES
      puts 'plz run root'
    rescue Errno::ENOENT
      puts 'plz make a directory /var/www/rails/'
    end
    end
    #== 無効化の場合
  elsif arg == "disable" then
    begin
      File::unlink(link_name)
    rescue Errno::EACCES
      puts 'plz run root'
    rescue Errno::ENOENT
      puts 'not found symlink:' + link_name
    end
  end

  if arg == 'enable'  then
    exec "a2ensite #{a2_site_name}"
  elsif arg == "disable" then
    exec "a2dissite #{a2_site_name}"
  end
end
