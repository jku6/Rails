# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Apartment.delete_all
Tenant.delete_all
Pet.delete_all

a1 = Apartment.create(:name => "A1", :rooms => 1, :rent => 2_000)
a2 = Apartment.create(:name => "A2", :rooms => 2, :rent => 3_000)
a3 = Apartment.create(:name => "A3", :rooms => 3, :rent => 5_000)



t1 = Tenant.create(:name => "Jon", :age => 25, :gender => "M")
t2 = Tenant.create(:name => "Gary", :age => 24, :gender => "M")
t3 = Tenant.create(:name => "Lisa", :age => 21, :gender => "F")
t4 = Tenant.create(:name => "Hoover", :age => 21, :gender => "M")
t5 = Tenant.create(:name => "Alex", :age => 28, :gender => "M")
t6 = Tenant.create(:name => "Tina", :age => 23, :gender => "F")


p1 = Pet.create(:name => "Legs", :age => 2, :species => "Turtle")
p2 = Pet.create(:name => "Freak", :age => 3, :species => "Snake")
p3 = Pet.create(:name => "Hot", :age => 4, :species => "Bear")
p4 = Pet.create(:name => "Cold", :age => 2, :species => "Pig")

a1.tenants << t1
a2.tenants = [t2, t3]
a3.tenants = [t4, t5, t6]

t1.pets << p1
t2.pets = [p2, p3, p4]