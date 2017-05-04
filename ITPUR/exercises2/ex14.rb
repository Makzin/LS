# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}}
#
# contact_data.each do |x|
#   contacts["Joe Smith"][:email] = x[0]
#   contacts["Joe Smith"][:address] = x[1]
#   contacts["Joe Smith"][:phone] = x[2]
# end



contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end

puts contacts
