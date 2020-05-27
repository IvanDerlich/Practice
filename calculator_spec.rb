require('./calculator.rb')

context "Calculator" do 
  
  let(:calc){Calculator.new()} 

  describe "Addition" do 

    it "5 + 4 = 9" do
      expect(
        calc.addition(4,5)
      ).to be(9)         
    end

    it "5 + 4 = 9" do
      expect(
        calc.addition(4,5)
      ).not_to be(10) 
    end

  end  

  describe "Substraction" do

    it "7 - 4" do
      expect(
        calc.substraction(7,4)
      ).to be(3) 
    end

    it "8 - 4" do
      expect(
        calc.substraction(8,4)
      ).not_to be(5) 
    end
    
  end

  describe "Multiplication" do

    it "3 * 5" do
      expect(
        calc.multiplication(3,5)
      ).to be(15)
    end
    
    it "3 * 5" do
      expect(
        calc.multiplication(3,5)
      ).not_to be(24)
    end

  end

  describe "Division" do

    it "6 / 3" do
      expect(
        calc.division(6,3)
      ).to be(2.0)
    end

    it "6 / 3" do
      expect(
        calc.division(6,3)
      ).not_to be(55)
    end

    it "7 / 2" do
      expect(
        calc.division(7,2)
      ).to be(3.5)
    end

    it "1 / 0", :focus do
      expect(
        calc.division(1,0)
      ).to eq('Positive Infinity')
    end

    it "0 / 0" do
      expect(
        calc.division(0,0)
      ).to eq('Indeterminate')
    end
    
    it "-1 / 0" do
      expect(
        calc.division(-1,0)
      ).to eq('Negative Infinity')
    end

  end
end

# Line 20: Why do we have this context? What is the use of this?
# Line 22: Why do we use let instead of creating the instance

  # We could also have done this: calc = Calculator.new() https://relishapp.com/rspec/rspec-core/docs/helper-methods/let-and-let

# Line 24: Why do we use describe? What's the use of this?


# First you write the empty test enunciating what to do without implementing the test.
# To brainstorm the idea fast and not loose them
# Test like it "Do something" do end
# You can put xit on it instead to remind you that you need to implement tests

# If you want to focus on a test that is not working as expected you can focus on one test with this procedure

# You write this on any part of the *_spec.rb file 
# or in the spec_helper if you have it and want to to this globaly in all tests

# RSpec.configure do |config|
#   config.filter_run_when_matching :focus
# end

# Then change the tests parameters this way:

# it 'runs a test', :focus do
#   ...test code
# end


# Once every test passes, we can 