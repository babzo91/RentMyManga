User.create!(first_name: "Iqbal", last_name: "Bashir", email: "iqou@tai.com", address: "98 boulevard de l'europe 91000 Evry", password: "123456")
User.create!(first_name: "Thierry", last_name: "Edmon", email: "thierry@edmon.com", address: "98 boulevard de l'europe 91000 Evry", password: "123456")
User.create!(first_name: "Tai", last_name: "Tran", email: "tai@tran.com", address: "98 boulevard de l'europe 91000 Evry", password: "123456")
User.create!(first_name: "Harris", last_name: "Shahbaz", email: "harris@shahbaz.com", address: "98 boulevard de l'europe 91000 Evry", password: "123456")


naruto = Manga.new(title: "Naruto", synopsis: "L'histoire commence pendant l'adolescence de Naruto, vers ses douze ans. Orphelin cancre et grand farceur, il fait toutes les bêtises possibles pour se faire remarquer. Son rêve : devenir le meilleur Hokage afin d'être reconnu par les habitants de son village. En effet, le démon renard à neuf queues scellé en lui a attisé la crainte et le mépris des autres villageois, qui, avec le temps, ne font plus de différence entre Kyûbi et Naruto.", author: "Masashi Kishimoto", category: "Shonen")
naruto.user = User.all.sample
naruto.save!
puts 'Naruto created'

dbz = Manga.new(title: "Dragon-Ball-Z", synopsis: "Dragon Ball Z se déroule cinq ans après le mariage de Son Goku et de Chichi, désormais parents de Son Gohan2. Raditz, un mystérieux guerrier extraterrestre, qui s'avère être le frère de Son Goku, arrive sur Terre pour retrouver ce dernier. Ce dernier apprend qu'il vient d'une planète de guerriers redoutables dont il ne reste plus que quatre survivants, et qu'il avait été envoyé sur la planète Terre dans le but de la conquérir (une chute alors qu'il était enfant lui aurait fait perdre la mémoire).",
author: "Akira Toriyama", category: "Shonen")
dbz.user = User.all.sample
dbz.save!
puts 'Dragon-Ball-Z created'

val = Manga.new(title: "Valkyrie Apocalypse", synopsis: "Tous les mille ans, l'ensemble des dieux, tous panthéons réunis, se réunissent au Valhalla, le paradis des âmes, lors d'une assemblée présidée par Zeus, le dieu suprême grec, afin de décider du sort des humains. Or, cette année-là, il est décidé à la quasi-unanimité de détruire l'humanité.",
author: "Takeo Ono", category: "Seinen")
val.user = User.all.sample
val.save!
puts 'Valkyrie Apocalypse created'

fruits = Manga.new(title: "Fruits Basket", synopsis: "Tohru Honda est une lycéenne de 16 ans qui vit seule sous une tente après la mort de sa mère. Sans le savoir, elle s'est installée sur la propriété de la famille Sôma. Lorsqu'elle explore les alentours, elle voit une maison et y entre. Elle y rencontre Yuki et Shiguré Sôma. Ayant appris qu'elle vivait sous une tente, ils lui proposent de loger chez eux en échange de tâches ménagères.",
author: "Natsuki Takaya", category: "	Shōjo")
fruits.user = User.all.sample
fruits.save!
puts 'Fruits Basket created'

snk = Manga.new(title: "L'Attaque des Titans", synopsis: "L'histoire tourne autour du personnage d'Eren Jäger dans un monde où l'humanité vit entourée d'immenses murs pour se protéger de créatures gigantesques, les Titans. Le récit raconte le combat mené par l'humanité pour reconquérir son territoire, en éclaircissant les mystères liés à l'apparition des Titans, du monde extérieur et des évènements précédant la construction des murs.",
author: "Hajime Isayama", category: "Shōnen")
snk.user = User.all.sample
snk.save!
puts "L'Attaque des Titans created"

demon = Manga.new(title: "Demon Slayer", synopsis: "Dans un Japon de l'ère Taishō, Tanjirō Kamado est le premier enfant d'une famille de marchands de charbon dont le père est décédé : pour subvenir aux besoins de celle-ci, il vend du charbon de bois au village en contrebas de la montagne. Malgré les difficultés de la vie, ils réussissent à trouver un peu de bonheur dans leur quotidien.",
author: "Koyoharu Gotōge", category: "Shōnen")
demon.user = User.all.sample
demon.save!
puts "Demon Slayer created"

stone = Manga.new(title: "Dr. Stone", synopsis: "Taiju, un lycéen comme les autres, raconte à son meilleur ami Senku, un génie des sciences, qu'il est sur le point de révéler ses sentiments à Yuzuriha, une fille dont il est secrètement amoureux depuis quelques années. Alors que le jeune homme s'apprête à lui déclarer sa flamme, une lumière brillante apparaît dans le ciel et transforme toute l'humanité en statues de pierres.",
author: "Riichirō Inagaki", category: "Shōnen")
stone.user = User.all.sample
stone.save!
puts "Dr. Stone created"

luffy = Manga.new(title: "One Piece", synopsis: "L'histoire suit les aventures de Monkey D. Luffy, un garçon dont le corps a acquis les propriétés du caoutchouc après avoir mangé par inadvertance un fruit du démon. Avec son équipage de pirates, appelé l'équipage de Chapeau de paille, Luffy explore Grand Line à la recherche du trésor ultime connu sous le nom de « One Piece » afin de devenir le prochain roi des pirates.",
author: "Eiichirō Oda", category: "Shōnen")
luffy.user = User.all.sample
luffy.save!
puts "One Piece created"

dan = Manga.new(title: "Dandadan", synopsis: "Deux lycéens sont en désaccord : d'un côté Momo Ayase croit aux fantômes mais pas aux extraterrestres, alors que son camarade Ken Takakura croît le contraire. Ils décident de parier pour déterminer qui a raison et partent visiter des lieux associés à l'occulte et au surnaturel chacun de leur côté. Ils vont vite découvrir qu'aucun des deux n'a tort et qu'aussi bien les extraterrestres que les fantômes existent.",
author: "Yukinobu Tatsu", category: "Shōnen")
dan.user = User.all.sample
dan.save!
puts "Dandadan created"


kaiju = Manga.new(title: "Kaiju No 8", synopsis: "Kafka Hibino, homme de 32 ans, employé d'une entreprise de nettoyage de Kaijūs, monstres d'origine inconnue mais hostiles à l'être humain, se retrouve mêlé dans les combats opposant les Kaijūs à la Force de Défense contre les Kaijūs. Malgré ses efforts pour intégrer cette prestigieuse institution, Kafka Hibino, n'y parvient pas… Mais cela va changer lorsque, lui-même, devient un Kaiju1.",
author: "Naoya Matsumoto", category: "Shōnen")
kaiju.user = User.all.sample
kaiju.save!
puts "Kaiju No 8 created"

puts"Votre DB est prête !"
