puts 'Reseting DB'
Booking.destroy_all
puts 'All booking destroyed'
Manga.destroy_all
puts 'All manga destroyed'
User.destroy_all
puts 'All user destroyed'


User.create!(first_name: "Iqbal", last_name: "Bashir", email: "iqou@bashir.com", address: "98 boulevard de l'europe 91000 Evry", password: "123456", profile_picture:"https://imgs.search.brave.com/aGp5VZ3kNd3iX-i_J4H3qpmTdMkau56_lVYVNA4XNuc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2I2L2Fj/L2JlL2I2YWNiZTY5/NzhiMzYzYmRkZTYw/ZDg4Mjg0NTQwNzlh/LmpwZw")
User.create!(first_name: "Thierry", last_name: "Edmon", email: "thierry@edmon.com", address: "98 boulevard de l'europe 91000 Evry", password: "123456", profile_picture: "https://imgs.search.brave.com/eEN9VqMo8TUr8NBSmy558UHLwg8ZOXQEyQRwcl669mk/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMucHJpc21pYy5p/by91dG9waXgtbmV4/dC13ZWJzaXRlL016/azBOR0prT1dFdFky/WmxZUzAwTWpWakxU/a3dOVEF0T0dZNU9X/UXpOMkl6TkdWaV83/NjJjZWM1Ny0yZWFm/LTRlYWYtOWEwZC0y/ZTc4NjAxNDdlNDhf/cHJvZmlsaG9tbWU3/LmpwZz9peGxpYj1q/cy0zLjguMCZ3PTM4/NDAmYXV0bz1mb3Jt/YXQmZml0PW1heA")
User.create!(first_name: "Tai", last_name: "Tran", email: "tai@tran.com", address: "98 boulevard de l'europe 91000 Evry", password: "123456", profile_picture: "https://imgs.search.brave.com/AEePkKscw35i0s1DunrYa7SFcE5v-26yH67k4M1iU2E/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTE4/OTQ4OTIzMS9mci9w/aG90by92dWUtZGUt/cHJvZmlsLWRlLWpl/dW5lLWhvbW1lLWFm/cmljYWluLWJlYXUt/aGV1cmV1eC1zb3Vy/aWFudC5qcGc_cz02/MTJ4NjEyJnc9MCZr/PTIwJmM9UFBmQWM5/VjZHT1hUeWpLdDdZ/LW5hOGs2Y1JXeUNN/TGhGTFlWSmpzZzdr/OD0")
User.create!(first_name: "Harris", last_name: "Shahbaz", email: "harris@shahbaz.com", address: "98 boulevard de l'europe 91000 Evry", password: "123456", profile_picture: "https://imgs.search.brave.com/z-3_VMVbo5k1c4nYN-MGQSo7jUle-HYqNAS5ED1Soag/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9kMnFw/MHNpb3RsYTc0Ni5j/bG91ZGZyb250Lm5l/dC9pbWcvdXNlLWNh/c2VzL3Byb2ZpbGUt/cGljdHVyZS90ZW1w/bGF0ZV8wLmpwZw")

# def api(image)
#   url = URI("https://api.jikan.moe/v4/anime?q=#{image}")
#   user_serialized = URI.open(url).read
#   user = JSON.parse(user_serialized)
#   link = user["data"][0]["images"]["jpg"]["image_url"]
#   puts link
#   # Cloudinary::Uploader.upload(link)
# end

naruto = Manga.new(title: "Naruto", synopsis: "L'histoire commence pendant l'adolescence de Naruto, vers ses douze ans. Orphelin cancre et grand farceur, il fait toutes les bêtises possibles pour se faire remarquer. Son rêve : devenir le meilleur Hokage afin d'être reconnu par les habitants de son village. En effet, le démon renard à neuf queues scellé en lui a attisé la crainte et le mépris des autres villageois, qui, avec le temps, ne font plus de différence entre Kyûbi et Naruto.",
author: "Masashi Kishimoto", category: "Shonen", price_per_day: 5)
naruto.user = User.all.sample
naruto.photo.attach(io: URI.open("https://res.cloudinary.com/dhco7tc5l/image/upload/v1700685699/pfaqdapi1jbrr3ngryun.jpg"), filename: "naruto", content_type: "image/jpg")
naruto.save!
puts 'Naruto created'

