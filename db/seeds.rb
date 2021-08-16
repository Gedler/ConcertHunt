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
    location: "New York City",
    image: "https://miro.medium.com/fit/c/262/262/1*K5mbIYFdVruRXYhheJwpGQ.png"
},
{
    name: "Drake",
    location: "Toronto",
    image: "https://geo-media.beatsource.com/image_size/500x500/7/2/6/726ae59c-edb1-4287-a51d-4d73e64ef24e.jpg"
},
{
    name: "Lil Baby",
    location: "Atlanta",
    image: "https://i.scdn.co/image/98f92a703f2b66b30a66e561ef980583323fb9cc"
},
{
    name: "Gunna",
    location: "Atlanta",
    image: "https://i.pinimg.com/originals/30/1c/48/301c489938da4aed30dbddf658fa4f6b.jpg"
},
{
    name: "Lil Uzi Vert",
    location: 'Los Angeles',
    image: "https://fghsnews.com/wp-content/uploads/2020/12/Lil-Uzi-Vert-720x720_0.jpg"
},
{
    name: "Billie Eilish",
    location: "Los Angeles", 
    image: "https://i.pinimg.com/474x/65/2c/53/652c53e8ab37b8a3f0831335e2fa0fd5.jpg"
},
{
    name: "Logic",
    location: "Chicago",
    image: "https://i.scdn.co/image/efa0b73c2cdaf40b1767b4b1e1254b1cfc5b51db"
},
{
    name: "Nav",
    location: "Los Angeles",
    image: "https://djbooth.net/.image/t_share/MTU0NzEyOTQzNjQzMDc1NzMx/nav-profile-2018-sbc.jpg"
},
{
    name: "The Weekend",
    location: "New York City",
    image: "https://variety.com/wp-content/uploads/2020/04/the-weeknd-variety-cover-shoot-2-16x9-1.jpg?w=1000"
},
{
    name: "Dame D.O.L.L.A",
    location: "Chicago",
    image: "https://ssle.ulximg.com/image/1200x1200crop/cover/1591981595_986e0bf8657eaea98a8e271519fa4b22.jpg/ccaffb3eb4621599e94066c97509e804/1591981595_963ca28eb180909da4edcc6df870ef26.jpg"
},
{
    name: "Pop Smoke",
    location: "New York City",
    image: "https://pyxis.nymag.com/v1/imgs/41d/67a/1b504f35bba036424ae5cdb0dc7c8cd786-pop-smoke.rsquare.w700.jpg"
},
{
    name: "Bruno Mars"  ,
    location: "New York City" ,
    image: "https://i.scdn.co/image/ab6761610000e5ebdbbfc76f7c80126138dcd1a1"
},
{
    name: "Beyonce" ,
    location: "New York City" ,
    image: "https://www.biography.com/.image/t_share/MTU0MTU0MTc3NzkzMTA3MzU1/beyonce-attends-tidal-x-1015-on-october-15-2016-in-new-york-city-photo-by-theo-wargogetty-images-for-tidal-sqaure.jpg"
},
{
    name: "Rihanna", 
    location: "New York City",
    image: "https://pbs.twimg.com/profile_images/1133109643734130688/BwioAwkz_400x400.jpg"
}, 
{
    name: "Travis Scott",
    location: "New York City",
    image: "https://i.dailymail.co.uk/1s/2021/06/28/09/44762435-9732299-Laying_low_Travis_Scott_29_wears_snakeskin_trousers_and_baggy_to-m-3_1624868582936.jpg"
},
{
    name: "Ariana Grande",
    location: "Los Angeles",
    image: "https://i.pinimg.com/564x/fe/f8/b8/fef8b8c20cb574dee4de455842f24f68.jpg"
}
]

all_artists.each do |artist|
    Artist.create(artist)
end 



