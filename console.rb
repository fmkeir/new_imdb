require('pry')
require_relative('models/star')
require_relative('models/movie')
require_relative('models/casting')

Casting.delete_all()
Star.delete_all()
Movie.delete_all()

star1 = Star.new({
  "first_name" => "Tom",
  "last_name" => "Cruise"
  })
star1.save()

star2 = Star.new({
  "first_name" => "Billy",
  "last_name" => "Connolly"
  })
star2.save()

movie1 = Movie.new({
  "title" => "The Last Samurai",
  "genre" => "War",
  "budget" => 140_000_000
  })
movie1.save()

movie2 = Movie.new({
  "title" => "Top Gun",
  "genre" => "Romance",
  "budget" => 15_000_000
  })
movie2.save()

casting1 = Casting.new({
  "star_id" => star1,
  "movie_id" => movie1,
  "fee" => 25_000_000
  })
casting1.save()

casting2 = Casting.new({
  "star_id" => star2,
  "movie_id" => movie1,
  "fee" => 1_000_000
  })
casting2.save()

casting3 = Casting.new({
  "star_id" => star1,
  "movie_id" => movie2,
  "fee" => 2_000_000
  })
casting3.save()

binding.pry
nil
