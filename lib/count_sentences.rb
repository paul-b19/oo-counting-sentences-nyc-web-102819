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
    replacement = {"!" => ".", "?" => "."}
    new_self = self.split('').map{|i| replacement[i] || i}.join
    new_self.split('.').reject{|c| c.empty?}.count
  end
end