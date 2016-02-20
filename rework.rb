Dir['**/*.less'].each do |file|
  puts file
  content = IO.read(file)
  content.gsub!(/\(~"([^"]+)"\)/) { "{#{$1}}" }
  IO.write(file,content)
end