all_fans = [
    {
        user: "Ben",
        location: "New York City",
        image: "https://cdn.iconscout.com/icon/free/png-512/singer-2309844-1943754.png",
        pronouns: "Him, His, and He",
        password: "abc123"
    },
    {
        user: "Leya",
        pronouns: "Her, Hers, and She",
        location: "Miami",
        image: "https://media.istockphoto.com/vectors/trumpet-musical-instrument-icon-vector-id1129447683?k=6&m=1129447683&s=612x612&w=0&h=V26sMwClJKExF8PpW_DR8TkCTWGi-SPgtNGTl07HE1w=",
        password: "abc123"
    },
    {
        user: "Chris",
        location: "Miami",
        pronouns: "Him, His, and He",
        image:  "https://cdn.iconscout.com/icon/free/png-256/rapper-27-448491.png",
        password: "abc123"
    },
    {
        user: "Sarah",
        pronouns: "Her, Hers, and She",
        location: "Los Angeles",
        image: "https://media.istockphoto.com/vectors/trumpet-musical-instrument-icon-vector-id1129447683?k=6&m=1129447683&s=612x612&w=0&h=V26sMwClJKExF8PpW_DR8TkCTWGi-SPgtNGTl07HE1w=",
        password: "abc123"
    },
    {
        user: "Carl",
        location: "Chicago",
        pronouns: "Him, His, and He",
        image: "https://image.pngaaa.com/451/3550451-middle.png",
        password: "abc123"
    },
    {
        user: "Brianna",
        pronouns: "Her, Hers, and She",
        location: "New York City",
        image: "https://media.istockphoto.com/vectors/trumpet-musical-instrument-icon-vector-id1129447683?k=6&m=1129447683&s=612x612&w=0&h=V26sMwClJKExF8PpW_DR8TkCTWGi-SPgtNGTl07HE1w=",
        password: "abc123"
    },
    {
        user: "Zen",
        location: "Houston",
        pronouns: "Him, His, and He",
        image: "https://image.flaticon.com/icons/png/512/195/195128.png",
        password: "abc123"
    },
    {
        user: "Lucky",
        location: "Boston",
        pronouns: "Him, His, and He",
        image: "https://cdn.iconscout.com/icon/free/png-512/sing-1659470-1409992.png",
        password: "abc123"
    }
]

all_fans.each do |fan| 
    Fan.create(fan)
end 


