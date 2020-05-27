class Calculator
  def addition a,b
    a + b
  end
  def substraction a,b
    a - b
  end
  def multiplication a,b
    a * b
  end
  def division a,b
    return "Indeterminate" if b==0 && a==0
    return "Positive Infinity" if b == 0 && a > 0
    return "Negative Infinity" if b == 0 && a < 0
    (a / b.to_f)
  end
end