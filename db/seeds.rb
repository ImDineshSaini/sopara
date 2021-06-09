require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'tv_series.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')

csv.each do |row|
  tv_series = TvSeries.find_or_initialize_by(name: row['TV Series'].try(:strip))
  tv_series.no_of_seasons = row['No of seasons'].try(:strip)
  tv_series.release_on = row['Date of First Release'].try(:strip)
  tv_series.genre = Genre.find_or_create_by(name: row['Genre'].try(:strip))

  country = Country.find_or_create_by(name: row['Country'].try(:strip))
  tv_series.shoot_location = ShootLocation.find_or_create_by(name: row['Shoot location'], country: country)

  actor = Actor.find_or_create_by(name: row['Actor'].try(:strip))
  director = Director.find_or_create_by(name: row['Director'].try(:strip))

  tv_series.actors << actor
  tv_series.directors << director
  tv_series.save!
end

csv_text = File.read(Rails.root.join('lib', 'seeds', 'reviews.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')

csv.each do |row|
  tv_series = TvSeries.find_by(name: row['TV Series'].try(:strip))
  user = User.find_or_create_by(name: row['User'].try(:strip))
  Review.create(user: user, tv_series: tv_series, stars: row['Stars'], review: row['Review'])
end