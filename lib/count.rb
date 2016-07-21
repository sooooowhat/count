#coding:utf-8
require 'httpclient'
require 'hpricot'

link = "http://106.75.28.160/UCloud.txt#rd?sukey=3997c0719f1515206fcb3e208377fb04c629d5538daaa1eb8062a8dd668ceb37a14e5b49042e5f785681b5d06d1cbc61"
str = HTTPClient.new.get(link).body
doc = Hpricot(str)
p n = doc.to_s.scan(/UCanUup/).count