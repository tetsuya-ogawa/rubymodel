class Foo
 def bar(obj=nil)
   foo
 end

 private

 def foo
   puts "foo"
 end
end

Foo.new.bar(Foo.new)


# 実行結果
# foo
