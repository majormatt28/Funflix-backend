# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all
Movie.reset_pk_sequence
User.destroy_all
User.reset_pk_sequence
Review.destroy_all
Review.reset_pk_sequence


user1= User.create(username: "matt", password:"123", age:25)
user2= User.create(username: "yuri", password:"123", age:29)

genre_all=["Action", "Comedy", "Horror", "Romance", "Thriller", "Adventure"]
response = RestClient.get("https://api.themoviedb.org/3/movie/popular?api_key=#{ENV['MOVIE_DB_API_KEY']}&language=en-US&page=1")
movie_array = JSON.parse(response)["results"]


movie_array.each do |tmdb|
    Movie.create(api_id:tmdb["id"],title:tmdb["title"], description:tmdb["overview"], image:"https://image.tmdb.org/t/p/w500#{tmdb["poster_path"]}", release_date: tmdb["release_date"], genre: genre_all.sample )
end

review1= Review.create(user_id:User.all.sample.id, movie_id: Movie.all.sample.id, api_id: Movie.all.sample.api_id, rating: 8, comment:"Its one of the best movie I have ever watched")
review2= Review.create(user_id:User.all.sample.id, movie_id: Movie.all.sample.id, api_id: Movie.all.sample.api_id, rating: 6, comment:"Just OK")
review3= Review.create(user_id:User.all.sample.id, movie_id: Movie.all.sample.id, api_id: Movie.all.sample.api_id, rating: 5, comment:"Meehhh")


puts "seeded"