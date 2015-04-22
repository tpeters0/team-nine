Profile.destroy_all
Story.destroy_all
Category.destroy_all

profiles = [
  {
    name: "Smokey t. Bear",
    age: 71,
    occupation: "Fire Protection Engineer"
  },
  {
    name: "Michelle O.",
    age: 51,
    occupation: "Government"
  },
  {
    name: "Snoopy",
    age: 21,
    occupation: "Pilot"
  },
  {
    name: "Frodo B.",
    age: 33,
    occupation: "Courier"
  },
  {
    name: "Lucy R.",
    age: 37,
    occupation: "Hijinks"
  }
]

profiles.each do |profile_hash|
  Profile.create!(profile_hash)
end

categories = [
  {
    name: "Volunteering"
  },
  {
    name: "Other"
  },
  {
    name: "Vocational Training"
  },
  {
    name: "Cultural Exposure"
  },
  {
    name: "Interpersonal Relationships"
  }
]

categories.each do |category_hash|
  Category.create!(category_hash)
end

stories = [
  {
    category: "Volunteering",
    heading: "Helping Nature",
    body: "Created PSAs to encourage park visitors to take personal responsibility for their actions",
    lesson: "Communication, PR",
    photo_url: "http://www.adlibbing.org/wp-content/uploads/2014/08/smokey-cub.jpg",
    author: "Smokey t. Bear"
  },
  {
    category: "Other",
    heading: "Planting a Garden",
    body: "Planted a garden with local kids to encourage healthy eating and encourage collaboration",
    lesson: "Developing community, health",
    photo_url:  "http://www4.pictures.zimbio.com/gi/First+Lady+Michelle+Obama+Holds+Food+Nutrition+IjfGZDCAEUtl.jpg",
    author: "Michelle O."
  },
  {
    category: "Vocational Training",
    heading: "Flight School",
    body: "Dealing with frustration and adversity while pursuing the Red Baron",
    lesson: "Determination, focus",
    photo_url:  "http://www.morningtoast.com/wordpress/wp-content/uploads//2010/06/snoopypilotbw8.jpg",
    author: "Snoopy"
  },
  {
    category: "Cultural Exposure",
    heading: "Traveled with a Diverse Group",
    body: "Took a journey through a variety of lands both with and encountering a variety of ethnicities",
    lesson: "Race relations, mediation, endurance",
    photo_url: "http://img3.wikia.nocookie.net/__cb20130619032635/lotr/images/c/c5/Frodo_Baggins_and_Sam_Travel.png",
    author: "Frodo B."
  },
  {
    category: "Interpersonal Relationships",
    heading: "Working with an idol",
    body: "Got the chance to do a miming exercise with Harpo Marx!",
    lesson: "How to be more intuitive",
    photo_url: "https://nypdecider.files.wordpress.com/2014/08/i-love-lucy-lucy-meets-harpo-marx.png?w=642&h=428&crop=1",
    author: "Lucy R."
  },
]

stories.each do |story_hash|
  Story.create!({
    category: Category.find_by(name: story_hash[:category]),
    heading: story_hash[:heading],
    body: story_hash[:body],
    lesson: story_hash[:lesson],
    photo_url: story_hash[:photo_url],
    profile: Profile.find_by(name: story_hash[:author])
  })
end
