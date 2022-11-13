require 'pry'

class String

  def sentence?
    start_with_conjuction = self.start_with?("But ", "And ", "Or ", "Nor ")
    end_with_period = self.end_with?(".")

    if start_with_conjuction
      false
    else
      if end_with_period
        true
      else
        false
      end
    end

  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/[.?!]+/).length
  end
end