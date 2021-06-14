# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all
Fan.destroy_all
Concert.destroy_all
AttendingConcert.destroy_all 
Follower.destroy_all


artist_names = ["Geddy Lux", "Jayified", "Finessed", "Jiggy Josh", "Dave Finesse", "Lil Baby", "Gunna", "Pop Smoke", "Lil Uzi Vert", "Playboy Carti", "Nav", "Chief Keef" "Logic", "Aboogie"]
locations = ["New York City", "Los Angeles", "Miami", "Atlanta", "Houston", "Dallas", "Seattle", "Charlotte", "Detroit", "Memphis", "Chicago", "Tampa Bay", "San Francisco"]


all_artists = [
{
    name: "Geddy Lux",
    location: "New York City"
},
{
    name: "Jayified",
    location: "New York City"
},
{
    name: "Jiggy Josh",
    location: "New York City"
},
{
    name: "Dave Finnesse",
    location: "New York City"
},
{
    name: "Finessed",
    location: "New York City"
},
{
    name: "Lil Baby",
    location: "Atlanta"
},
{
    name: "Gunna",
    location: "Atlanta"
},
{
    name: "Lil Uzi Vert",
    location: 'Los Angeles'
},
{
    name: "Playboy Carti",
    location: "Los Angeles"
},
{
    name: "Logic",
    location: "Chicago"
},
{
    name: "Nav",
    location: "Los Angeles"
},
{
    name: "Aboogie",
    location: "New York City"
},
{
    name: "Chief Keef",
    location: "Chicago"
},
{
    name: "Pop Smoke",
    location: "New York City"
}
]

all_artists.each do |artist|
    Artist.create(artist)
end 



all_fans = [
    {
        user: "User1",
        location: "New York City",
        password: "abc123"
    },
    {
        user: "User 2",
        location: "Miami",
        password: "abc123"
    },
    {
        user: "User 3",
        location: "Los Angeles",
        password: "abc123"
    },
    {
        user: "User 4",
        location: "Chicago",
        password: "abc123"
    },
    {
        user: "User 5",
        location: "Houston",
        password: "abc123"
    },
]

all_fans.each do |fan| 
    Fan.create(fan)
end 


all_concerts = [
    {
        venue: "Madison Square Garden",
        location: "New York City",
        date: "9/20/21",
        price: 300,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "South Beach Arena",
        location: "Miami",
        date: "7/14/21",
        price: 225,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "Hollywood Beach",
        location: "Los Angeles",
        date: "10/30/21",
        price: 250,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "Radio City Arena",
        location: "New York City",
        date: "8/24/21",
        price: "150",
        artist_id: Artist.all.sample.id
    },
    {
        venue: "State Farm Arena",
        location: "Atlanta",
        date: "7/4/21",
        price: "80",
        artist_id: Artist.all.sample.id
    },
]

all_concerts.each do |concert| 
    Concert.create(concert)
end 


10.times do 
    AttendingConcert.create(
        fan_id: Fan.all.sample.id,
        concert_id: Concert.all.sample.id
        )
end 

20.times do 
    Follower.create(
        fan_id: Fan.all.sample.id,
        artist_id: Artist.all.sample.id
    )
end 
















puts "Seeding Complete!"