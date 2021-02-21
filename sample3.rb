def input_score
  score = {}
  puts "生徒の名前を入力してください:"
  score[:name] = gets.chomp
  puts "得点を入力してください:"
  score[:score] = gets.to_i
  
  return score
end

def show_all_score(a_scores)
  sum = 0
  line = "--------------------------"
  puts line
  
  sort_scores = []
  
  
  a_scores.each do |score|
    index = 0
    
    sort_scores.each do |s_score|
      if score[:score] < s_score[:score]
        index = index + 1
      end
      
    end
    
    if sort_scores.count == index
      sort_scores << score
    else
      i = 0
      new_sort_scores = []
      
      sort_scores.each do |sort_score|
        if i == index
          new_sort_scores << score
        end
        
        new_sort_scores << sort_score
        i = i + 1
      end
    
      sort_scores = new_sort_scores
    end
  end
  
  
  sort_scores.each do |score|
    puts "#{score[:name]} : #{score[:score]}点"
    sum = sum + score[:score]
  end
  
  puts line
  puts "平均得点 : #{sum/a_scores.count}点"
end


scores = []

while true do
  puts "得点を入力しますか？:[0]yes [1]no"
  input = gets.to_i
  
  if input == 0
    scores << input_score
  elsif input == 1
    if scores == []
      puts "※必ず１人の生徒を以上入力してください！！"
      scores << input_score
    else
      show_all_score(scores)
      exit
    end
  end
  
end
