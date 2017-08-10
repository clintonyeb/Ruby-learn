def transpose(arr)
  len = arr[0].length
  for i in 0..len-1
    for j in 0..len-1
      arr[i][j], arr[j][i] = arr[j][i], arr[i][j] if j > i
    end
    # puts
  end
  arr
end

rowss = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8]
]

p transpose rowss
