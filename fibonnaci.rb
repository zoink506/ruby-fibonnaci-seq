def fibs(limit, sequence = [0, 1], i = 2)
  return sequence if i >= limit
  sequence << sequence[-1] + sequence[-2]
  fibs(limit, sequence, i + 1)
end

p fibs(10)
