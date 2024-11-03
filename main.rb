require 'bundler/setup'
require 'rubocop'

def shift_letter(char, shift)
  shifted_ord = char.ord + shift

  if char =~ /[a-z]/
    shifted_ord > 122 ? (shifted_ord - 26).chr : shifted_ord.chr
  elsif char =~ /[A-Z]/
    shifted_ord > 90 ? (shifted_ord - 26).chr : shifted_ord.chr
  else
    char
  end
end

def caesar_cipher(string, shift)
  arrayed_answer = string.chars.map { |char| shift_letter(char, shift) }
  arrayed_answer.join
end

puts caesar_cipher('If he had anything confidential to say', 8)
