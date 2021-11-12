data = File.open("raw_telemeter_20180329133531390206_6646_4004018197")
contents = ""
data.each {|line|
  contents << line
}
puts "hello world!"


s = contents
m = s.each_byte.map { |b| b.to_s(16).rjust(2,'0') }.join(" ")

# for i in m.each do
#   puts i 
# end
m2=""
m.each_line(separator="eb 90", chomp:false){|s| m2 << s.strip+"\n"}
File.open("output.txt","w"){|f| f.write m2}

# m = "48656c6c6f2c20576f726c6421"
# s = contents.scan(/../).map { |x| x.hex.chr }.join
# puts s 