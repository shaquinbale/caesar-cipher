def shift_letter (char, shift)
  return char unless char =~ /[a-zA-Z0-9]/

  (char.ord + shift).chr
end

def caesar_cipher (string, shift)
  string.map {|char| shift_letter(string, shift)}
end