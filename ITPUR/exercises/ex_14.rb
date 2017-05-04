contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts.each do |key|
  key[:email] = contact_data[0][0]
  key[:address] = contact_data[0][1]
  key[:phone] = contact_data[0][2]
end

puts contacts
