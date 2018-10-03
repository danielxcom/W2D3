class Array

  def my_uniq
    result = []

    self.each do |el|
      result << el unless result.include?(el)
    end
    result
  end


  def two_sum
    result = []
    (0...self.length).each do |i|
      (i+1...self.length).each do |j|
        sub_arr = [i, j]
        result << sub_arr if self[i] + self[j] == 0 && !result.include?(sub_arr.reverse)
      end
    end
    result
  end


  weekly_stock_values = [3, 7, 5, 10, 30, 12]
  def stock_picker
  # iterate arr backwards
    #double while loop for all combos of days (indexes)
    #select sum of paairs that are greatest
    i = self.length - 1
    profit = 0
    current_index = []
    while i >= 0
      j = self.length - 2
      while j >= 0
        current_profit = self[i] - self[j]
        if current_profit > profit
          profit = current_profit
          current_index = [i, j]
        end
        j -= 1
      end

      i -= 1
    end
    current_index
  end
end

# #
# def my_transpose(arr, &prc)
#   prc ||= Proc.new { |row, col| row, col = col, row}
#   result = []
#   rows = arr
#   rows.each do |row_index, col_index|
#     result << prc.call(row_index, col_index)
#   end
#
#   result
# end

def my_transpose(arr)
  result = []
  (0...arr.length).each do |row|
    (0...arr.length).each do |col|
      result << [] unless result[col]
      result[col] << arr[row][col]
    end
  end

  result
end
