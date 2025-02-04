# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

new_sales_person = Salesperson.new

new_sales_person["first_name"] = "Allen"
new_sales_person["last_name"] = "Iverson"
new_sales_person["email"] = "allen.i@gmail.com"

puts new_sales_person.inspect

new_sales_person.save

puts "There are #{Salesperson.all.count} salespeople"

new_sales_person = Salesperson.new

new_sales_person["first_name"] = "Eric"
new_sales_person["last_name"] = "Snow"
new_sales_person["email"] = "eric.s@gmail.com"

puts new_sales_person.inspect

new_sales_person.save


# 3. write code to display how many salespeople rows are in the database

puts "There are #{Salesperson.all.count} salespeople"


# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.

allen = Salesperson.find_by({"first_name" => "Allen"})
puts allen.inspect
allen["email"] = "theanswer@hey.com"
allen.save

# CHALLENGE:
# 5. write code to display each salesperson's full name

salespeople = Salesperson.all

for person in salespeople
    first_name = person["first_name"]
    last_name = person["last_name"]
    name = "#{first_name} #{last_name}"
    puts name
end

# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
