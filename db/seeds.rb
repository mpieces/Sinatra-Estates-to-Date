
20.times do
  User.create(username: Faker::Name.first_name, password_hash: Faker::Internet.password(3,5), email: Faker::Internet.email, company_id: rand(1..20))
end

5.times do
  Company.create(company_name: Faker::Company.name, owner_name: Faker::Name.name, company_url: Faker::Internet.url, phone_number: Faker::PhoneNumber.phone_number)
end

Estatesale.create(
    title: "The Jewel Box",
    address: "7424 Meadow Oaks Drive",
    city: "Dallas",
    state: "TX",
    zip_code: "75230",
    start_date: "Saturday, August 15",
    end_date: "Sunday, August 16",
    times: "10:00 am until 4:00 pm",
    description: "Such a lovely home filled with fine furnishings ... you’ll want to shop just because!  Of course Rusty worked his special magic to make the home a showplace with leather seating ... a burl cylinder desk that Fred and I would love to own ... and elegant lighting, mirrors, and rugs!  Ladies will be standing in line just to checkout the clothing ... designer handbags ... and racks covered in furs.  Regardless of our age, we all love designer pieces ... especially purses and shoes.  As soon as we have Rusty’s list we will add it to what we already fell in love with like the ...

Furniture ... a leather sofa, a wingback leather chair with matching ottoman, large rectangular coffee table, a pair of upholstered arm chairs, lamp tables, antique wash stands, a writing desk, sofa table, a burl cylinder desk (my favorite piece in the whole sale), a game table, a child’s 4-poster canopy bed, a breakfast table with 2 chairs, marble top lamp table, 4-poster bed, a French style table with ormolu, dining table with 8 chairs, a drop front desk, a beautiful glass display case, a buffet, a daybed, knee hole desk, ladies’ writing desk.

Collectibles ... Herend fishnet bunnies, puppets, hundreds of designer purses (St. John, Coach, Carlos Falchi), a wonderful selection of fur coats, dolls (some antique), Oriental kimonos, Stangle pottery (dinnerware), vintage patterns, vintage board games, framed Audubon bird prints, crystal (including stems), a collection bookends, coffee table books, sconces, silverplate.

Lighting (including crystal table lamps) ~ Mirrors ~ Several Rugs

A Full Kitchen",
    company_id: 6
    )

Estatesale.create(
    title: "Help Me Rhonda",
    address: "3101 Prestonwood Drive",
    city: "Plano",
    state: "TX",
    zip_code: "75093",
    start_date: "Friday, August 14",
    end_date: "Sunday, August 16",
    times: "10:00 am until 5:00 pm",
    description: "DRAMATIC ... every room is a standout with plush sofas accented with fringe ... a velvety red throne chair fit for The Queen ... banquet size glass top dining table that seats 8 guests comfortably ... and decorative accents that finish off each room to perfection!  We’re certain you’ll love the cupid statuary ... the decorative pillows ... crystal lamps ... and large urns and vases filled with faux flowers that add color and interest throughout the house.  There’s even doggie beds coordinated with different living areas.  If you’re wanting to create more excitement and interest in your home furnishings ... Help Me Ronda is the place to start your shopping weekend.  Begin with ...

Furniture ... banquet size glass top dining table with 8 upholstered chairs, a matching mirrored server, a breakfast table (elegantly styled) with upholstered chairs, 2 ornate fringed sofas in chocolate brown, glass top coffee table, bar stools, queen size bed with velvet padded headboard, marble top Bombay chest, king size 4-poster canopy bed (with elegant bedding), 2-drawer ornate night stand, round ornate night stand, a custom upholstered love seat with scalloped bottom edges, an accent chair with matching ottoman, ornately carved pillared armoire.

Collectibles ... costume jewelry, women’s fashion watches, sconces, fine ladies’ clothing and accessories, decoratives, large urns and vases filled with faux flowers, ornate candle holders, a large ornately carved standing cross.

Rugs ~ Ornate Mirrors (including a Venetian mirror) ~ Lighting ~ Framed Art

Miscellaneous ... aluminum ladder, Rubber storage cabinets (in the garage), a flat screen TV, electronics, doggie beds, luggage, GREAT PATIO FURNITURE (just as elegant as the furnishings inside the house), a chimenea with dragonfly pattern.

You won’t see another sale like this one ... this weekend or next!

",
    forms_of_payment: "Cash, Checks (with proper ID), Credit Cards",
    special_inst: "No Children",
    company_id: 7
    )

