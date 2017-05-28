puts '------------------------------------'
code = "puts 'test'"
eval(code)
puts '------------------------------------'

class Android
  def initialize(name)
    @name = name
  end
end

proc = Proc.new{
  p self
  p @name
}

puts '----------proc#call----------'
proc.call
puts '----------proc#call----------'


puts '----------instance_eval----------'
android = Android.new('android')
android.instance_eval(&proc)
puts '----------instance_eval----------'

puts '------------method_missing------------'
class Manager

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def method_missing(method_name, *arguments)
    puts "メソッド#{method_name}が次の引数で呼ばれました"
    arguments.each{|argument| puts argument}
  end
end

manager = Manager.new('tetsuya')
puts manager.name
manager.name = 'ogawa tetsuya'
puts '------------method_missing------------'
