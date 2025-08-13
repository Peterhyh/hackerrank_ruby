# https://www.hackerrank.com/challenges/ruby-enumerable-collect/problem?isFullScreen=true

str = 'Jul qvq gur puvpxra pebff gur ebnq?'


def rot13(secret_messages)
  rot_char = {
    "a" => "n",
    "b" => "o",
    "c" => "p",
    "d" => "q",
    "e" => "r",
    "f" => "s",
    "g" => "t",
    "h" => "u",
    "i" => "v",
    "j" => "w",
    "k" => "x",
    "l" => "y",
    "m" => "z",
    "A" => "N",
    "B" => "O",
    "C" => "P",
    "D" => "Q",
    "E" => "R",
    "F" => "S",
    "G" => "T",
    "H" => "U",
    "I" => "V",
    "J" => "W",
    "K" => "X",
    "L" => "Y",
    "M" => "Z"
  }

  result = []

  secret_messages.chars.map do |char|
    rot_char.each do |key, value|
      if key == char
        result << value
      elsif value == char
        result << key
      end
    end
    if char !~ /\A[a-zA-Z]\z/
      result << char
    end
  end
  p result.join
end

rot13(str)