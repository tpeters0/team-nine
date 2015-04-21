Profile.destroy_all
Story.destroy_all

profiles = [
  {
    name: "Smokey t. B.",
    age: 71,
    occupation: "Non-profit"
  },
  {
    name: "Michelle O.",
    age: 51,
    occupation: "Government"
  },
  {
    name: "Don D.",
    age: 45,
    occupation: "Marketing"
  },
  {
    name: "Frodo B.",
    age: 33,
    occupation: "Freelance"
  },
  {
    name: "Lucy R.",
    age: 37,
    occupation: "Mother"
  }
  ]

profiles.each do |profile_hash|
  Profile.create!(profile_hash)
end
