require_relative "../lib/greeting.rb"

describe './bin/greet executing a CLI Application' do
  it 'outputs a welcome message and asks the user for input' do
    allow($stdout).to receive(:puts)
    allow(self).to receive(:gets).and_return("Don")

    expect($stdout).to receive(:puts).with("Hi! I'm HAL 9000, what's your name?"), "Make sure bin/greet has code that can output 'Hi! I'm HAL, what's your name?' exactly."

    run_file("./bin/greet")
  end

  it 'uses #gets.strip to capture the user input and set it equal to a variable called name' do
    allow($stdout).to receive(:puts)

    expect(self).to receive(:gets).and_return("Don")
    name = get_variable_from_file("./bin/greet", "name")

    expect(name).to eq("Don")
  end

  it "calls on the #greeting method with an argument of the user's name" do
    allow($stdout).to receive(:puts)
    allow(self).to receive(:gets).and_return("Don")

    expect(self).to receive(:greeting).with("Don"), "Make sure the bin/greet file has code that calls the #greeting method with an argument of the user's name."

    run_file("./bin/greet")
  end

  it "calls on the #greeting method with an argument of the user's name and returns the new greeting, interpolating the user's name" do
    allow($stdout).to receive(:puts)
    allow(self).to receive(:gets).and_return("Don")

    output = capture_puts{ run_file("./bin/greet") }

    expect(output).to include("\'Sup, Bitch!\n... \nI mean, DON! \nyeah,... \nDon, it's good to see you!")
  end
end
