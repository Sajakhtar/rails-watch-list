# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "json"
require "rest-client"

puts "Cleaning database..."
List.destroy_all
Movie.destroy_all

puts 'Creating movies from LeWagon TMBD API...'
api_pages = [1, 2, 3, 4, 5]
image_base = "https://image.tmdb.org/t/p/w500"

api_pages.each do |page_number|
  response = RestClient.get "http://tmdb.lewagon.com/movie/top_rated?page=#{page_number}"
  results = JSON.parse(response)
  results_english = results['results'].select { |result| result['original_language'] == 'en' }

  results_english.each do |result|
    Movie.create!(
      title:      result["title"],
      overview:   result["overview"],
      poster_url: "#{image_base}#{result["poster_path"]}",
      rating:     result["vote_average"]
    )
  end
end
puts 'Finished creating posts!'
