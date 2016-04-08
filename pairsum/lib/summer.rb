class Summer
  def initialize(arr)
    @arr = arr
  end

  def pairs
    result = []
    keep_going = true
    misses_count = 0
    while keep_going
      current = @arr.shift
      if current
        complement = @arr.delete(100 - current)
        if complement
          result << [current, complement]
        else
          misses_count += 1
          @arr.push(current)
        end
      else
        keep_going = false
      end
      if misses_count >= @arr.length
        keep_going = false
      end
    end
    result
  end
end

