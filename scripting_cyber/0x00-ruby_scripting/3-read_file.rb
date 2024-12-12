require 'json'

def count_user_ids(path)
  # Read the content of the file
  file_content = File.read(path)
  
  # Parse the JSON content
  data = JSON.parse(file_content)
  
  # Create a hash to count userIds
  user_id_count = Hash.new(0)
  
  # Iterate through the data and count userId occurrences
  data.each do |entry|
    user_id = entry['userId']
    user_id_count[user_id] += 1 if user_id
  end
  
  # Print the counts in the required format
  user_id_count.each do |user_id, count|
    puts "#{user_id}: #{count}"
  end
end