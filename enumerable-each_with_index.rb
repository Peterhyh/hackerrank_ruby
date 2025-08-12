#.each_with_index returns the item in an array with the corresponding index number

arr = ['leopard', 'bear', 'fox', 'wolf'] 
skip_num = 2

def skip_animals(animals, skip)
  result = []
  animals.each_with_index do |item, index|
    if index >= skip
      result << "#{index}:#{item}"
    end
  end
  p result
end

skip_animals(arr, skip_num)