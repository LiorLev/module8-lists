#module 8
# Exercise 1: Lists

# Create a vector of everything you ate for breakfast

my.breakfast <- c("cereal", "pancakes", "muffin")

# Create a vector of everything you ate for lunch

my.lunch <- c("chicken", "rice", "potatoes")

# Create a list "meals" that has contains your `breakfast` and `lunch`

meals <- list(breakfast = my.breakfast, lunch = my.lunch)
print(meals)

# Add a "dinner" element to your "meals" list that has what you plan to eat for dinner

meals$dinner <- c("bread", "cheese" , "cake")


# Use dollar notation to extract your `dinner` element from your list
# and save it in a vector called 'dinner'


dinner <- meals$dinner


# Use double-bracket notation to extract your `lunch` element from your list
# and save it in your list as the element at index 5 (no reason)

meals[[5]] <- meals[['lunch']]


# Use single-bracket notation to extract your breakfast and lunch from your list
# and save them to a list called `early.meals`

early.meals <- meals[1:2]



### Bonus ###
# Create a list that has the number of items you ate for each meal
# Hint: use the `lappy()` function

number.of.items <- lapply(meals, length)

print(number.of.items)

# Write a function that adds pizza to every meal

AddPizza <- function(list){
  add.pizza <- c(list, "pizza")
  return(add.pizza)
} 

# Add pizza to every meal!

pizza <- lapply(meals, AddPizza)
pizza


