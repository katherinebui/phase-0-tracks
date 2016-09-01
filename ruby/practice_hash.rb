application = {
  date: "09/01/2016",
  name: "Dino Angel Muffin",
  dog: false,
  location: "Oakland",
  eyes: "blue",

}

p application

application[:date] = "09/02/2016"
application[:work] = "Twitter, Inc."

p application[:name] + application[:eyes]
# "Dino Angel Muffinblue"
# does not affect the org hash

application[:nickname] = application.delete(:name)
p application


# replacing key value pair in front of a hash
# def hash_add(hash, new_key, new_value)
#   temp_hash = {}

#   temp_hash[new_key.to_sym] = new_value
#   temp_hash.merge!(hash)
#   hash = temp_hash
#   hash
# end
# h2 = hash_add(hash, 'one', 1)
# hash
# => {:two=>2, :three=>3}
# h2
# =>{:one=>1, :two=>2, :three=>3}