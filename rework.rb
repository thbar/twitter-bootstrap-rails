Dir['**/*.less'].each do |file|
  puts file
  content = IO.read(file)
  content.gsub!(/\s\(~"([^"]+)"\)/) { $1 }
  IO.write(file,content)
end 
