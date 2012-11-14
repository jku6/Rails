# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.delete_all
Studio.delete_all
Actor.delete_all
Director.delete_all
# The only way to drop a join table is to do: drop table in the command line



s1 = Studio.create(:name => "Universal")
s2 = Studio.create(:name => "Warner Bros")
s3 = Studio.create(:name => "Lionsgate")




m1 = Movie.create(:name => "Nemo")
m2 = Movie.create(:name => "Titanic")
m3 = Movie.create(:name => "LOTR")
m4 = Movie.create(:name => "Day of the Dead")
m5 = Movie.create(:name => "Apocolypse Now")
m6 = Movie.create(:name => "The Shining")

a1 = Actor.create(:name => "Chris Rock")
a2 = Actor.create(:name => "Tom Cruise")
a3 = Actor.create(:name => "Jessica Alba")

d1 = Director.create(:name => "George Lucas")
d2 = Director.create(:name => "Steven Speilberg")
d3 = Director.create(:name => "Tim Cameron")


s1.movies = [m1, m2]
s2.movies = [m3, m4]
s3.movies = [m5, m6]

d1.movies = [m1, m2]
d2.movies = [m3, m4]
d3.movies = [m5, m6]

a1.movies = [m1, m2]
m1.actors = [a1, a2]



