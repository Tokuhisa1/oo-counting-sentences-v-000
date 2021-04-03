require 'pry'

class String
  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    terminators = ['.', '?', '!']
    count = 0

    self.split(' ').each do | sentence |
      if terminators.include?(sentence[-1])
        count = count + 1
      end
    end
  
    count
  end
end