Estatesale.create(
    title: "C2 Estate Sales",
    address: "6547 Sondra Drive",
    city: "Plano",
    state: "TX",
    zip_code: "75214",
    start_date: "Friday, August 14",
    end_date: "Sunday, August 16",
    times: "10:00 am until 5:00 pm",
    description: "It’s the details that set a beautifully decorated home into a simply gorgeous one.  And that’s exactly what Charm has on Sondra Drive.  The subtle swirl pattern on the theater sofas elevates them to STAR status along with the single pedestal custom dining table by Jonathan Charles.  I can’t take my eyes off the stylish queen size bed with the royal looking headboard and elegant night stands.  Then there are equally detailed smalls like the multi-colored decorative pottery with etched patterns ... crystal stems ... and white cookware with gold trim.  Charms’ sales are always beautiful, but this one rises to a whole different level.  Begin your shopping experience with ...

Furniture ... several chairs from Robb & Stucky, custom made dining table and kidney shaped ladies’s writing desk by Jonathan Charles, an antique French ormolu accented writing desk, an antique French sideboard, custom made upholstered sofas (perfect addition for a theater room), a pair of antique English night stands, Victorian parlor tables, a leather sofa with matching chair and ottoman, glass coffee table and matching lamp tables, an elegantly designed queen bed with two matching night stands, an antique rotating bookcase, an animal print arm chair (matched with the ladies writing desk), painted TV armoire,

Collectibles ... costume jewelry, crystal stems, stained glass windows, decorative copper, a pair of lion statues, crystal lamps and Tiffany style floor lamp, decorative pottery, Blue Willow platter,

Rugs ~ Mirrors ~ Lighting ~ Decorator Art beautifully framed.

Full Kitchen including a Kitchen Aid Mixer.

Miscellaneous ... women’s clothing (small size), men’s designer ties by Ferragamo, shoes (size 9.5) by Allen Edmond, custom made men’s dress shirts, Christmas decorations, ladies’ clothing (including a wedding gown).",
    forms_of_payment: "Cash only",
    special_inst: "No Children",
    company_id: 8
    )

Estatesale.create(
    title: "A Family Estate Sale",
    address: "6625 Walnut Hill Lane",
    city: "Dallas",
    state: "TX",
    zip_code: "75230",
    start_date: "Friday, August 14",
    end_date: "Sunday, August 16",
    times: "10:00 am until 4:00 pm",
    description: "A fabulous sale requiring a unique approach from Anita and Sue.  First, it starts off as a “By Appointment Only” sale on Wednesday and Thursday.  The homeowner was a clothes horse who filled her home with designer clothing, shoes, purses, belts, furs, hats – everything necessary to put her best professional foot forward.  Her clothing ranges from size 2~6; shoe size 5 ½ ~ 6.  In order for shoppers to have the time (and space) to try things on, Anita and Sue will limit the number of people inside the home the first two days.  Then starting Friday, the sale will be open to the public ... no appointment necessary.  Ladies, you won’t be able to resist designer clothing from Escada, Armani, Vera Wang, BCBGMAXAZRIA, and others; designer purses by Fendi, Michael Kors, or purses made from exotic skins like alligator; shoes and boots (from ankle to knee) by Gucci, Prada, Bruno Magli, Jimmy Choo, Manolo Blahnik, Stuart Weitzman, and others; and gorgeous fur coats and fur trimmed sweaters.  Even the belts are designer ... Escada and Nancy Gonzalez.  It’s a boutique estate sale from start to finish.",
    forms_of_payment: "Cash & Checks (with 2 forms of ID)",
    special_inst: "Bring Help to Load; No Children",
    img_url: "http://www.24-7estatesales.com/plugins/content/jw_sigpro/sigpro.transparent.gif",
    company_id: 8
    )

5.times do
  Estatesale.create(
    title: Faker::Commerce.product_name,
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state_abbr,
    zip_code: Faker::Address.zip_code,
    start_date: Faker::Date.between(2.days.ago, Date.today),
    end_date: Faker::Date.forward(3),
    times: "10 am - 5 pm",
    description: Faker::Lorem.paragraph,
    company_id: rand(1..5)
    )
end