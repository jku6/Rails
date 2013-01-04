class Work
  def compute(calc)
    result = eval(calc)
    @computation = Computation.create(:name => calc, :result => result)
  end
end