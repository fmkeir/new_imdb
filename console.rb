require('pry')
require_relative('models/star')

Star.delete_all()

star1 = Star.new({
  "first_name" => "Tom",
  "last_name" => "Cruise"
  })
star1.save()

binding.pry
nil
