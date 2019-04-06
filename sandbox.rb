
  @customers = [
    {
      name: "Alice",
      pets: [],
      cash: 1000
    },
    {
      name: "Bob",
      pets: [],
      cash: 50
    }
  ]

  @new_pet = {
    name: "Bors the Younger",
    pet_type: :cat,
    breed: "Cornish Rex",
    price: 100
  }

  @pet_shop = {
    pets: [
      {
        name: "Sir Percy",
        pet_type: :cat,
        breed: "British Shorthair",
        price: 500
      },
      {
        name: "King Bagdemagus",
        pet_type: :cat,
        breed: "British Shorthair",
        price: 500
      },
      {
        name: "Sir Lancelot",
        pet_type: :dog,
        breed: "Pomsky",
        price: 1000,
      },
      {
        name: "Arthur",
        pet_type: :dog,
        breed: "Husky",
        price: 900,
      },
      {
        name: "Tristan",
        pet_type: :dog,
        breed: "Basset Hound",
        price: 800,
      },
      {
        name: "Merlin",
        pet_type: :cat,
        breed: "Egyptian Mau",
        price: 1500,
      }
    ],
    admin: {
      total_cash: 1000,
      pets_sold: 0,
    },
    name: "Camelot of Pets"
  }

def find_pet_by_name (shop_hash, pet_name)
  for pet in shop_hash[:pets]
    if pet[:name] == pet_name
      return pet
    else return @fds
    end
  end
end

p find_pet_by_name(@pet_shop, "zvvzxc")
