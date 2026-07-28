cars = [
    {"brand": "Maruti Suzuki", "model": "Swift", "price": 650000, "color": "Red"},
    {"brand": "Maruti Suzuki", "model": "Baleno", "price": 800000, "color": "Blue"},
    {"brand": "Hyundai", "model": "i20", "price": 900000, "color": "White"},
    {"brand": "Hyundai", "model": "Venue", "price": 1100000, "color": "Black"},
    {"brand": "Tata", "model": "Nexon", "price": 1200000, "color": "Grey"},
    {"brand": "Tata", "model": "Punch", "price": 700000, "color": "Orange"},
    {"brand": "Mahindra", "model": "XUV300", "price": 1300000, "color": "Silver"},
    {"brand": "Mahindra", "model": "Thar", "price": 1600000, "color": "Black"},
    {"brand": "Honda", "model": "Amaze", "price": 850000, "color": "White"},
    {"brand": "Honda", "model": "City", "price": 1400000, "color": "Red"},
    {"brand": "Toyota", "model": "Glanza", "price": 900000, "color": "Blue"},
    {"brand": "Toyota", "model": "Innova Crysta", "price": 2200000, "color": "Silver"},
    {"brand": "Kia", "model": "Seltos", "price": 1500000, "color": "Black"},
    {"brand": "Kia", "model": "Sonet", "price": 1100000, "color": "Grey"},
    {"brand": "Renault", "model": "Kwid", "price": 550000, "color": "Yellow"},
    {"brand": "Renault", "model": "Triber", "price": 800000, "color": "White"},
    {"brand": "Skoda", "model": "Slavia", "price": 1400000, "color": "Blue"},
    {"brand": "Volkswagen", "model": "Virtus", "price": 1500000, "color": "Red"},
    {"brand": "MG", "model": "Hector", "price": 1800000, "color": "White"},
    {"brand": "Nissan", "model": "Magnite", "price": 900000, "color": "Silver"}
]

print(len(cars))

# Print All Car Models -Display only the model names of all cars.

for car in cars:
    print(car["model"])

#Print All Car Details – Print all car dictionaries using a for loop.  


for car in cars:
      print(car)




#Print Cars Costing More Than ₹10 Lakhs 
#  Use filter() to display cars whose price is greater than 1000000. 

print(list(filter(lambda car: car["price"] > 1000000, cars)))


# Find All Black-Coloured Cars  Use filter() to display only black-coloured cars.  

print(list(filter(lambda car: car['color']=="Black", cars)))


#Display Only Car Brands  Use map() to print only the brand names. 

print(list(map(lambda car:car['brand'], cars)))


 #7 Increase Every Car Price by ₹50,000  Use map() to create a new list with updated prices. 

print(list(map(lambda car:car["price"]+ 500000,cars)))


#8 Print Cars Between ₹8 Lakhs and ₹15 Lakhs  Use filter() to display cars within the given price range.

print(list(filter(lambda car:car["price"]>=800000 and car ["price"]<=1500000 ,cars)))

#9  Display Only Red and White Cars  Use filter() to display cars whose colour is either Red or White.  
print(list(filter(lambda car:car["color"]=="white"and car ["color"]=="Red", cars)))


