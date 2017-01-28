
artists = [
  {name: 'Serhad'},
  {name: 'Nîzamettin Ariç'},
  {name: 'Ciwan Haco'},
  {name: 'Mihemed Şêxo'},
  {name: 'Kamkaran'} ]
Artist.create(artists)

albums = [
  {title: 'Hewlêr', year: 1999},
  {title: 'Dayê', year: 1987},
  {title: 'Sî û Sê Gulê', year: 1991},
  {title: 'Ay Lê Gulê', year: 1980},
  {title: 'Nightingale With a Broken Wing', year: 2002} ]
Album.create(albums)

lyrics = [
  { title: 'Çi Sosin e',
    writer: 'Writer',
    composer: 'Composer',
    text: 'Çi sosin e\nHa ji min tune\nDiçe û tê li ber çavê min\nLi min biner! Halê min tune\nCarek berê xwe bide min',
    source: 'wikipedia.com',
    views: 10 },
  { title: 'Min Em',
    writer: 'Writer',
    composer: 'Composer',
    text: 'Min em wuşe le kê bênim ta gûnahê benawî kem\nMin natwanim kildanî to her dillê bêw le çawî kem',
    source: 'wikipedia.com',
    views: 20 },
  { title: 'Nazik û Nav Giran î',
    writer: 'Writer',
    composer: 'Composer',
    text: 'Nazik û nav giran î\nTu bi derdê dilan zanî\nTe agir berda vî canî\nHîn jî tu nayê yarê',
    source: 'wikipedia.com',
    views: 30 }]
Lyric.create(lyrics)
