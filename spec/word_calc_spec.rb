require ('rspec')
require ('word_calc.rb')

describe("word_calc") do
  it("gives the sum of the two numbers listed") do
    word_calc("5 plus 8").should(eq(13))
  end

  it("gives the difference of the two numbers listed") do
    word_calc("8 minus 5").should(eq(3))
  end

  it("multiplies two numbers") do
    word_calc("8 times 3").should(eq(24))
  end

  it("solves for exponents") do
    word_calc("3 to the power of 2").should(eq(9))
  end

  it("solves for multiple operators") do
    word_calc("8 times 3 minus 4").should(eq(20))
  end

end

describe("multiple_calc") do
  it("solves multiple problems within the same string") do
    multiple_calc("8 times 3? 5 minus 2?").should(eq([24, 3]))
  end
end
