#!/usr/bin/env ruby

$LOAD_PATH << "lib"
$LOAD_PATH << "../lib"

$KCODE = 'u'

begin
	require "rubygems"
rescue LoadError
end
require "net/irc"
require "kconv"
require "pp"

IRC_ENCODING='iso-2022-jp'

class ClanIrcBot < Net::IRC::Client

	#初期化
	def initialize(*args)
		super 
	end

	def on_rpl_welcome(m)
		post JOIN, "#totugekilunach"
	end

	def on_privmsg(m)
#		post NOTICE, m[0],m[1]
		msg = m[1].kconv(Kconv::UTF8, Kconv::JIS)
		post NOTICE, m[0], "#{Kconv.guess(msg)}"
		puts m

		if (msg =~ /^fuck$/)
			saymsg m, '日本語しゃべれよ'
		end
		if(msg =~ /^クラン加入希望$/)
			saymsg m, 'チーフの方対応お願いします。'
		end

		if(msg == "quit,clanbot")
			on_queryquit m
		end
	end

	def on_userjoin(m)
		post NOTICE, m[0],
			saymsg(m.prefix.nick +'さん、【SUNTORY】チャンネルへようこそ')
		post NOTICE, m[0],
			saymsg('クラン加入希望の場合は「クラン加入希望」と発言してください。')
	end

	def on_queryquit(m)
		post QUIT, 'わかったよ。でていけばいいんだろ'.encode(IRC_ENCODING).force_encoding('external') 
	end

	def saymsg(m, msg)
		post NOTICE, m[0], msg.encode(IRC_ENCODING).force_encoding('external')
	end

end

ClanIrcBot.new("irc.friend-chat.jp","6664",
	       {
	       :nick => "clantestbot",
	       :user => "clantestbot",
	       :real => "clantestbot",
	       :log => "/
	       }
	      ).start
