# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
State.destroy_all
Park.destroy_all

california = State.create(name: "California", flower: "California poppy")
colorado = State.create(name: "Colorado", flower: "Rocky Mountain columbine")
oregon = State.create(name: "Oregon", flower: "Oregon grape")

ci = Park.create(name: "Channel Islands", location: "Ventura", state: california)
dv = Park.create(name: "Death Valley", location: "Death Valley", state: california)
jt = Park.create(name: "Joshua Tree", location: "Twentynine Palms", state: california)
lv = Park.create(name: "Lassen Volcanic", location: "Mineral", state: california)
ps = Park.create(name: "Pinnacles", location: "Paicines", state: california)
rw = Park.create(name: "Redwood", location: "Humboldt County", state: california)
sq = Park.create(name: "Sequoia", location: "Visalia", state: california)
yo = Park.create(name: "Yosemite", location: "Sierra Nevada", state: california)
rm = Park.create(name: "Rocky Mountain", location: "Estes Park", state: colorado)
bcg = Park.create(name: "Black Canyon Of The Gunnison", location: "Montrose", state: colorado)
gsd = Park.create(name: "Great Sand Dunes", location: "Mosca", state: colorado)
mv = Park.create(name: "Mesa Verde", location: "Cortez", state: colorado)
cl = Park.create(name: "Crater Lake", location: "Crater Lake", state: oregon)
