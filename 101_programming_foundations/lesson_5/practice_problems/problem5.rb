# Given this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# figure out the total age of just the male members of the family.

ages_array = munsters.map do |key, value|
  if value['gender'] == 'male'
    value['age']
  else 
    0
  end 
end 

p ages_array.inject {|sum, n| sum + n}
