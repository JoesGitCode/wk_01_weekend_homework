
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


def find_pet_by_name(shop_stock, pet_name)
 names = []
  for pet in shop_stock[:pets]
    names.push(pet) if pet[:name] == pet_name
  end

end


def sell_pet_to_customer(shop_stock, customer_id, pet_name)
  # pet_to_sell = find_pet_by_name()
  # p pet_to_sell[:price]
  # shop_stock[:admin][:pets_sold] ++
  # shop_stock[:admin][:total_cash]
  # customer_id[:cash] -= pet[:price]
  # pet[:price]
end

sell_pet_to_customer(@pet_shop, @customer[1], "Arthur")
