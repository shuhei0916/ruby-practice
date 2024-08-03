a = 1
b = 2
c = a + b

puts "answer: " + c.to_s

arr = {'A' => 'Hello', 'B' => 'Welcome', 'C' => 'Bye'}
# for item in arr
#   puts item[0] + ":" + item[1]
# end


arr.each do | key, val |
  puts key + ":" + val
end


class Hello
  attr_accessor:name

  def initialize name="noname"
    @name = name
  end

  def say
    puts "Hello, " + @name + "!!"
  end
end

ob1 = Hello.new
ob1.say
ob1.name = "Hoge"

ob1.say
# ob2 = Hello.new "Shuhei"
# ob2.say