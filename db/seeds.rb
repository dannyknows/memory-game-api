
data = [
    {
      name: "Danny",
      score: 4,
      
    },
    {
      name: "Georgia",
      score: 5,
      
    }
  ]

data.each do |score|
    Score.create(score)
end