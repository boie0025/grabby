require 'numbers_and_words'

class Array

  class << self
    attr_writer :max_ordinal_number

    def ordinal_words_array
      word_array = ordinal_range_array.to_words ordinal: true
      word_array.map { |word| word.gsub ?-, ?_ }
    end

    def ordinal_range_array
      (1..max_ordinal_number).to_a
    end

    def max_ordinal_number
      @max_ordinal_number ||= 30
    end
  end

  ordinal_words_array.each_with_index do |nth, i|
    define_method "grab_every_#{nth}_element" do
      self.map &nth_element(i)
    end
  end

  private

  # From work with JD Guzman.
  def nth_element(index)
    p = -> (idx, arr) { arr[idx] }
    p.curry[index]
  end

end
