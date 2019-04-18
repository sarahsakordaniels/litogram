# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.destroy_all
Text.destroy_all
Artist.destroy_all
ArtWork.destroy_all
WordOfTheDay.destroy_all


sylvia = Author.create(name:"Sylvia Plath", bio:"She was a sad woman.", wiki:"https://en.wikipedia.org/wiki/Sylvia_Plath")
ursula = Author.create(name:"Ursula K. Le Guin", bio: "Ursula K. Le Guin October 21, 1929 – January 22, 2018) was an American author. She is best known for her works of speculative fiction, including science fiction works set in her Hainish Universe, and the Earthsea fantasy series.", wiki:"https://en.wikipedia.org/wiki/Ursula_K._Le_Guin")
zachary = Author.create(name:"Zachary Shomberg", bio:"Poet and translator Zachary Schomburg was born in Omaha, Nebraska, and raised in Iowa. He earned a BA from the College of the Ozarks and a PhD in creative writing-poetry from the University of Nebraska.", wiki:"https://www.poetryfoundation.org/poets/zachary-schomburg")
jorge = Author.create(name:"Jorge Luis Borges", bio:"Jorge Luis Borges 24 August 1899 – 14 June 1986 was an Argentine short-story writer, essayist, poet and translator, and a key figure in Spanish-language and universal literature.", wiki:"https://en.wikipedia.org/wiki/Jorge_Luis_Borges")
allen = Author.create(name:"Allen Ginsberg", bio:" American poet, philosopher and writer. He is considered to be one of the leading figures of both the Beat Generation during the 1950s and the counterculture that soon followed. He vigorously opposed militarism, economic materialism, and sexual repression and was known as embodying various aspects of this counterculture, such as his views on drugs, hostility to bureaucracy and openness to Eastern religions.", wiki:"https://en.wikipedia.org/wiki/Allen_Ginsberg")



