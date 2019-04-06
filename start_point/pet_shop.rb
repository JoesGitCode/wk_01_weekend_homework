def pet_shop_name(shop_hash)
  shop_hash[:name]
end

def total_cash (shop_hash)
  shop_hash[:admin][:total_cash]
end
########## REFACTOR WITH VARIABLES! ##############
def add_or_remove_cash (shop_hash, amount)
   shop_hash[:admin][:total_cash] += amount
end

def pets_sold (shop_hash)
  #why can i not make this a variable and plug it in later?
  pets_sold_total = shop_hash[:admin][:pets_sold]
end

def increase_pets_sold (shop_hash, num_of_pets_sold)
  shop_hash[:admin][:pets_sold] += num_of_pets_sold
end

def stock_count (shop_hash)
  shop_hash[:pets].length
end

##### REFACTOR WITH BETTER NAMES! ###########
def pets_by_breed (shop_hash, breed)
  breed_count = []
  for pet in shop_hash[:pets]
    if pet[:breed] == breed
      breed_count << [:breed]
    end
  end
  return breed_count
end

def find_pet_by_name(shop, pet_name)
 names = []
  for pet in shop[:pets]
    names.push(pet) if pet[:name] == pet_name
  end
  return names[0]
end
