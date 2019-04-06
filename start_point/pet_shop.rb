def pet_shop_name(pet_shop)
  pet_shop[:name]
end

def total_cash(pet_shop)
  pet_shop[:admin][:total_cash]
end
########## REFACTOR WITH VARIABLES! ##############
def add_or_remove_cash(pet_shop, amount)
   pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  #why can i not make this a variable and plug it in later?
  pets_sold_total = pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, num_of_pets_sold)
  pet_shop[:admin][:pets_sold] += num_of_pets_sold
end

def stock_count(pet_shop)
  pet_shop[:pets].length
end

##### REFACTOR WITH BETTER NAMES! ###########
def pets_by_breed(pet_shop, breed)
  breed_count = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      breed_count << [:breed]
    end
  end
  return breed_count
end

def find_pet_by_name(pet_shop, pet_name)
 names = []
  for pet in pet_shop[:pets]
    names.push(pet) if pet[:name] == pet_name
  end
  return names[0]
end


def remove_pet_by_name(pet_shop, pet_to_delete)
  for pet in pet_shop[:pets]
     if pet[:name] == pet_to_delete
       pet_shop[:pets].delete(pet)
     end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_cash(customer_id)
  customer_id[:cash]
end

def remove_customer_cash(customer_id, amount_to_remove)
  customer_id[:cash] -= amount_to_remove.to_i
end

def customer_pet_count(customer_id)
  customer_id[:pets].length
end

def add_pet_to_customer(customer_id, new_pet)
  customer_id[:pets].push(new_pet)
end

def customer_can_afford_pet(customer_id, new_pet)
  customer_id[:cash] > new_pet[:price]
end
# def test_sell_pet_to_customer__pet_found
#   customer = @customers[0]
#   pet = find_pet_by_name(@pet_shop,"Arthur")
#
#   sell_pet_to_customer(@pet_shop, pet, customer)
#
#   assert_equal(1, customer_pet_count(customer))
#   assert_equal(1, pets_sold(@pet_shop))
#   assert_equal(100, customer_cash(customer))
#   assert_equal(1900, total_cash(@pet_shop))
# end

def sell_pet_to_customer(pet_shop, customer_id, pet_name)
  names = []
   for pet in pet_shop[:pets]
     if pet[:name] == pet_name
       names.push(pet)
     else
       return names[0]
     end
   end


     pet_price = names[0][:price]
     pet_shop[:admin][:total_cash] += pet_price
     customer_id[:cash] -= pet_price
     customer_id[:pets].push
     pet_shop[:admin][:pets_sold] += 1

end
