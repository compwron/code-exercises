require "pry"
class Roman
  MAPPING = { I: 1, V: 5, X: 10, L: 50, C:100, D: 500, M: 1000 }
  def initialize(num)
    @num = num
  end

  def translate
    sum = 0
    index = 0
    @num.split("").each {|c|
      break if index >= @num.length
      this_char_val = mapping(@num[index])
      if is_subtractive?(index, this_char_val)
        sum += mapping(@num[index + 1]) - this_char_val
        index += 1
      else
        sum += this_char_val
      end
      index += 1
    }
    sum
  end

  private

  def is_subtractive?(index, this_char_val)
    !last_char(index, @num) && this_char_val < mapping(@num[index + 1])
  end

  def last_char(index, num)
    index == num.length - 1
  end

  def mapping(c)
    MAPPING[c.to_sym]
  end
end