sylvia_excerpt = Text.create(title:"Journal Excerpt", content: 'I can never read all the books I want; I can never be all the people I want and live all the lives I want. I can never train myself in all the skills I want. And why do I want? I want to live and feel all the shades, tones and variations of mental and physical experience possible in my life. And I am horribly limited.', author: sylvia)
how_it_seems = Text.create(title:"How It Seems To me", content: 'In the vast abyss before time, self
is not, and soul commingles
with mist, and rock, and light. In time,
soul brings the misty self to be.
Then slow time hardens self to stone
while ever lightening the soul,
till soul can loose its hold of self
and both are free and can return
to vastness and dissolve in light,
the long light after time.', author: ursula)
bats = Text.create(title:"Bats", content: 'i
When I used to see bats flying
in the California twilight
their intricate zigzag voices
went flickering with them
but they fell silent with the years
and without that tiny sonar static
to see them flicker
in and out of being
is a kind of blindness

ii
In the twilight in my dream
a little bat was flying
and awakening I wondered
if the bat that I remembered
flying in the twilight
of the dream of California
was in California or the dream.', author: ursula)

squirrel = Text.create(title:"Squirrel Problem", content: 'I watch a squirrel get run over by a car on my walk to work. She is lying dead in the street and still has an acorn in her little hands. I am amazed at how she is able to hold on to her acorn after being tumbled like that, after bouncing so high off the street. I walk over to the squirrel and see that her face is blown to bits and looks like uncased sausage spilling onto the asphalt. But that acorn is still so tight in her hands. I pick her up by her tail, take off my dress shirt and swaddle her in it, then put her in my bag. I know right where she is as I walk into work, everybody looking at me, everybody asking me about my shirtlessness. The world is as steady as if it were sewn into the skin of the universe.', author: zachary)
fire_cycle = Text.create(title:"The Fire Cycle", content: 'There are trees and they are on fire. There are hummingbirds and they are on fire. There are graves and they are on fire and the things coming out of the graves are on fire. The house you grew up in is on fire. There is a gigantic trebuchet on fire on the edge of a crater and the crater is on fire. There is a complex system of tunnels deep underneath the surface with only one entrance and one exit and the entire system is filled with fire. There is a wooden cage we’re trapped in, too large to see, and it is on fire. There are jaguars on fire. Wolves. Spiders. Wolf-spiders on fire. If there were people. If our fathers were alive. If we had a daughter. Fire to the edges. Fire in the river beds. Fire between the mattresses of the bed you were born in. Fire in your mother’s belly. There is a little boy wearing a fire shirt holding a baby lamb. There is a little girl in a fire skirt asking if she can ride the baby lamb like a horse. There is you on top of me with thighs of fire while a hot red fog hovers in your hair. There is me on top of you wearing a fire shirt and then pulling the fire shirt over my head and tossing it like a fireball through the fog at a new kind of dinosaur. There are meteorites disintegrating in the atmosphere just a few thousand feet above us and tiny fireballs are falling down around us, pooling around us, forming a kind of fire lake which then forms a kind of fire cloud. There is this feeling I get when I am with you. There is our future house burning like a star on the hill. There is our dark flickering shadow. There is my hand on fire in your hand on fire, my body on fire above your body on fire, our tongues made of ash. We are rocks on a distant and uninhabitable planet. We have our whole life ahead of us.
', author: zachary)

music_box = Text.create(title:"Music Box", content: 'Music of Japan. Parsimoniously
from the water clock the drops unfold
in lazy honey or ethereal gold
that over time reiterates a weave
eternal, fragile, enigmatic, bright.
I fear that every one will be the last.
They are a yesterday come from the past.
But from what shrine, from what mountain’s slight
garden, what vigils by an unknown sea,
and from what modest melancholy, from
what lost and rediscovered afternoon
do they arrive at their far future: me?
Who knows? No matter. When I hear it play
I am. I want to be. I bleed away.', author: jorge)

borges_y_yo = Text.create(title:"Borges and I", content: 'It’s to that other one, to Borges, that things happen. I walk through Buenos Aires and I pause, one could say mechanically, to gaze at a vestibule’s arch and its inner door; of Borges I receive news in the mail and I see his name in a list of professors or in some biographical dictionary. I like hourglasses, maps, eighteenth-century typefaces, etymologies, the taste of coffee and the prose of Stevenson; the other shares these preferences, but in a vain kind of way that turns them into an actor’s attributes. It would be an exaggeration to claim that our relationship is hostile; I live, I let myself live so that Borges may write his literature, and this literature justifies me. It poses no great difficulty for me to admit that he has put together some decent passages, yet these passages cannot save me, perhaps because whatsoever is good does not belong to anyone, not even to the other, but to language and tradition. In any case, I am destined to lose all that I am, definitively, and only fleeting moments of myself will be able to live on in the other. Little by little, I continue ceding to him everything, even though I am aware of his perverse tendency to falsify and magnify.

Spinoza understood that all things strive to persevere being; the stone wishes to be eternally a stone and the tiger a tiger. I will endure in Borges, not in myself (if it is that I am someone), but I recognise myself less in his books than in those of many others, or in the well-worn strum of a guitar. Years ago I tried to free myself from him by moving on from the mythologies of the slums to games with time and infinity, but those games are now Borges’ and I will have to conceive of other things. Thus my life is a running away and I lose everything and everything is turned over to oblivion, or to the other.

I do not know which of the two is writing this piece.', author: jorge)

  Text.create(title:"Lady Lazarus", content:"I have done it again.
  One year in every ten
  I manage it——

  A sort of walking miracle, my skin
  Bright as a Nazi lampshade,
  My right foot

  A paperweight,
  My face a featureless, fine
  Jew linen.

  Peel off the napkin
  O my enemy.
  Do I terrify?——

  The nose, the eye pits, the full set of teeth?
  The sour breath
  Will vanish in a day.

  Soon, soon the flesh
  The grave cave ate will be
  At home on me

  And I a smiling woman.
  I am only thirty.
  And like the cat I have nine times to die.

  This is Number Three.
  What a trash
  To annihilate each decade.

  What a million filaments.
  The peanut-crunching crowd
  Shoves in to see

  Them unwrap me hand and foot——
  The big strip tease.
  Gentlemen, ladies

  These are my hands
  My knees.
  I may be skin and bone,

  Nevertheless, I am the same, identical woman.
  The first time it happened I was ten.
  It was an accident.

  The second time I meant
  To last it out and not come back at all.
  I rocked shut

  As a seashell.
  They had to call and call
  And pick the worms off me like sticky pearls.

  Dying
  Is an art, like everything else.
  I do it exceptionally well.

  I do it so it feels like hell.
  I do it so it feels real.
  I guess you could say I've a call.

  It's easy enough to do it in a cell.
  It's easy enough to do it and stay put.
  It's the theatrical

  Comeback in broad day
  To the same place, the same face, the same brute
  Amused shout:

  'A miracle!'
  That knocks me out.
  There is a charge

  For the eyeing of my scars, there is a charge
  For the hearing of my heart——
  It really goes.

  And there is a charge, a very large charge
  For a word or a touch
  Or a bit of blood

  Or a piece of my hair or my clothes.
  So, so, Herr Doktor.
  So, Herr Enemy.

  I am your opus,
  I am your valuable,
  The pure gold baby

  That melts to a shriek.
  I turn and burn.
  Do not think I underestimate your great concern.

  Ash, ash—
  You poke and stir.
  Flesh, bone, there is nothing there——

  A cake of soap,
  A wedding ring,
  A gold filling.

  Herr God, Herr Lucifer
  Beware
  Beware.

  Out of the ash
  I rise with my red hair
  And I eat men like air.", author:sylvia)

  Text.create(title:"Edge", content:"The woman is perfected.
  Her dead

  Body wears the smile of accomplishment,
  The illusion of a Greek necessity

  Flows in the scrolls of her toga,
  Her bare

  Feet seem to be saying:
  We have come so far, it is over.

  Each dead child coiled, a white serpent,
  One at each little

  Pitcher of milk, now empty.
  She has folded

  Them back into her body as petals
  Of a rose close when the garden

  Stiffens and odors bleed
  From the sweet, deep throats of the night flower.

  The moon has nothing to be sad about,
  Staring from her hood of bone.

  She is used to this sort of thing.
  Her blacks crackle and drag.", author:sylvia)

  Text.create(title:"Crossing the Water", content:"Black lake, black boat, two black, cut-paper people.
  Where do the black trees go that drink here?
  Their shadows must cover Canada.

  A little light is filtering from the water flowers.
  Their leaves do not wish us to hurry:
  They are round and flat and full of dark advice.

  Cold worlds shake from the oar.
  The spirit of blackness is in us, it is in the fishes.
  A snag is lifting a valedictory, pale hand;

  Stars open among the lilies.
  Are you not blinded by such expressionless sirens?
  This is the silence of astounded souls.", author: sylvia)
  Text.create(title:"America", content:"America I've given you all and now I'm nothing.
  America two dollars and twentyseven cents January 17, 1956.
  I can't stand my own mind.
  America when will we end the human war?
  Go fuck yourself with your atom bomb.
  I don't feel good don't bother me.
  I won't write my poem till I'm in my right mind.
  America when will you be angelic?
  When will you take off your clothes?
  When will you look at yourself through the grave?
  When will you be worthy of your million Trotskyites?
  America why are your libraries full of tears?
  America when will you send your eggs to India?
  I'm sick of your insane demands.
  When can I go into the supermarket and buy what I need with my good looks?
  America after all it is you and I who are perfect not the next world.
  Your machinery is too much for me.
  You made me want to be a saint.
  There must be some other way to settle this argument.
  Burroughs is in Tangiers I don't think he'll come back it's sinister.
  Are you being sinister or is this some form of practical joke?
  I'm trying to come to the point.
  I refuse to give up my obsession.
  America stop pushing I know what I'm doing.
  America the plum blossoms are falling.
  I haven't read the newspapers for months, everyday somebody goes on trial for murder.
  America I feel sentimental about the Wobblies.
  America I used to be a communist when I was a kid I'm not sorry.
  I smoke marijuana every chance I get.
  I sit in my house for days on end and stare at the roses in the closet.
  When I go to Chinatown I get drunk and never get laid.
  My mind is made up there's going to be trouble.
  You should have seen me reading Marx.
  My psychoanalyst thinks I'm perfectly right.
  I won't say the Lord's Prayer.
  I have mystical visions and cosmic vibrations.
  America I still haven't told you what you did to Uncle Max after he came over from Russia.
  I'm addressing you.
  Are you going to let your emotional life be run by Time Magazine?
  I'm obsessed by Time Magazine.
  I read it every week.
  Its cover stares at me every time I slink past the corner candystore.
  I read it in the basement of the Berkeley Public Library.
  It's always telling me about responsibility. Businessmen are serious. Movie producers are serious. Everybody's serious but me.
  It occurs to me that I am America.
  I am talking to myself again.

  Asia is rising against me.
  I haven't got a chinaman's chance.
  I'd better consider my national resources.
  My national resources consist of two joints of marijuana millions of genitals an unpublishable private literature that jetplanes 1400 miles an hour and twentyfive-thousand mental institutions.
  I say nothing about my prisons nor the millions of underprivileged who live in my flowerpots under the light of five hundred suns.
  I have abolished the whorehouses of France, Tangiers is the next to go.
  My ambition is to be President despite the fact that I'm a Catholic.

  America how can I write a holy litany in your silly mood?
  I will continue like Henry Ford my strophes are as individual as his automobiles more so they're all different sexes.
  America I will sell you strophes $2500 apiece $500 down on your old strophe
  America free Tom Mooney
  America save the Spanish Loyalists
  America Sacco & Vanzetti must not die
  America I am the Scottsboro boys.
  America when I was seven momma took me to Communist Cell meetings they sold us garbanzos a handful per ticket a ticket costs a nickel and the speeches were free everybody was angelic and sentimental about the workers it was all so sincere you have no idea what a good thing the party was in 1835 Scott Nearing was a grand old man a real mensch Mother Bloor the Silk-strikers' Ewig-Weibliche made me cry I once saw the Yiddish orator Israel Amter plain. Everybody must have been a spy.
  America you don't really want to go to war.
  America its them bad Russians.
  Them Russians them Russians and them Chinamen. And them Russians.
  The Russia wants to eat us alive. The Russia's power mad. She wants to take our cars from out our garages.
  Her wants to grab Chicago. Her needs a Red Reader's Digest. Her wants our auto plants in Siberia. Him big bureaucracy running our fillingstations.
  That no good. Ugh. Him make Indians learn read. Him need big black niggers. Hah. Her make us all work sixteen hours a day. Help.
  America this is quite serious.
  America this is the impression I get from looking in the television set.
  America is this correct?
  I'd better get right down to the job.
  It's true I don't want to join the Army or turn lathes in precision parts factories, I'm nearsighted and psychopathic anyway.
  America I'm putting my queer shoulder to the wheel.", author:allen)

  Text.create(title:"Howl", content:"I

  I saw the best minds of my generation destroyed by
  madness, starving hysterical naked,
  dragging themselves through the negro streets at dawn
  looking for an angry fix,
  angelheaded hipsters burning for the ancient heavenly
  connection to the starry dynamo in the machin-
  ery of night,
  who poverty and tatters and hollow-eyed and high sat
  up smoking in the supernatural darkness of
  cold-water flats floating across the tops of cities
  contemplating jazz,
  who bared their brains to Heaven under the El and
  saw Mohammedan angels staggering on tene-
  ment roofs illuminated,
  who passed through universities with radiant cool eyes
  hallucinating Arkansas and Blake-light tragedy
  among the scholars of war,
  who were expelled from the academies for crazy &
  publishing obscene odes on the windows of the
  skull,
  who cowered in unshaven rooms in underwear, burn-
  ing their money in wastebaskets and listening
  to the Terror through the wall,
  who got busted in their pubic beards returning through
  Laredo with a belt of marijuana for New York,
  who ate fire in paint hotels or drank turpentine in
  Paradise Alley, death, or purgatoried their
  torsos night after night
  with dreams, with drugs, with waking nightmares, al-
  cohol and cock and endless balls,
  incomparable blind; streets of shuddering cloud and
  lightning in the mind leaping toward poles of
  Canada & Paterson, illuminating all the mo-
  tionless world of Time between,
  Peyote solidities of halls, backyard green tree cemetery
  dawns, wine drunkenness over the rooftops,
  storefront boroughs of teahead joyride neon
  blinking traffic light, sun and moon and tree
  vibrations in the roaring winter dusks of Brook-
  lyn, ashcan rantings and kind king light of mind,
  who chained themselves to subways for the endless
  ride from Battery to holy Bronx on benzedrine
  until the noise of wheels and children brought
  them down shuddering mouth-wracked and
  battered bleak of brain all drained of brilliance
  in the drear light of Zoo,
  who sank all night in submarine light of Bickford's
  floated out and sat through the stale beer after
  noon in desolate Fugazzi's, listening to the crack
  of doom on the hydrogen jukebox,
  who talked continuously seventy hours from park to
  pad to bar to Bellevue to museum to the Brook-
  lyn Bridge,
  lost battalion of platonic conversationalists jumping
  down the stoops off fire escapes off windowsills
  off Empire State out of the moon,
  yacketayakking screaming vomiting whispering facts
  and memories and anecdotes and eyeball kicks
  and shocks of hospitals and jails and wars,
  whole intellects disgorged in total recall for seven days
  and nights with brilliant eyes, meat for the
  Synagogue cast on the pavement,
  who vanished into nowhere Zen New Jersey leaving a
  trail of ambiguous picture postcards of Atlantic
  City Hall,
  suffering Eastern sweats and Tangerian bone-grind-
  ings and migraines of China under junk-with-
  drawal in Newark's bleak furnished room,
  who wandered around and around at midnight in the
  railroad yard wondering where to go, and went,
  leaving no broken hearts,
  who lit cigarettes in boxcars boxcars boxcars racketing
  through snow toward lonesome farms in grand-
  father night,
  who studied Plotinus Poe St. John of the Cross telep-
  athy and bop kabbalah because the cosmos in-
  stinctively vibrated at their feet in Kansas,
  who loned it through the streets of Idaho seeking vis-
  ionary indian angels who were visionary indian
  angels,
  who thought they were only mad when Baltimore
  gleamed in supernatural ecstasy,
  who jumped in limousines with the Chinaman of Okla-
  homa on the impulse of winter midnight street
  light smalltown rain,
  who lounged hungry and lonesome through Houston
  seeking jazz or sex or soup, and followed the
  brilliant Spaniard to converse about America
  and Eternity, a hopeless task, and so took ship
  to Africa,
  who disappeared into the volcanoes of Mexico leaving
  behind nothing but the shadow of dungarees
  and the lava and ash of poetry scattered in fire
  place Chicago,
  who reappeared on the West Coast investigating the
  F.B.I. in beards and shorts with big pacifist
  eyes sexy in their dark skin passing out incom-
  prehensible leaflets,
  who burned cigarette holes in their arms protesting
  the narcotic tobacco haze of Capitalism,
  who distributed Supercommunist pamphlets in Union
  Square weeping and undressing while the sirens
  of Los Alamos wailed them down, and wailed
  down Wall, and the Staten Island ferry also
  wailed,
  who broke down crying in white gymnasiums naked
  and trembling before the machinery of other
  skeletons,
  who bit detectives in the neck and shrieked with delight
  in policecars for committing no crime but their
  own wild cooking pederasty and intoxication,
  who howled on their knees in the subway and were
  dragged off the roof waving genitals and manu-
  scripts,
  who let themselves be fucked in the ass by saintly
  motorcyclists, and screamed with joy,
  who blew and were blown by those human seraphim,
  the sailors, caresses of Atlantic and Caribbean
  love,
  who balled in the morning in the evenings in rose
  gardens and the grass of public parks and
  cemeteries scattering their semen freely to
  whomever come who may,
  who hiccuped endlessly trying to giggle but wound up
  with a sob behind a partition in a Turkish Bath
  when the blond & naked angel came to pierce
  them with a sword,
  who lost their loveboys to the three old shrews of fate
  the one eyed shrew of the heterosexual dollar
  the one eyed shrew that winks out of the womb
  and the one eyed shrew that does nothing but
  sit on her ass and snip the intellectual golden
  threads of the craftsman's loom,
  who copulated ecstatic and insatiate with a bottle of
  beer a sweetheart a package of cigarettes a can-
  dle and fell off the bed, and continued along
  the floor and down the hall and ended fainting
  on the wall with a vision of ultimate cunt and
  come eluding the last gyzym of consciousness,
  who sweetened the snatches of a million girls trembling
  in the sunset, and were red eyed in the morning
  but prepared to sweeten the snatch of the sun
  rise, flashing buttocks under barns and naked
  in the lake,
  who went out whoring through Colorado in myriad
  stolen night-cars, N.C., secret hero of these
  poems, cocksman and Adonis of Denver--joy
  to the memory of his innumerable lays of girls
  in empty lots & diner backyards, moviehouses'
  rickety rows, on mountaintops in caves or with
  gaunt waitresses in familiar roadside lonely pet-
  ticoat upliftings & especially secret gas-station
  solipsisms of johns, & hometown alleys too,
  who faded out in vast sordid movies, were shifted in
  dreams, woke on a sudden Manhattan, and
  picked themselves up out of basements hung
  over with heartless Tokay and horrors of Third
  Avenue iron dreams & stumbled to unemploy-
  ment offices,
  who walked all night with their shoes full of blood on
  the snowbank docks waiting for a door in the
  East River to open to a room full of steamheat
  and opium,
  who created great suicidal dramas on the apartment
  cliff-banks of the Hudson under the wartime
  blue floodlight of the moon & their heads shall
  be crowned with laurel in oblivion,
  who ate the lamb stew of the imagination or digested
  the crab at the muddy bottom of the rivers of
  Bowery,
  who wept at the romance of the streets with their
  pushcarts full of onions and bad music,
  who sat in boxes breathing in the darkness under the
  bridge, and rose up to build harpsichords in
  their lofts,
  who coughed on the sixth floor of Harlem crowned
  with flame under the tubercular sky surrounded
  by orange crates of theology,
  who scribbled all night rocking and rolling over lofty
  incantations which in the yellow morning were
  stanzas of gibberish,
  who cooked rotten animals lung heart feet tail borsht
  & tortillas dreaming of the pure vegetable
  kingdom,
  who plunged themselves under meat trucks looking for
  an egg,
  who threw their watches off the roof to cast their ballot
  for Eternity outside of Time, & alarm clocks
  fell on their heads every day for the next decade,
  who cut their wrists three times successively unsuccess-
  fully, gave up and were forced to open antique
  stores where they thought they were growing
  old and cried,
  who were burned alive in their innocent flannel suits
  on Madison Avenue amid blasts of leaden verse
  & the tanked-up clatter of the iron regiments
  of fashion & the nitroglycerine shrieks of the
  fairies of advertising & the mustard gas of sinis-
  ter intelligent editors, or were run down by the
  drunken taxicabs of Absolute Reality,
  who jumped off the Brooklyn Bridge this actually hap-
  pened and walked away unknown and forgotten
  into the ghostly daze of Chinatown soup alley
  ways & firetrucks, not even one free beer,
  who sang out of their windows in despair, fell out of
  the subway window, jumped in the filthy Pas-
  saic, leaped on negroes, cried all over the street,
  danced on broken wineglasses barefoot smashed
  phonograph records of nostalgic European
  1930s German jazz finished the whiskey and
  threw up groaning into the bloody toilet, moans
  in their ears and the blast of colossal steam
  whistles,
  who barreled down the highways of the past journeying
  to each other's hotrod-Golgotha jail-solitude
  watch or Birmingham jazz incarnation,
  who drove crosscountry seventytwo hours to find out
  if I had a vision or you had a vision or he had
  a vision to find out Eternity,
  who journeyed to Denver, who died in Denver, who
  came back to Denver & waited in vain, who
  watched over Denver & brooded & loned in
  Denver and finally went away to find out the
  Time, & now Denver is lonesome for her heroes,
  who fell on their knees in hopeless cathedrals praying
  for each other's salvation and light and breasts,
  until the soul illuminated its hair for a second,
  who crashed through their minds in jail waiting for
  impossible criminals with golden heads and the
  charm of reality in their hearts who sang sweet
  blues to Alcatraz,
  who retired to Mexico to cultivate a habit, or Rocky
  Mount to tender Buddha or Tangiers to boys
  or Southern Pacific to the black locomotive or
  Harvard to Narcissus to Woodlawn to the
  daisychain or grave,
  who demanded sanity trials accusing the radio of hyp
  notism & were left with their insanity & their
  hands & a hung jury,
  who threw potato salad at CCNY lecturers on Dadaism
  and subsequently presented themselves on the
  granite steps of the madhouse with shaven heads
  and harlequin speech of suicide, demanding in-
  stantaneous lobotomy,
  and who were given instead the concrete void of insulin
  Metrazol electricity hydrotherapy psycho-
  therapy occupational therapy pingpong &
  amnesia,
  who in humorless protest overturned only one symbolic
  pingpong table, resting briefly in catatonia,
  returning years later truly bald except for a wig of
  blood, and tears and fingers, to the visible mad
  man doom of the wards of the madtowns of the
  East,
  Pilgrim State's Rockland's and Greystone's foetid
  halls, bickering with the echoes of the soul, rock-
  ing and rolling in the midnight solitude-bench
  dolmen-realms of love, dream of life a night-
  mare, bodies turned to stone as heavy as the
  moon,
  with mother finally ******, and the last fantastic book
  flung out of the tenement window, and the last
  door closed at 4. A.M. and the last telephone
  slammed at the wall in reply and the last fur-
  nished room emptied down to the last piece of
  mental furniture, a yellow paper rose twisted
  on a wire hanger in the closet, and even that
  imaginary, nothing but a hopeful little bit of
  hallucination--
  ah, Carl, while you are not safe I am not safe, and
  now you're really in the total animal soup of
  time--
  and who therefore ran through the icy streets obsessed
  with a sudden flash of the alchemy of the use
  of the ellipse the catalog the meter & the vibrat-
  ing plane,
  who dreamt and made incarnate gaps in Time & Space
  through images juxtaposed, and trapped the
  archangel of the soul between 2 visual images
  and joined the elemental verbs and set the noun
  and dash of consciousness together jumping
  with sensation of Pater Omnipotens Aeterna
  Deus
  to recreate the syntax and measure of poor human
  prose and stand before you speechless and intel-
  ligent and shaking with shame, rejected yet con-
  fessing out the soul to conform to the rhythm
  of thought in his naked and endless head,
  the madman bum and angel beat in Time, unknown,
  yet putting down here what might be left to say
  in time come after death,
  and rose reincarnate in the ghostly clothes of jazz in
  the goldhorn shadow of the band and blew the
  suffering of America's naked mind for love into
  an eli eli lamma lamma sabacthani saxophone
  cry that shivered the cities down to the last radio
  with the absolute heart of the poem of life butchered
  out of their own bodies good to eat a thousand
  years.

  II

  What sphinx of cement and aluminum bashed open
  their skulls and ate up their brains and imagi-
  nation?
  Moloch! Solitude! Filth! Ugliness! Ashcans and unob
  tainable dollars! Children screaming under the
  stairways! Boys sobbing in armies! Old men
  weeping in the parks!
  Moloch! Moloch! Nightmare of Moloch! Moloch the
  loveless! Mental Moloch! Moloch the heavy
  judger of men!
  Moloch the incomprehensible prison! Moloch the
  crossbone soulless jailhouse and Congress of
  sorrows! Moloch whose buildings are judgment!
  Moloch the vast stone of war! Moloch the stun-
  ned governments!
  Moloch whose mind is pure machinery! Moloch whose
  blood is running money! Moloch whose fingers
  are ten armies! Moloch whose breast is a canni-
  bal dynamo! Moloch whose ear is a smoking
  tomb!
  Moloch whose eyes are a thousand blind windows!
  Moloch whose skyscrapers stand in the long
  streets like endless Jehovahs! Moloch whose fac-
  tories dream and croak in the fog! Moloch whose
  smokestacks and antennae crown the cities!
  Moloch whose love is endless oil and stone! Moloch
  whose soul is electricity and banks! Moloch
  whose poverty is the specter of genius! Moloch
  whose fate is a cloud of sexless hydrogen!
  Moloch whose name is the Mind!
  Moloch in whom I sit lonely! Moloch in whom I dream
  Angels! Crazy in Moloch! Cocksucker in
  Moloch! Lacklove and manless in Moloch!
  Moloch who entered my soul early! Moloch in whom
  I am a consciousness without a body! Moloch
  who frightened me out of my natural ecstasy!
  Moloch whom I abandon! Wake up in Moloch!
  Light streaming out of the sky!
  Moloch! Moloch! Robot apartments! invisible suburbs!
  skeleton treasuries! blind capitals! demonic
  industries! spectral nations! invincible mad
  houses! granite cocks! monstrous bombs!
  They broke their backs lifting Moloch to Heaven! Pave-
  ments, trees, radios, tons! lifting the city to
  Heaven which exists and is everywhere about
  us!
  Visions! omens! hallucinations! miracles! ecstasies!
  gone down the American river!
  Dreams! adorations! illuminations! religions! the whole
  boatload of sensitive bullshit!
  Breakthroughs! over the river! flips and crucifixions!
  gone down the flood! Highs! Epiphanies! De-
  spairs! Ten years' animal screams and suicides!
  Minds! New loves! Mad generation! down on
  the rocks of Time!
  Real holy laughter in the river! They saw it all! the
  wild eyes! the holy yells! They bade farewell!
  They jumped off the roof! to solitude! waving!
  carrying flowers! Down to the river! into the
  street!

  III

  Carl Solomon! I'm with you in Rockland
  where you're madder than I am
  I'm with you in Rockland
  where you must feel very strange
  I'm with you in Rockland
  where you imitate the shade of my mother
  I'm with you in Rockland
  where you've murdered your twelve secretaries
  I'm with you in Rockland
  where you laugh at this invisible humor
  I'm with you in Rockland
  where we are great writers on the same dreadful
  typewriter
  I'm with you in Rockland
  where your condition has become serious and
  is reported on the radio
  I'm with you in Rockland
  where the faculties of the skull no longer admit
  the worms of the senses
  I'm with you in Rockland
  where you drink the tea of the breasts of the
  spinsters of Utica
  I'm with you in Rockland
  where you pun on the bodies of your nurses the
  harpies of the Bronx
  I'm with you in Rockland
  where you scream in a straightjacket that you're
  losing the game of the actual pingpong of the
  abyss
  I'm with you in Rockland
  where you bang on the catatonic piano the soul
  is innocent and immortal it should never die
  ungodly in an armed madhouse
  I'm with you in Rockland
  where fifty more shocks will never return your
  soul to its body again from its pilgrimage to a
  cross in the void
  I'm with you in Rockland
  where you accuse your doctors of insanity and
  plot the Hebrew socialist revolution against the
  fascist national Golgotha
  I'm with you in Rockland
  where you will split the heavens of Long Island
  and resurrect your living human Jesus from the
  superhuman tomb
  I'm with you in Rockland
  where there are twenty-five-thousand mad com-
  rades all together singing the final stanzas of the Internationale
  I'm with you in Rockland
  where we hug and kiss the United States under
  our bedsheets the United States that coughs all
  night and won't let us sleep
  I'm with you in Rockland
  where we wake up electrified out of the coma
  by our own souls' airplanes roaring over the
  roof they've come to drop angelic bombs the
  hospital illuminates itself imaginary walls col-
  lapse O skinny legions run outside O starry
  spangled shock of mercy the eternal war is
  here O victory forget your underwear we're
  free
  I'm with you in Rockland
  in my dreams you walk dripping from a sea-
  journey on the highway across America in tears
  to the door of my cottage in the Western night", author: allen)






varo = Artist.create(name:"Remedios Varo", bio:"Remedios Varo Uranga (16 December 1908 – 8 October 1963) was a Spanish surrealist artist working in Spain, France, and Mexico.", wiki:"https://en.wikipedia.org/wiki/Remedios_Varo")
frida = Artist.create(name:"Frida Khalo", bio: "Frida Khalo was a Mexican artist who painted many portraits, self-portraits and works inspired by the nature and artifacts of Mexico. Inspired by the country's popular culture, she employed a naïve folk art style to explore questions of identity, postcolonialism, gender, class and race in Mexican society", wiki:"https://en.wikipedia.org/wiki/Frida_Kahlo")
hilma = Artist.create(name:"Hilma af Klint", bio:" Hilma af Klint(October 26, 1862 – October 21, 1944) was a Swedish artist and mystic whose paintings were among the first abstract art.", wiki:"https://en.wikipedia.org/wiki/Hilma_af_Klint")
leonora = Artist.create(name:"Leonora Carrington", bio:"Leonora Carrington OBE (6 April 1917 – 25 May 2011[1]) was a British-born Mexican artist, surrealist painter, and novelist. She lived most of her adult life in Mexico City and was one of the last surviving participants in the Surrealist movement of the 1930s. Carrington was also a founding member of the Women's Liberation Movement in Mexico during the 1970s.", wiki:"https://en.wikipedia.org/wiki/Leonora_Carrington")
william = Artist.create(name:"William Eggleston", bio:"William Eggleston (born July 27, 1939) is an American photographer. He is widely credited with increasing recognition for color photography as a legitimate artistic medium.", wiki:"https://en.wikipedia.org/wiki/William_Eggleston")
sandro = Artist.create(name:"Sandro Botticelli", bio:"Botticelli was an Italian painter of the Early Renaissance. He belonged to the Florentine School under the patronage of Lorenzo de' Medici, a movement that Giorgio Vasari would characterize less than a hundred years later in his Vita of Botticelli as a 'golden age'. Botticelli's posthumous reputation suffered until the late 19th century; since then, his work has been seen to represent the linear grace of Early Renaissance painting.", wiki:"https://en.wikipedia.org/wiki/Sandro_Botticelli")
ansel = Artist.create(name:"Ansel Adams", bio:"Ansel Easton Adams (February 20, 1902 – April 22, 1984) was an American landscape photographer and environmentalist known for his black-and-white images of the American West.", wiki:"https://en.wikipedia.org/wiki/Ansel_Adams")
louis = Artist.create(name:"Louis Daguerre", bio: "Louis Daguerre was a French artist and photographer, recognized for his invention of the daguerreotype process of photography. He became known as one of the fathers of photography. Though he is most famous for his contributions to photography, he was also an accomplished painter and a developer of the diorama theatre.", wiki:"https://en.wikipedia.org/wiki/Louis_Daguerre")



plant = ArtWork.create(title:"Plant", style:"Surrealism", description: "A plant in free space", year: 1960, image_link: "https://uploads3.wikiart.org/images/remedios-varo/plant-1960.jpg", wiki:"https://www.wikiart.org/en/remedios-varo/plant-1960/", artist: varo)
love_embrace = ArtWork.create(title:"The Love Embrace of the Universe, the Earth (Mexico), Myself, Diego and Señor Xólotl", style:"Naïve Art (Primitivism), Surrealism",
 description: "The Love Embrace holds many layers of entwining embraces.  Many art critics have contended that The Love Embrace portrays several of Frida's life struggles, including but not limited to: womanhood, motherhood and Diego Rivera.", year: 1949, image_link: "https://az334033.vo.msecnd.net/images-6/the-love-embrace-of-the-universe-the-earth-mexico-myself-diego-and-senor-xolotl-frida-kahlo-1949-8ea5a534.jpg", artist: varo)
mainstay = ArtWork.create(title:"They Tens Mainstay IV", style:"Abstract", description: "One in a series of paintings comissioned by a group of spirits with whom she was in regular contact. ", year: 1907, image_link: "https://uploads2.wikiart.org/images/hilma-af-klint/they-tens-mainstay-iv-1907.jpg", wiki:"https://www.wikiart.org/en/hilma-af-klint/they-tens-mainstay-iv-1907", artist: hilma)
green_tea = ArtWork.create(title:"Green Tea", style:"Surrealism", description: "Dramatically formal compositon and perspective for a symbolist painting.", year: 1942, image_link: "https://uploads3.wikiart.org/images/leonora-carrington/green-tea-1942.jpg", wiki:"https://www.wikiart.org/en/leonora-carrington/green-tea-1942", artist: leonora)
untitled_photo = ArtWork.create(title:"Unititled", style:"Color Photography Americana", description: "Peaches!", year: 1973, image_link: "https://static01.nyt.com/images/2008/11/07/arts/07eggl.xlarge1.jpg", wiki:"", artist: william)
mappa = ArtWork.create(title:"Mappa dell'Inferno", style:"Italian Renaissance", description:"The Mappa dell'Inferno (Map of Hell) by Botticelli, regularly called The Abyss of Hell or La voragine dell'Inferno, is one of the parchments that the famous Italian painter designed to illustrate an edition of The Divine Comedy by Dante Alighieri.", year: 1480, image_link: "https://www.florenceinferno.com/wp-content/uploads/2013/06/Botticelli-Map-of-the-Hell.jpg", wiki:"https://en.wikipedia.org/wiki/Divine_Comedy_Illustrated_by_Botticelli", artist:sandro)
canto = ArtWork.create(title:"Canto XVIII", style:"Italian Renaissance", description:"The 8th circle of Hell. Dante and Virgil are each shown 6 times, descending through the 10 chasms of the circle via a ridge. One of only 4 fully coloured pages.", year: 1480, image_link: "https://upload.wikimedia.org/wikipedia/commons/b/b5/Botticelli_Inferno_XVIII.png", wiki: "https://en.wikipedia.org/wiki/Divine_Comedy_Illustrated_by_Botticelli", artist:sandro)
halfdome = ArtWork.create(title:"Moon and Half Dome", style:"American Photography", description: "Ansel Adams made this image at 4:14 the afternoon of December 28, 1960 with a Hasselblad camera and 250mm Zeiss Sonnar lens, releasing the mirror before operating the shutter to minimize vibration. It was one of his last well known photographs. Arguably, this is the definitive photograph of Half Dome and among the most famous images of Yosemite National Park.", year: 1960, image_link: "https://shop.anseladams.com/v/vspfiles/photos/5010117-U-2T.jpg", wiki:"https://en.wikipedia.org/wiki/Ansel_Adams", artist: ansel)
goldengate = ArtWork.create(title:"Golden Gate from Baker Beach", style:"American Photography", description:"Long before the bridge was built, the teenage Adams often took the streetcar from his home near Baker Beach to the waterfront downtown, caught the ferry across the Golden Gate, and spent the day roaming the Marin hills seen to the left this photograph.", year: 1953, image_link: "http://anseladams.com/wp-content/uploads/2012/03/ggbb.jpeg", wiki:"https://en.wikipedia.org/wiki/Ansel_Adams", artist:ansel)
robert = ArtWork.create(title:"Robert Cornelius", style: "Photography", description:"This self-portrait of photographer Robert Cornelius is believed to be the first daguerreotype taken in North America.", year: 1839, image_link: "http://pontus.mentalfloss.com/sites/default/files/2665133.jpg", wiki:"https://en.wikipedia.org/wiki/Robert_Cornelius", artist:louis)





magniloquent = WordOfTheDay.create(word:"magniloquent", definition: "speaking in or characterized by a high-flown often bombastic style or manner",
origin:"Magnus means 'great' in Latin; loqui is a Latin verb meaning 'to speak.' Combine the two and you get magniloquus, the Latin predecessor of magniloquent. English-speakers started using magniloquent in the 1600s—even though we have had its synonym grandiloquent since the 1500s. Grandiloquent comes from Latin grandiloquus, which combines loqui and grandis, another word for 'great' in Latin. Today, these synonyms continue to exist side by side and to be used interchangeably, though grandiloquent is the more common of the two.", example:"The magniloquent sportscaster sometimes got so carried away with his monologues that he would forget to describe the action on the field.",
part_of_speech: "adjective", pronunciation: "mag-NIL-uh-kwunt")

intransigent = WordOfTheDay.create(word:"intransigent", definition: "scharacterized by refusal to compromise or to abandon an often extreme position or attitude",
origin:"English speakers borrowed intransigent in the 19th century from Spanish intransigente uncompromising, itself a combination of the familiar prefix in- not and transigente (willing to compromise). Transigente comes from the Spanish verb transigir (to compromise), which in turn comes from Latin transigere (to come to an agreement).", example:"He has remained intransigent in his opposition to the proposal.",
part_of_speech: "adjective", pronunciation: "in-ˈtran(t)-sə-jənt")

invective = WordOfTheDay.create(word:"invective", definition: "insulting or abusive language",
origin:"Invective originated in the 15th century as an adjective meaning of, relating to, or characterized by insult or abuse. In the early 16th century, it appeared in print as a noun meaning an example of abusive speech.", example:"He has remained intransigent in his opposition to the proposal.",
part_of_speech: "noun", pronunciation: "in-ˈvek-tiv")

inveigh = WordOfTheDay.create(word:"inveigh", definition: "to protest or complain bitterly or vehemently ",
origin:"You might complain or grumble about some wrong you see, or, for a stronger effect, you can inveigh against it. Inveigh comes from the Latin verb invehere, which joins the prefix in- with the verb vehere, meaning to carry.", example:" always inveighing against the high property taxes that they were forced to pay.",
part_of_speech: "verb", pronunciation: "in-ˈvā")

excoriate = WordOfTheDay.create(word:"excoriate", definition: "to wear off the skin of",
origin:"Excoriate, which first appeared in English in the 15th century, comes from excoriatus, the past participle of the Late Latin verb excoriare, meaning to strip off the hide.", example:"He was excoriated as a racist.",
part_of_speech: "verb", pronunciation: "ek-ˈskȯr-ē-ˌāt")

ebullience = WordOfTheDay.create(word:"ebullience", definition: "the quality of lively or enthusiastic expression of thoughts or feelings",
origin:"1749, from Latin ebullientem (nominative ebulliens) a boiling, a bursting forth, overflow", example: "She burst into the room with her usual ebullience, and immediately start talking to everyone.",
part_of_speech: "noun", pronunciation: " i-ˈbu̇l-yən(t)s")

adversary = WordOfTheDay.create(word:"adversary", definition:"one that contends with, opposes, or resists - an enemy or opponent", origin: "Middle English: from Old French adversarie, from Latin adversarius ‘opposed, opponent’, from adversus", example: "Despite the fact that they have been political adversaries for years, the two state senators worked together to rally bipartisan support for the bill.", part_of_speech: "noun", pronunciation:"[ad-vers-air-ee]")
facultative = WordOfTheDay.create(word:"facultative", definition:"left to one's option or choice; optional", origin: "The adjective facultative comes via the French adjective facultatif (masculine), facultative (feminine) - conveying or granting a right or power", example:"The last questions in the examination were facultative.", part_of_speech: "adjective", pronunciation:"[fak-uhl-tey-tiv]")
alacrity = WordOfTheDay.create(word:"alacrity", definition:"cheerful readiness, promptness, or willingness", origin:"Alacrity comes from Middle French alacrite from Latin alacritāt-, the stem of alacritās 'liveliness, zeal, enthusiasm.'", example:"We accepted the invitation with alacrity.", part_of_speech: "noun", pronunciation: "[uh-lak-ri-tee]")
flimflam = WordOfTheDay.create(word:"flimflam", definition:"to trick, deceive, swindle, or cheat", origin:"Flimflam may possibly be based on a Scandinavian word, e.g., Old Norse flim 'a lampoon, mockery.' Flimflam entered English in the 16th century as a noun meaning 'idle talk, nonsense; a cheap deception.'", example:"A fortuneteller flimflammed her out of her savings.", part_of_speech: "verb", pronunciation:"[flim-flam]")
polysemy = WordOfTheDay.create(word:"polysemy", definition:"a condition in which a single word, phrase, or concept has more than one meaning or connotation.", origin: "Derived from Greek polýsēmos, 'having many meanings.'", example:"This rich polysemy of language is the basis for William Empson's first type of poetic ambiguity", part_of_speech: "noun", pronunciation: "[pol-ee-see-mee, puh-lis-uh-mee]")
