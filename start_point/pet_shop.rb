def pet_shop_name(shop_stock)
  shop_stock[:name]
end

def total_cash (shop_stock)
  shop_stock[:admin][:total_cash]
end
########## REFACTOR WITH VARIABLES! ##############
def add_or_remove_cash (shop_stock, amount)
   shop_stock[:admin][:total_cash] += amount
end

def pets_sold (shop_stock)
  #why can i not make this a variable and plug it in later?
  pets_sold_total = shop_stock[:admin][:pets_sold]
end

def increase_pets_sold (shop_stock, num_of_pets_sold)
  shop_stock[:admin][:pets_sold] += num_of_pets_sold
end

def stock_count (shop_stock)
  shop_stock[:pets].length
end

##### REFACTOR WITH BETTER NAMES! ###########
def pets_by_breed (shop_stock, breed)
  breed_count = []
  for pet in shop_stock[:pets]
    if pet[:breed] == breed
      breed_count << [:breed]
    end
  end
  return breed_count
end

def find_pet_by_name(shop_stock, pet_name)
 names = []
  for pet in shop_stock[:pets]
    names.push(pet) if pet[:name] == pet_name
  end
  return names[0]
end


def remove_pet_by_name(shop_stock, pet_to_delete)
  for pet in shop_stock[:pets]
     if pet[:name] == pet_to_delete
       shop_stock[:pets].delete(pet)
     end
  end
end

def add_pet_to_stock(shop_stock, new_pet)
  shop_stock[:pets].push(new_pet)
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
