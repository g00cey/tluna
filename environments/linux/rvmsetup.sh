#!/bin/bash 
#rvm install ree && rvm install 1.9.2 && rvm install 1.8.7
source ~/.bash_profile
rvm install ree
rvm ree
gem install twitter rails hpricot mechanize dalli wirble sqlite3 mysql postgres tokyotyrant
rvm ree --passenger
gem install passenger
rvmsudo passenger-install-apache2-module
rvm install 1.9.2
rvm 1.9.2
gem install twitter rails hpricot mechanize dalli wirble sqlite3 mysql postgres tokyotyrant
rvm install 1.9.3
rvm 1.9.3
gem install twitter rails hpricot mechanize dalli wirble sqlite3 mysql postgres tokyotyrant
rvm install 1.8.7
rvm 1.8.7
gem install twitter rails hpricot mechanize dalli wirble sqlite3 mysql postgres tokyotyrant
