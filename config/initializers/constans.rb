#------------------- Constans related to Clan model -------------------------------------------

CLAN_NAMES = %w( phoenix crab dragon 
                unicorn lion mantis 
                spider imperial minor 
                crane scorpion ronin )

CLAN_NAMES_PL = [ 'Feniks', 'Krab', 'Smok', 
                'Jednorożec', 'Lew', 'Modliszka', 
                'Pająk', 'Rody Cesarskie', 'Pomniejsze', 
                'Żuraw', 'Skorpion', 'Ronin' ]

CLAN_NAMES_ARRAY = CLAN_NAMES_PL.zip(CLAN_NAMES)

ATTRIBUTES = %w(  stamina willpower strength
                  perception agility intelligence
                  reflexes awareness void vary)

ATTRIBUTES_PL = [ 'Wytrzymałość', 'Siła Woli', 'Siła',
                  'Spostrzegawczość', 'Zręczność', 'Inteligencja',
                  'Refleks', 'Intuicja', 'Pustka', 'Różny']

SCHOOL_CLASSES = [ 'Bushi', 'Dworzanin', 'Ninja', 'Mnich', 'Artysta', 'Shugenja']

SKILL_SPHERES = %w(Godna Niegodna Kupiecka Bugei)

SPELL_ELEMENTS = %w(fire water air earth maho void)

TRAIT_KINDS = %w( Zaleta Wada)

TRAIT_SPHERES = %w( Fizyczna Umysłowa Duchowa Społeczna Materialna)