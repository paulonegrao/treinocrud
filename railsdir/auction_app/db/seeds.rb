
20.times do
  a = Auction.new(title:            Faker::Company.bs,
                   details:         Faker::Company.catch_phrase,
                   end_on:          Time.now + 30.days,
                   reserve_price:   10 + rand(100),
  a.save
end