dbz = Manga.new(title: "Dragon-Ball-Z", synopsis: "Dragon Ball Z se déroule cinq ans après le mariage de Son Goku et de Chichi, désormais parents de Son Gohan2. Raditz, un mystérieux guerrier extraterrestre, qui s'avère être le frère de Son Goku, arrive sur Terre pour retrouver ce dernier. Ce dernier apprend qu'il vient d'une planète de guerriers redoutables dont il ne reste plus que quatre survivants, et qu'il avait été envoyé sur la planète Terre dans le but de la conquérir (une chute alors qu'il était enfant lui aurait fait perdre la mémoire).",
author: "Akira Toriyama", category: "Shonen", price_per_day: 2)
dbz.user = User.all.sample
dbz.photo.attach(io: URI.open("https://res.cloudinary.com/dhco7tc5l/image/upload/v1700738062/fhjig9zl71jqa5xwfzjl.webp"), filename: "dbz", content_type: "image/webp")
dbz.save!
puts 'Dragon-Ball-Z created'

gto = Manga.new(title: "Great-Teacher-Onizuka", synopsis: "Eikichi Onizuka, 22 ans, ex-chef de gang de motards, conquérant de Shonan et puceau, a un rêve : devenir le meilleur professeur de lycée de tout le Japon. Ce n'est pas par passion pour l'enseignement, mais parce qu'il veut une femme adolescente et aimante quand il sera vieux et grisonnant. Pourtant, pour un délinquant pervers, cupide et paresseux, Onizuka est bien plus qu'il n'y paraît. Aussi, lorsqu'il décroche un poste de professeur principal de la classe 3-4 de la prestigieuse Holy Forest Academy - malgré une attaque en règle du vice-directeur - tous ses talents sont mis à l'épreuve, car cette classe est particulièrement infâme. En raison de leur mépris total pour tous les enseignants, les élèves de la classe utilisent la guerre psychologique pour briser mentalement tout nouveau professeur principal qu'ils reçoivent, les forçant à démissionner et à quitter l'école. Cependant, Onizuka n'est pas un professeur comme les autres et il est prêt à relever tous les défis qui se présentent à lui. Les brimades, le suicide et le harcèlement sexuel ne sont que quelques-uns des problèmes auxquels ses élèves sont confrontés quotidiennement. En s'attaquant aux racines de leurs problèmes, Onizuka les soutient avec ses méthodes imprévisibles et non conventionnelles, même s'il doit sauter d'un immeuble pour sauver un enfant suicidaire. Grâce à son charme excentrique et à sa nature amusante, la classe 3-4 apprend peu à peu à quel point l'école peut être agréable lorsqu'on est l'élève du grand professeur Onizuka.",
author: "Tōru Fujisawa", category: "Shonen", price_per_day: 2)
gto.user = User.all.sample
gto.photo.attach(io: URI.open("http://res.cloudinary.com/dhco7tc5l/image/upload/v1700740558/r6y4aix54oqy0nk2rg3l.webp"), filename: "gto", content_type: "image/webp")
gto.save!
puts 'Great-Teacher-Onizuka created'

# val = Manga.new(title: "Valkyrie Apocalypse", synopsis: "Tous les mille ans, l'ensemble des dieux, tous panthéons réunis, se réunissent au Valhalla, le paradis des âmes, lors d'une assemblée présidée par Zeus, le dieu suprême grec, afin de décider du sort des humains. Or, cette année-là, il est décidé à la quasi-unanimité de détruire l'humanité.",
# author: "Takeo Ono", category: "Seinen", price_per_day: 3)
# val.user = User.all.sample
# val.save!
# puts 'Valkyrie Apocalypse created'

