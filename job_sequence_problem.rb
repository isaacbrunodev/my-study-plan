# Ruby code for the above approach

# Function to schedule the jobs take 2
# arguments array and no of jobs to schedule
def print_job_scheduling(arr, t)
    # Length of array
    n = arr.length
  
    # Sort all jobs according to
    # decreasing order of profit
    (0..n - 1).each do |i|
      (0..n - 2 - i).each do |j|
        arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j][2] < arr[j + 1][2]
      end
    end
  
    # To keep track of free time slots
    result = [false] * t
  
    # To store result (Sequence of jobs)
    job = ['-1'] * t
  
    # Iterate through all given jobs
    (0..arr.length - 1).each do |i|
      # Find a free slot for this job
      # (Note that we start from the
      # last possible slot)
      [(t - 1), (arr[i][1] - 1)].min.downto(0) do |j|
        # Free slot found
        if !result[j]
          result[j] = true
          job[j] = arr[i][0]
          break
        end
      end
    end
  
    # Print the sequence
    puts job.join(', ')
  end
  
  # Driver's Code
  arr = [['a', 2, 100], # Job Array
         ['b', 1, 19],
         ['c', 2, 27],
         ['d', 1, 25],
         ['e', 3, 15]]
  
  puts 'Following is the maximum profit sequence of jobs'
  
  # Function Call
  print_job_scheduling(arr, 3)
  
  # This code is contributed
  # by Anubhav Raj Singh
  