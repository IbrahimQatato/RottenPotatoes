# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# --------------------------------------------------------

# Seed the RottenPotatoes DB with some movies .
more_movies = [
    {:title => ' Aladdin ' , :rating => 'G ' ,
        :release_date => '25 - Nov -1992 '} ,
    {:title => ' When Harry Met Sally ' , :rating => 'R ' ,
        :release_date => '21 - Jul -1989 '} ,
    {:title => ' The Help ' , :rating => 'PG -13 ' ,
        :release_date => '10 - Aug -2011 '} ,
    {:title => ' Raiders of the Lost Ark ' , :rating => ' PG ' ,
        :release_date => '12 - Jun -1981 '},
    {:title => ' Inception ' , :rating => ' PG-13 ' ,
        :release_date => '12 - Jun -2010 '},
    {:title => ' Star Wars ' , :rating => ' PG ' ,
        :release_date => '12 - Jun -1981 '},
    {:title => ' Its Complicated ' , :rating => ' R ' ,
        :release_date => '12 - Jun -2000 '}
]
more_movies.each do |movie|
    Movie.create(movie)
end

more_moviegoers = [
    {:name => 'alice' } ,
    {:name => 'bob'} ,
    {:name => 'carol'}
]
more_moviegoers.each do |moviegoer|
    Moviegoer.create(moviegoer)
end