all_concerts = [
    {
        venue: "Madison Square Garden",
        location: "New York City",
        image: "http://d3e1m60ptf1oym.cloudfront.net/f86e1571-3d46-4ff1-98fb-afc67c955264/CD_2016_1010_2081_wqxga.jpg",
        date: "9/20/21",
        price: 300,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "South Beach Arena",
        location: "Miami",
        image: "https://images.snapwi.re/f2f4/5ddde699284a376a88789c1a.w800.jpg",
        date: "7/14/21",
        price: 225,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "Hollywood Beach",
        location: "Los Angeles",
        image: "https://media.tacdn.com/media/attractions-splice-spp-674x446/07/71/39/f1.jpg",
        date: "10/30/21",
        price: 250,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "Radio City Arena",
        location: "New York City",
        image: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Radio_City_Music_Hall_Panorama.jpg",
        date: "8/24/21",
        price: "150",
        artist_id: Artist.all.sample.id
    },
    {
        venue: "State Farm Arena",
        location: "Atlanta",
        image: "https://cdn.nba.com/manage/2019/11/state-farm-arena-exterior-rainbow-lights.jpg",
        date: "7/4/21",
        price: "80",
        artist_id: Artist.all.sample.id
    },
    #
    {
        venue: "Madison Square Garden",
        location: "New York City",
        image: "http://d3e1m60ptf1oym.cloudfront.net/f86e1571-3d46-4ff1-98fb-afc67c955264/CD_2016_1010_2081_wqxga.jpg",
        date: "9/22/21",
        price: 200,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "South Beach Arena",
        location: "Miami",
        image: "https://images.snapwi.re/f2f4/5ddde699284a376a88789c1a.w800.jpg",
        date: "7/19/21",
        price: 215,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "Hollywood Beach",
        location: "Los Angeles",
        image: "https://media.tacdn.com/media/attractions-splice-spp-674x446/07/71/39/f1.jpg",
        date: "10/30/21",
        price: 230,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "Radio City Arena",
        location: "New York City",
        image: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Radio_City_Music_Hall_Panorama.jpg",
        date: "8/24/21",
        price: 160,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "State Farm Arena",
        location: "Atlanta",
        image: "https://cdn.nba.com/manage/2019/11/state-farm-arena-exterior-rainbow-lights.jpg",
        date: "7/4/21",
        price: 180,
        artist_id: Artist.all.sample.id
    },
    #
    {
        venue: "Madison Square Garden",
        location: "New York City",
        image: "http://d3e1m60ptf1oym.cloudfront.net/f86e1571-3d46-4ff1-98fb-afc67c955264/CD_2016_1010_2081_wqxga.jpg",
        date: "10/18/21",
        price: 300,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "South Beach Arena",
        location: "Miami",
        image: "https://images.snapwi.re/f2f4/5ddde699284a376a88789c1a.w800.jpg",
        date: "8/30/21",
        price: 205,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "Hollywood Beach",
        location: "Los Angeles",
        image: "https://media.tacdn.com/media/attractions-splice-spp-674x446/07/71/39/f1.jpg",
        date: "11/30/21",
        price: 270,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "Radio City Arena",
        location: "New York City",
        image: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Radio_City_Music_Hall_Panorama.jpg",
        date: "8/24/21",
        price: 165,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "State Farm Arena",
        location: "Atlanta",
        image: "https://cdn.nba.com/manage/2019/11/state-farm-arena-exterior-rainbow-lights.jpg",
        date: "7/4/21",
        price: 115,
        artist_id: Artist.all.sample.id
    },
    #
    {
        venue: "Madison Square Garden",
        location: "New York City",
        image: "http://d3e1m60ptf1oym.cloudfront.net/f86e1571-3d46-4ff1-98fb-afc67c955264/CD_2016_1010_2081_wqxga.jpg",
        date: "12/16/21",
        price: 320,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "South Beach Arena",
        location: "Miami",
        image: "https://images.snapwi.re/f2f4/5ddde699284a376a88789c1a.w800.jpg",
        date: "10/5/21",
        price: 235,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "Hollywood Beach",
        location: "Los Angeles",
        image: "https://media.tacdn.com/media/attractions-splice-spp-674x446/07/71/39/f1.jpg",
        date: "12/20/21",
        price: 270,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "Radio City Arena",
        location: "New York City",
        image: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Radio_City_Music_Hall_Panorama.jpg",
        date: "12/25/21",
        price: 350,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "State Farm Arena",
        location: "Atlanta",
        image: "https://cdn.nba.com/manage/2019/11/state-farm-arena-exterior-rainbow-lights.jpg",
        date: "9/27/21",
        price: 200,
        artist_id: Artist.all.sample.id
    },
    #
    {
        venue: "Madison Square Garden",
        location: "New York City",
        image: "http://d3e1m60ptf1oym.cloudfront.net/f86e1571-3d46-4ff1-98fb-afc67c955264/CD_2016_1010_2081_wqxga.jpg",
        date: "10/19/21",
        price: 280,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "South Beach Arena",
        location: "Miami",
        image: "https://images.snapwi.re/f2f4/5ddde699284a376a88789c1a.w800.jpg",
        date: "11/29/21",
        price: 245,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "Hollywood Beach",
        location: "Los Angeles",
        image: "https://media.tacdn.com/media/attractions-splice-spp-674x446/07/71/39/f1.jpg",
        date: "11/15/21",
        price: 250,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "Radio City Arena",
        location: "New York City",
        image: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Radio_City_Music_Hall_Panorama.jpg",
        date: "8/26/21",
        price: 175,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "State Farm Arena",
        location: "Atlanta",
        image: "https://cdn.nba.com/manage/2019/11/state-farm-arena-exterior-rainbow-lights.jpg",
        date: "10/10/21",
        price: 170,
        artist_id: Artist.all.sample.id
    },
    #
    {
        venue: "Madison Square Garden",
        location: "New York City",
        image: "http://d3e1m60ptf1oym.cloudfront.net/f86e1571-3d46-4ff1-98fb-afc67c955264/CD_2016_1010_2081_wqxga.jpg",
        date: "12/25/21",
        price: 325,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "South Beach Arena",
        location: "Miami",
        image: "https://images.snapwi.re/f2f4/5ddde699284a376a88789c1a.w800.jpg",
        date: "10/28/21",
        price: 205,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "Hollywood Beach",
        location: "Los Angeles",
        image: "https://media.tacdn.com/media/attractions-splice-spp-674x446/07/71/39/f1.jpg",
        date: "1/1/22",
        price: 300,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "Radio City Arena",
        location: "New York City",
        image: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Radio_City_Music_Hall_Panorama.jpg",
        date: "1/1/22",
        price: 350,
        artist_id: Artist.all.sample.id
    },
    {
        venue: "State Farm Arena",
        location: "Atlanta",
        image: "https://cdn.nba.com/manage/2019/11/state-farm-arena-exterior-rainbow-lights.jpg",
        date: "12/12/21",
        price: 225,
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