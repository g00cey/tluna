#!/Users/luna/.rvm/bin/ruby
# -*- coding: utf-8 -*-
require './blogger'
require 'open-uri'
#このプログラムはライブラリ軍を操作します。
#処理としては、記事を見に行ってあれば取得して、ログインしてその後に記事を投稿させる処理をまとめるだけです。

blogger = Blogger.new('http://tluna-journal.blogspot.com/feeds/posts/default')
blogger.getUri
blogger.getBody
blogger.convertBody
