# code the #greeting method here!
def greeting(name)
  name = name.gsub( /\s+/, " " )
  name=name.delete('\t')
  name=name.delete(' ')
  puts "Hello #{name}. It's nice to meet you."
end
