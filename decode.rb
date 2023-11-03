MORSE_CODE = {
  ".-" => "A", "-..." => "B", "-.-." => "C", "-.." => "D", "." => "E",
  "..-." => "F", "--." => "G", "...." => "H", ".." => "I", ".---" => "J",
  "-.-" => "K", ".-.." => "L", "--" => "M", "-." => "N", "---" => "O",
  ".--." => "P", "--.-" => "Q", ".-." => "R", "..." => "S", "-" => "T",
  "..-" => "U", "...-" => "V", ".--" => "W", "-..-" => "X", "-.--" => "Y",
  "--.." => "Z"
}

# method to decode a Morse code character
def decode_char(morse_char)
  MORSE_CODE[morse_char]
end
# puts decode_char("--")