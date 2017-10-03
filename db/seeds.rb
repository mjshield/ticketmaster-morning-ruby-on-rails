Album.delete_all()
Artist.delete_all()
Gig.delete_all()
Venue.delete_all()

a1 = Artist.create( {name: 'Oasis'} )
a2 = Artist.create( {name: 'Adele'} )

Album.create( {artist_id: a1.id, title: 'Roll With It'} )
Album.create( {artist_id: a2.id, title: 'Hello'} )

#same as above
Album.create( {artist: a2, title: 'Chasing Pavements' })

v1 = Venue.create( {name: 'Hammersmith Apollo', location: 'London'} )
v2 = Venue.create( {name: 'Playhouse', location: 'Edinburgh'} )

Gig.create( { price: 15, date: '2017-01-14', artist: a1, venue: v1})
Gig.create( { price: 20, date: '2018-02-15', artist: a2, venue: v2})
