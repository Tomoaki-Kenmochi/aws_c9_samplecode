
class Greeter

  def initialize(name = "Tanaka")
    @name = name.capitalize
  end
  
  def greet
    puts "Hello, #{@name}!"
  end
  
  g = Greeter.new
  g1 = Greeter.new("world")
  g2 = Greeter.new("Kemmochi")

  g.greet
  g1.greet
  g2.greet
  
end


# 参考記事：

# シングルとダブルの違い（クォーテーション）
# https://qiita.com/ryosuketter/items/ddad508cb0124e4fe378

# String#capitalize (Ruby リファレンスマニュアル)
# https://docs.ruby-lang.org/ja/latest/method/String/i/capitalize.html

# 変数と定数 (Ruby リファレンスマニュアル)
# https://docs.ruby-lang.org/ja/latest/doc/spec=2fvariables.html

# Object#initialize (Ruby リファレンスマニュアル)
# https://docs.ruby-lang.org/ja/latest/method/Object/i/initialize.html

# Class#new (Ruby リファレンスマニュアル)
# https://docs.ruby-lang.org/ja/latest/method/Class/i/new.html

# Class.new (Ruby リファレンスマニュアル)
# https://docs.ruby-lang.org/ja/latest/method/Class/s/new.html