#  Returning pet shop name
def pet_shop_name(shop)
  return shop[:name]
end

# Returning total cash held
def total_cash(total)
  return total[:admin][:total_cash]
end

# Returning cash total after addition
def add_or_remove_cash(update, cash)
  update[:admin][:total_cash] += cash
  return cash
end

# Returning cash total after subtraction (note: minus values must be added rather than subtracted)
def add_or_remove_cash(update, cash)
  update[:admin][:total_cash] += cash
  return cash
end

# Returning number of total pets sold currently
def pets_sold(total_pets_sold)
  return total_pets_sold[:admin][:pets_sold]
end

# Increasing total value of pets sold

# def increase_pets_sold(increase, total)
#   total = 2
#   increase[:admin][:pets_sold] = total
#   return total
# end

def increase_pets_sold(increase, total)
  return increase[:admin][:pets_sold] += total
end

# Counting current stock (animals from dataset)
def stock_count(stock_count_array)
  stock_count_array[:pets].count
end

# Returning all breeds found in array
def pets_by_breed(pet_shop, type)

  counter = []

  for pet in pet_shop[:pets]
    if pet[:breed] == type
      counter.push(pet)
    end
  end
  return counter
end

# Returning all breeds found in array with length of 9

# def pets_by_breed(pet_shop, type)
#   counter = []
#   for pet in pet_shop[:pets]
#     if pet[:breed].length == 9
#       counter.push(pet)
#     end
#   end
#   return counter
# end

def pets_by_breed(pet_shop, pet_type)
  pet_type_array = []
  for pet in pet_shop[:pets]
    if pet_type == pet[:breed]
      pet_type_array.push(pet)
    end
  end
  return pet_type_array
end

# Returning specfic pet by name

def find_pet_by_name(find_pet_array, name)
  for pet in find_pet_array[:pets]
    return pet if name == pet[:name]
  end
end

# Returning nil after searching for pet by name that doesn't exist in dataset

def find_pet_by_name(find_pet_array, name)
  for pet in find_pet_array[:pets]
    return pet if name == pet[:name]
  end
  return nil
end

# Removing pet by name

def remove_pet_by_name(shop, name)
  for pet in shop[:pets]
    return pet.delete(:name) if name == pet[:name]
  end
end

# Adding a new pet

def add_pet_to_stock(shop, new_pet)
  return shop[:pets].push(new_pet)
end


# Returning customer cash for position 0 in @customers array

def customer_cash(cust_cash)
  return cust_cash[:cash]
end

# Removing cash from customer's cust_cash

def remove_customer_cash(remove, cash)
  remove[:cash] -= cash
  return cash
end

# Returning customers pet count

def customer_pet_count(customer_array)
  customer_array[:pets].count
end

#  adding pet to customer

def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
end

# Checking if the customer can afford pet (They can)

# def customer_can_afford_pet(customer, pet)
#   if customer[:cash] >= pet[:price]
#   end
#   return true
# end

# Checking if the customer can afford pet (They can't)

# def customer_can_afford_pet(customer, pet)
#   if customer[:cash] <= pet[:price]
#   end
#   return false
# end

# Checking if the customer can afford pet (They have exact ammount)

def customer_can_afford_pet(customer, pet)
  if customer[:cash] == pet[:price]
  end
  return true
end

# Selling existing pet to the customer.

def sell_pet_to_customer(pet_shop, pet, customer)
  # the customer pet count increases by 1
  if pet != nil
      customer_can_afford_pet(customer, pet)
      add_pet_to_customer(customer, pet)
      increase_pets_sold(pet_shop, 1)
      remove_customer_cash(customer, pet[:price])
      add_or_remove_cash(pet_shop, pet[:price])
  end
end
