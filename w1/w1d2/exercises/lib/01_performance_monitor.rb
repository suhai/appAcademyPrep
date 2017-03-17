def measure(num = 1, &prc)
  start_time = Time.now
  num.times { yield }
  end_time = Time.now
  ((end_time - start_time).to_f / num)
end

# I didn't quite understand some of what the 01_performance_monitor_spec.rb file was doing. I do understand the overall logic and I fully applied that to arrive at the solution above, which is super identical to the actual solutions privided with the exercise.