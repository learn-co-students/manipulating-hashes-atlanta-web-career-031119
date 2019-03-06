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

  #your code here
  # contacts.map {|name, info| if name=="Freddy Mercury"; info.map {|item, data| if item==:favorite_icecream_flavors; data.delete_if {|item| item=="strawberry"}}}
  contacts.map do |name, info|
    if name=="Freddy Mercury"
      info.map do |item, data|
        if item==:favorite_icecream_flavors
          data.delete_if {|item| item=="strawberry"}
        end
      end
    end
  end

  #remember to return your newly altered contacts hash!
  contacts
end
