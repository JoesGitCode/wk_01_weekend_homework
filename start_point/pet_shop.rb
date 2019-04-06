def pet_shop_name(shop_hash)
  shop_hash[:name]
end

def total_cash (shop_hash)
  shop_hash[:admin][:total_cash]
end

# def add_or_remove_cash (shop_hash, amount)
#   total_cash += amount
#   return total_cash
# end

def pets_sold (shop_hash)
  #why can i not make this a variable and plug it in later?
  pets_sold_total = shop_hash[:admin][:pets_sold]
end

def increase_pets_sold (shop_hash, num_of_pets_sold)
  shop_hash[:admin][:pets_sold] += num_of_pets_sold
end
