require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    str = self.each_char{|c| c = "." if c == ("!" || "?")}
    binding.pry 
    
  end
end