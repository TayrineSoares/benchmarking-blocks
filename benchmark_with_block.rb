# A benchmark in programming is a method of measuring the performance of code by recording how long it takes to execute. It's used to test the speed or efficiency of a particular operation, algorithm, or code block.

def benchmark
  start_time = Time.now
  yield # Execute the block of code passed to the method
  end_time = Time.now
  return end_time - start_time
end
 
# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000
 
running_time = benchmark { long_string.reverse }
 
puts "string.reverse took #{running_time} seconds to run"