def fruits_box(fruits, num)
  puts "#{num}番目の要素は#{fruits[num - 1]}です！"
end

fruits_box = ["アップル", "オレンジ", "チェリー"]

puts "何がでるかな？取り出したい要素の順番を入力してください！（１〜３まで）"

num = gets.to_i

fruits_box(fruits_box, num)