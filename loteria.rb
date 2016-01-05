def shuffle(array)
  # escribe el algoritmo que revuelva un array
  #array.shuffle
  new_array = []
  100.times do
    number = array.sample
    new_array = array.insert(rand(1..15), array.delete_at(number))
    new_array.delete(nil)
  end
  new_array.to_s
end


# Driver code:
array = (1..15).to_a

# Esto no deberá arrojar una excepción
10.times do |variable|
    raise "No esta revolviendo bien" if shuffle(array) == shuffle(array)
end
p true
