
def full_name(first_name, *last_name)
  combined_last_names = last_name.join(" ")
  "#{first_name} #{combined_last_names}"
end


print full_name("Buzz","Senora", "Sa.")
print full_name(" ")
print full_name("big", "random", "name")
