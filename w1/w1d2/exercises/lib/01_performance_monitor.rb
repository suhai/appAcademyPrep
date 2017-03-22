def measure(num = 1, &prc)
  start_time = Time.now
  num.times { yield }
  end_time = Time.now
  (end_time - start_time).to_f / num
end
