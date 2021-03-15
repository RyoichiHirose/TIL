hands={"g"=>"グー","c"=>"チョキ","p"=>"パー"}

x=0
while x==0
  p "何本勝負？(press 1 or 3 or 5)"
  times=gets.chomp.to_i
    if times==1 || times==3 || times==5
      break
    else
      p "正しい数値を入力してください"
    end
end

win=0 
lose=0 
draw=0

times.times do 
computer_hand=["g","c","p"].sample
p "じゃんけん…(press g or c or p)"
input=gets.chomp #改行文字を削除(getsは「/n」がついている)
  if input=="g" || input=="c" || input=="p"
    p "CPU...#{hands[computer_hand]}"
    p "あなた...#{hands[input]}"    
  else
    p "正しい値を入力してください"
    redo #redoの時はカウントされない
  end

  case 
    when input==computer_hand
      p "引き分け" 
      draw+=1
      p "#{win}勝#{lose}敗#{draw}分"

    when input=="g" && computer_hand=="c"
      p "勝ち！"
      win+=1
      p "#{win}勝#{lose}敗#{draw}分"
    
    when input=="c" && computer_hand=="p"
      p "勝ち！"
      win+=1
      p "#{win}勝#{lose}敗#{draw}分"

    when input=="p" && computer_hand=="g"
      p "勝ち！"
      win+=1
      p "#{win}勝#{lose}敗#{draw}分"

    else
      p "負け！"
      lose+=1
      p "#{win}勝#{lose}敗#{draw}分"
  
  end


end


if win>lose
  result="勝ち" 
elsif win<lose
  result="負け"
else
  result="引き分け"     
end
p "結果：#{win}勝#{lose}敗#{draw}分で#{result}です"
