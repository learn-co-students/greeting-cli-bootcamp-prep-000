# code the #greeting method here!

def greeting(name)
  puts "Hello #{name.strip}. It's nice to meet you."
end


# The `lib` directory is where we place the code that our program relies on to run. It is the meat of our CLI application. Our #executable file *requires* the files in the `lib` directory and uses the code (for example, calling on any methods we might #define) to enact the CLI.