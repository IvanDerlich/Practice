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
    return "Indeterminate" if b==0 && a==0
    return "Positive Infinity" if b == 0 && a > 0
    return "Negative Infinity" if b == 0 && a < 0
    (a / b.to_f)
  end
end