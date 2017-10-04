# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cave = Artist.create({ name: 'Nick Cave', age: 60 })

spektor = Artist.create({ name: 'Regina Spektor', age: 37 })

fears = Artist.create({ name: 'Tears for Fears', age: 36 })

song1 = Song.create({ title: 'Red Right Hand', release: '1994', genre: 'Alternative Rock'})
song2 = Song.create({ title: 'O Children', release: '2004', genre: 'Alternative/Indie'})
song3 = Song.create({ title: 'Samson', release: '2002', genre: 'Alternative/Indie'})
song4 = Song.create({ title: 'Genius Next Door', release: '2009', genre: 'Alternative/Indie'})
song5 = Song.create({ title: 'Everybody Wants To Rule The World', release: '1985', genre: 'Pop'})
song6 = Song.create({ title: 'Head Over Heels', release: '1985', genre: 'Pop'})

cave.songs << song1
cave.songs << song2
cave.save

spektor.songs << song3
spektor.songs << song4
spektor.save

fears.songs << song5
fears.songs << song6
fears.save
