# https://www.hackerrank.com/challenges/ruby-enumerable-collect/problem?isFullScreen=true

str = 'Jul qvq gur puvpxra pebff gur ebnq?'

def rot13(secret_messages)
    decoded_message = secret_messages.map do |str|
         str.tr('A-Za-z', 'N-ZA-Mn-za-m')
    end
    return decoded_message
end

p rot13(str)