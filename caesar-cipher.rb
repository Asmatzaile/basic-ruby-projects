def caesar_cipher(string, shift_factor)
shifted_array = string.bytes.map do |ascii_val|
  if ascii_val.between?(97,122) then base_num = 97    #lowercase 'circle'
  elsif ascii_val.between?(65,90) then base_num = 65  #uppercase 'circle'
  else next ascii_val.chr end                         #non-letter

  ((ascii_val - base_num + shift_factor) % 26 + base_num).chr
end
shifted_array.join("")
end

puts "Enter your string:"
string = gets.chomp
puts "Enter the shift factor:"
shift_factor = gets.chomp.to_i
puts "Your ciphered string is \"#{caesar_cipher(string, shift_factor)}\""