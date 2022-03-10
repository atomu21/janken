puts "最初はグーじゃんけん・・・・"
def janken
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"

    player_hand = gets.to_i
    program_hand = rand(3)

    hand_shape = ["グー", "チョキ","パー"]
    puts "ホイ!"
    puts "---------------"
    puts "あなた:#{hand_shape[player_hand]}を出しました\n相手:#{hand_shape[program_hand]}を出しました"
    puts "---------------".chomp

    if player_hand == program_hand
      puts "あいこで"
      return true
    elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
      puts "あっち向いて〜"
      puts "0(上)1(下)2(左)3(右)"
      player_finger = gets.to_i
      program_face = rand(4)
      direction = ["上","下","左","右"]
      puts "ホイ!"
      puts "---------------"
      puts "あなた:#{direction[player_finger]}\n相手:#{direction[program_face]}"
      puts "---------------"
      if player_finger == program_face
        puts "あなたの勝ちです"
      else
        return true
      end
    elsif(player_hand == 0 && program_hand == 2)||(player_hand == 1 && program_hand == 0)||(player_hand == 2 && program_hand == 1)
      puts "あっち向いて〜"
      puts "0(上)1(下)2(左)3(右)"
      player_face = gets.to_i
      program_finger = rand(4)
      direction = ["上","下","左","右"]
      puts "ホイ!"
      puts "---------------"
      puts "あなた:#{direction[player_face]}\n相手:#{direction[program_finger]}"
      puts "---------------"
      if player_face == program_finger
        puts "あなたの負けです"
      else
        return true
      end
    end
end

next_game = true

while next_game
    next_game = janken
end
