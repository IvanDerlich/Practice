class Calculator
  def sum a,b
    a + b
  end
  def subs a,b
    a - b
  end
  def mul a,b
    a * b
  end
  def div a,b
    a / b
  end
end

context "Calculator" do # Why do we have this context? What is the use of this?
  
  let(:calc){Calculator.new()} # Why do we use let instead of creating the instance

  describe "Sum" do #Why do we use describe? What's the use of this?
    it "5+4 = 9" do
      expect(calc.sum(4,5)).to be(9)         
    end
    it "5+4 = 9" do
      expect(calc.sum(4,5)).not_to be(10) 
    end
  end  

  describe "Substraction" do
    
  end

  describe "Multiplication" do
    
  end

  describe "Div" do
    
  end
end