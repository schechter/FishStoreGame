Species.delete_all
Aquarium.delete_all
Fish.delete_all

s1 = Species.create(price: 1, image: 'http://www.aquarienfisch.net/wp-content/uploads/2010/09/Guppy.jpg', name: 'Guppy', appetite: 2, cleanliness_level: 3)
s2 = Species.create(price: 1, image: 'http://2.bp.blogspot.com/_ckBlasgNSzg/SHKo412KgMI/AAAAAAAAGxQ/81oe3eovg8A/s400/rope+fish.jpg', name: 'Reedfish', appetite: 4, cleanliness_level: 4)
s3 = Species.create(price: 3, image: 'http://2.bp.blogspot.com/-cVT9gB7AFJ8/USdKpqUxHqI/AAAAAAAACgU/cKhRXKLt2PI/s1600/goldfish.jpg', name: 'Gold Fish', appetite: 4, cleanliness_level: 3)
s4 = Species.create(price: 4, image: 'http://www.dnr.sc.gov/fish/species/assets/longnosegar.jpg', name: 'Longnose gar', appetite: 5, cleanliness_level: 8)
s5 = Species.create(price: 6, image: 'http://i16.photobucket.com/albums/b29/almeza/Pterophyllum_altum1.jpg', name: 'Angel Fish', appetite: 6, cleanliness_level: 6)
s6 = Species.create(price: 6, image: 'http://images04.olx.in/ui/10/01/61/1292324332_126830061_1-Pictures-of--spotted-sailfin-pelco-sucker-fish-for-sale-1292324332.jpg', name: 'Sucker Fish', appetite: 10, cleanliness_level: 0)
s7 = Species.create(price: 7, image: 'http://2.bp.blogspot.com/-1DqemRZTQAM/UQ05pRkJoiI/AAAAAAAAmfM/x9er0mFbxCY/s250/Red%2BLionfish.jpg', name: 'Red Lion Fish', appetite: 10, cleanliness_level: 8)
s8 = Species.create(price: 9, image: 'http://www.reefs2go.com/media/img/reefs2go/W180-H180-Bffffff/fish/clown/true_percula.jpg', name: 'Clown Fish', appetite: 10, cleanliness_level: 7)
s9 = Species.create(price: 13, image: 'http://www.reefs2go.com/media/img/reefs2go/W120-H120-Btttttt/fish/wrasse/carp_flash_2.png', name: 'Carpenters Flasher Wrasse', appetite: 12, cleanliness_level: 8)
s10 = Species.create(price: 14, image: 'http://www.reefs2go.com/media/img/reefs2go/W120-H120-Btttttt/fish/wrasse/bluehead_2.png', name: 'Blue Headed Wrasse', appetite: 13, cleanliness_level: 10)
s11 = Species.create(price: 16, image: 'http://www.reefs2go.com/media/img/reefs2go/W120-H120-Btttttt/fish/wrasse/harlequin_tuskfish.png', name: 'Harlequin Tusk Fish', appetite: 14, cleanliness_level: 11)
s12 = Species.create(price: 18, image: 'http://www.reefs2go.com/media/img/reefs2go/W320-H320-B000000/fish/angels/imperator_juv_2.jpg', name: 'Emperor Angel Fish', appetite: 12, cleanliness_level: 817)
s13 = Species.create(price: 20, image: 'http://www.reefs2go.com/media/img/reefs2go/W320-H320-B000000/fish/angels/flameangel.jpg', name: 'Flame Angel', appetite: 10, cleanliness_level: 8)
s14 = Species.create(price: 22, image: 'http://www.reefs2go.com/media/img/reefs2go/W700-H525-B000000/fish/goby/yellowwman_2.jpg', name: 'Yellow Watchman Goby Fish', appetite: 16, cleanliness_level: 8)
s15 = Species.create(price: 22, image: 'http://www.reefs2go.com/media/img/reefs2go/W120-H120-Btttttt/Y/yellow_fin_fairy_wrasse.png', name: 'Yellow Fin Fairy Wrasse', appetite: 15, cleanliness_level: 8)
s16 = Species.create(price: 25, image: 'http://www.reefs2go.com/media/img/reefs2go/W120-H120-Btttttt/fish/wrasse/rhomboid.png', name: 'Rhomboid Fairy Wrasse', appetite: 17, cleanliness_level: 10)

a1 = Aquarium.create(fish_capacity: 3, price: 30)
a2 = Aquarium.create(fish_capacity: 5, price: 55)
a3 = Aquarium.create(fish_capacity: 8, price: 95)
a4 = Aquarium.create(fish_capacity: 15, price: 250)

f1 = Fish.create(name: Faker::Name.first_name)


