#!/usr/local/bin/ruby -w
 file = ""
 File.open("test.rb", "r").each_line{|f| file << f}
 puts file.inspect
 file.gsub!("classname", "barebones")
 file.gsub!("ClassName", "BareBones")
 puts file.inspect
 File.open("test.rb", "w"){|f| f.write file}