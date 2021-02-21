def movie_info(movie, data)
  puts movie[data]
end

movie = {"タイトル" => "ハリーポッター", "ジャンル" => "ファンタジー", "公開した年" => "2001年"}

puts "以下から１つを選んで入力してください。
  タイトル
  ジャンル
  公開した年"
  
info = gets.chomp

movie_info(movie, info)