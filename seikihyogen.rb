str = "hello <ruby> world"
if str =~ /<(\w+)>/
  puts $1
end
