# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
salons = [
  {
  name: "apish",
  description: "To meet—and exceed—your expectations, we hold ourselves to the highest standards in every aspect of what we do, from our techniques to the way we care for each client. Our goal is to deliver hair designs and services that go beyond what you imagined.\n\nBy introducing the latest technologies and products, and even taking part in their development, we create a salon experience where you can discover something new every time you visit.\n\nGuided by apish’s philosophy of “beautiful and cute,” we strive to bring a little more happiness to everyone who walks through our doors.\n\nAddress: Tokyo, Chuo City, Ginza, 5 Chome−3−13 3F"
  },
  {
  name: "BROOKS",
  description: "Everyone’s age, lifestyle, and career are different, and even your mood can change from one moment to the next. At our salon, we take all of these elements into account to discover what you’re truly looking for and what beauty means to you, then create a hair design that reflects it.\n\nOur goal is to support you wholeheartedly so you can love who you are today even more than yesterday.\n\nWe sincerely look forward to welcoming you to our salon.\n\nAddress: Tokyo, Minato City, Minamiaoyama, 4 Chome−11−2 K.BLDG 2-A"
  },
  {
  name: "BULB",
  description: "Our goal is to be a salon in Daikanyama that consistently brings out our clients’ beauty while introducing fresh styles and the latest trends.\n\nThe name BULB comes from the bulbs that give life to beautiful flowers. We chose it to reflect our desire to be the place where that beauty begins—where the potential for something wonderful is nurtured.\n\nWith a team of experienced stylists and well-honed skills, we pride ourselves on carefully listening to each client and delivering results that truly meet their expectations.\n\nAddress: Tokyo, Shibuya, Daikanyamacho, 18−7 2F"
  },
  {
  name: "Rachel Beauty Salon",
  description: "Step into Rachel and you’ll feel as though you’ve been transported to the English countryside.\nTucked away among antiques, this hidden salon offers a calm retreat where you can escape the rush of the city and truly unwind.\n\nRather than taking an assembly-line approach, we focus on personal, one-on-one consultations to create styles that let each client shine.\n\nEvery face, every head of hair, and every personality is unique.\nBy embracing that individuality, we discover the look that suits you best.\n\nAddress: Tokyo, Shibuya, Uehara, 1 Chome−3−5 1F"
  },
  {
  name: "THE GARDEN",
  description: "At GARDEN, our mission is to support every client in living their life with confidence and positivity.\n\nEach member of our team pursues their own dreams while continually refining both their technical skills and the quality of service they provide. Through the experience and passion they cultivate, they share not only beautiful designs but also genuine energy with every client. We believe this dedication is the truest expression of our sincerity as hairdressers.\n\nBy honing our craft each day and embracing constant improvement, we continue to grow step by step while holding onto our big ambitions—always ready to welcome every client who walks through our doors.\n\nAddress: Tokyo, Chuo City, Ginza, 7 Chome−9−15 11F"
  }
]

salons.each do |salon|
  s = Salon.find_or_initialize_by(name: salon[:name])
  s.description = salon[:description]
  s.save!
end
