def convert_temp(temp, input_scale:, output_scale: "celsius")
  
  #convert temp to celsius by default
  case input_scale
  when "celsius"
    to_celsius = temp.to_f
  when "fahrenheit"
    to_celsius = (temp.to_f - 32) * 5/9
  when "kelvin"
    to_celsius = temp.to_f - 273.15 
  end

  #converting the temp in celsius to other temperature scales
  case output_scale
  when "celsius"
    return to_celsius
  when "fahrenheit"
    return ((to_celsius * 9/5) +32)
  when "kelvin"
    return (to_celsius + 273.15)
  end
end



print convert_temp(2, input_scale: 'fahrenheit')