# fruits = Manga.new(title: "Fruits Basket", synopsis: "Tohru Honda est une lycéenne de 16 ans qui vit seule sous une tente après la mort de sa mère. Sans le savoir, elle s'est installée sur la propriété de la famille Sôma. Lorsqu'elle explore les alentours, elle voit une maison et y entre. Elle y rencontre Yuki et Shiguré Sôma. Ayant appris qu'elle vivait sous une tente, ils lui proposent de loger chez eux en échange de tâches ménagères.",
# author: "Natsuki Takaya", category: "	Shōjo", price_per_day: 2)
# fruits.user = User.all.sample
# fruits.save!
# puts 'Fruits Basket created'

# snk = Manga.new(title: "L'Attaque des Titans", synopsis: "L'histoire tourne autour du personnage d'Eren Jäger dans un monde où l'humanité vit entourée d'immenses murs pour se protéger de créatures gigantesques, les Titans. Le récit raconte le combat mené par l'humanité pour reconquérir son territoire, en éclaircissant les mystères liés à l'apparition des Titans, du monde extérieur et des évènements précédant la construction des murs.",
# author: "Hajime Isayama", category: "Shōnen")
# snk.user = User.all.sample
# snk.save!
# puts "L'Attaque des Titans created"

# demon = Manga.new(title: "Demon Slayer", synopsis: "Dans un Japon de l'ère Taishō, Tanjirō Kamado est le premier enfant d'une famille de marchands de charbon dont le père est décédé : pour subvenir aux besoins de celle-ci, il vend du charbon de bois au village en contrebas de la montagne. Malgré les difficultés de la vie, ils réussissent à trouver un peu de bonheur dans leur quotidien.",
# author: "Koyoharu Gotōge", category: "Shōnen")
# demon.user = User.all.sample
# demon.save!
# puts "Demon Slayer created"

# stone = Manga.new(title: "Dr. Stone", synopsis: "Taiju, un lycéen comme les autres, raconte à son meilleur ami Senku, un génie des sciences, qu'il est sur le point de révéler ses sentiments à Yuzuriha, une fille dont il est secrètement amoureux depuis quelques années. Alors que le jeune homme s'apprête à lui déclarer sa flamme, une lumière brillante apparaît dans le ciel et transforme toute l'humanité en statues de pierres.",
# author: "Riichirō Inagaki", category: "Shōnen")
# stone.user = User.all.sample
# stone.save!
# puts "Dr. Stone created"

# luffy = Manga.new(title: "One Piece", synopsis: "L'histoire suit les aventures de Monkey D. Luffy, un garçon dont le corps a acquis les propriétés du caoutchouc après avoir mangé par inadvertance un fruit du démon. Avec son équipage de pirates, appelé l'équipage de Chapeau de paille, Luffy explore Grand Line à la recherche du trésor ultime connu sous le nom de « One Piece » afin de devenir le prochain roi des pirates.",
# author: "Eiichirō Oda", category: "Shōnen")
# luffy.user = User.all.sample
# luffy.save!
# puts "One Piece created"

# dan = Manga.new(title: "Dandadan", synopsis: "Deux lycéens sont en désaccord : d'un côté Momo Ayase croit aux fantômes mais pas aux extraterrestres, alors que son camarade Ken Takakura croît le contraire. Ils décident de parier pour déterminer qui a raison et partent visiter des lieux associés à l'occulte et au surnaturel chacun de leur côté. Ils vont vite découvrir qu'aucun des deux n'a tort et qu'aussi bien les extraterrestres que les fantômes existent.",
# author: "Yukinobu Tatsu", category: "Shōnen")
# dan.user = User.all.sample
# dan.save!
# puts "Dandadan created"


# kaiju = Manga.new(title: "Kaiju No 8", synopsis: "Kafka Hibino, homme de 32 ans, employé d'une entreprise de nettoyage de Kaijūs, monstres d'origine inconnue mais hostiles à l'être humain, se retrouve mêlé dans les combats opposant les Kaijūs à la Force de Défense contre les Kaijūs. Malgré ses efforts pour intégrer cette prestigieuse institution, Kafka Hibino, n'y parvient pas… Mais cela va changer lorsque, lui-même, devient un Kaiju1.",
# author: "Naoya Matsumoto", category: "Shōnen")
# kaiju.user = User.all.sample
# kaiju.save!
# puts "Kaiju No 8 created"

puts"Votre DB est prête !"
