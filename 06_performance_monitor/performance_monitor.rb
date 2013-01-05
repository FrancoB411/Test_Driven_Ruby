# def measure(num=1, &block)
#   collected_durations = []  
#   num.times do 
#     start_time = Time.now
#     yield
#     finish_time = Time.now
#     time_passed = duration(start_time, finish_time)
#     collected_durations << time_passed
#   end
#     average_time(collected_durations)
# end


# def duration(start_time, finish_time)
#   finish_time - start_time
# end

# def average_time(array)
#   num = array.count
#   total = array.inject(0) {|sum, num| sum + num }
#   total / num
# end

def measure(count=1, &block)
  durations = 0
  count.times do
    start_time = Time.now
    yield
    end_time = Time.now
    durations += end_time - start_time
  end
  durations/ count
end
