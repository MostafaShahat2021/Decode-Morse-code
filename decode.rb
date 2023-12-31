MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
  '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
  '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

# method to decode a Morse code character
def decode_char(morse_char)
  MORSE_CODE[morse_char]
end
# puts decode_char("--")

# method to decode an entire word in Morse code,
def decode_word(morse_word)
  morse_word.split.map { |morse_char| decode_char(morse_char) }.join
end
# puts decode_word('-- -.--')

# method to decode the entire message in morse code
def decode(message)
  message.split('   ').map { |morse_word| decode_word(morse_word) }.join(' ')
end
# puts decode('-- -.--   -. .- -- .')

message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode(message)
puts decoded_message
