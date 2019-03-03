require 'pry'
def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  contacts["Freddy Mercury"].each do |a, b|
    
    if a == :favorite_icecream_flavors
      b.delete_if {|z| z == ("strawberry")}
    end 
  end 
  
 
  
  contacts
end

