# -------------------------------------- Data Base objects ---------------------------------------------
clans = [
  {name: 'phoenix',
  clan_name: 'Klan Feniksa',
  mon_img: '',
  desc: 'Słowo "shugenja" ma w Rokuganie wiele znaczeń: mag, kapłan, prorok, świątobliwy mąż. Bez wątpienia najpotężniejsi przedstawiciele tej profesji przynależą do Klanu Feniksa. Skrybą, który stał za Cesarzem i spisywał jego rozmowę z Shinsei był sam kami Shiba, założyciel tego Klanu, który przekazał swoim następcom nie tylko dokładną relację, ale i wszystkie słowne niuanse rozmowy. Żaden inny klan nie rozumie starej religii Rokuganu i "nowej drogi" lepiej, niż klan Feniksa i to jego członkowie połączyli obydwa systemy w oficjalne wyznanie Cesarstwa. Studia nad tak delikatną materią odbiły się jednak niekorzystnie na samurajach Feniksa, bowiem dni i godziny kontemplacji oraz studiów nad antycznymi tekstami, to stracone dni nauki sztuki wojny i godziny opuszczonych treningów szermierczych.'},

  {name: 'unicorn',
  clan_name: 'Klan Jednorożca',
  mon_img: '',
  desc: 'Klan Jednorożca, zwany również klanem Ki-Rin, opuścił Rokugan na blisko osiem stuleci. Wędrując i upewniając się że niema zewnętrznego zagrożenia dla Cesarstwa, które było by nie odkryte. Od swojego powrotu, samurajowie wielu klanów, uważają ten klan, za barbarzyński i obcy, głównie z powodu swojego umiłowania do obcych zwyczajów, które nie są akceptowane wśród rodzin z innych klanów. Jednakże klan zyskał szacunek innych klanów, głównie ze względu na swoją kawalerię, która znacznie przewyższa oddziały konne innych klanów. Złotem klanu Jednorożca, nie jest kruszec, lecz gajiński konie, które niejednokrotnie cenniejsze są od kruszców.'},

  {name: 'lion',
  clan_name: 'Klan Lwa',
  mon_img: '',
  desc: 'Mówi się że klan Lwa jest prawą ręką Cesarza, obrońcą jego ziem i własnej osoby. Klan Lwa jest w znacznej mierze oparty na tradycjach wojskowych, co w połączeniu z rozległymi ziemiami w sercu Rokuganu, daje największą armię świetnie wyszkolonych wojowników, gotowych do walki w każdej chwili. Myli się jednak ten, kto patrzy na klan Lwa tylko przez pryzmat jego armii, bowiem klan Lwa to przede wszystkim Honor i Bushido, kultywowany od pokoleń, a przez wieki przekuty w ostrze którego nie da się stępić. I choć wielu w Rokuganie, postrzega ich zamiłowanie do historii i tradycji, jako przejaw zacofania, nikt nie ośmielić się powiedzieć tego głośno, w obawie przed gniewem lwa.'},  

  {name: 'mantis',
  clan_name: 'Klan Modliszki',
  mon_img: '',
  desc: 'Istnienie klanu Modliszki jako Wielkiego Klanu, jest potwierdzeniem słów Shinsei "Fortuny sprzyjają śmiertelnikom". Założony przez syna Osano-Wo, który nie został uznany dziedzicem klanu Kraba, klan Modliszki pozostawał na uboczu i dopiero podczas Wojny Klanów odegrał kluczową rolę w obronie Cesarstwa przed siłami Krain Cienia. Nie ma w Rokuganie klanu o takiej mnogości ideologii i spojrzenia na świat jak w klanie Modliszki. Złożony z mniejszych klanów Modliszki, Lisa, Stonogi i Osy, klan pozostaje pod przewodnictwem klanu Modliszki, rozciąga się na ogromnym, wyjątkowo zróżnicowany obszarze. Jednak dzięki tej różnorodności klan Modliszki jest wyjątkowo elastyczny i gotowy do wypełnienia każdej roli powierzonej przez Cesarzową, a ogromne wpływy z handlu wzmacniają dodatkowo pozycję klanu.'},  

  {name: 'spider',
  clan_name: 'Klan Pająka',
  mon_img: '',
  desc: 'Choć klan Pająka jako Wielki Klan, funkcjonuje od niedawna, można śmiało założyć że jako siła, klan Pająka istniał od początku Rokuganu. Co łączy przedstawicieli klanu Pająka z przedstawicielami innych klanów, to podążanie ścieżką wyznaczoną wcześniej przez kami. Jednak w tym przypadku, ścieżka wyznaczona została przez Fu-Lenga upadłą kami, która przez większość swojego istnienia chciała zniszczenia Rokuganu. Podobnie jak Fu-Leng, klan Pająka jest bardzo ambitny i skryty, skory do szerzenia chaosu i wykorzystywania go na własną korzyść. Klan wykorzystuje rownież powszechnie zakazane praktyki, w dziedznie czarów Maho, przy pomocy rodziny Chuda, która nie ustaje w przekraczaniu kolejnych granic tej zakazanej sztuki. Skrytobójcze działani jak i wykorzystywanie istot nieludzkich do osiągnięcia własnej korzysci, również nie są obce wysoko postawionym członkom tego klanu.'},  

  {name: 'scorpion',
  clan_name: 'Klan Skorpiona',
  mon_img: '',
  desc: 'W wielu Rokugańskich sztukach i poematach, klan Skorpiona przedstawiany jest jako uosobienie wszelkiego zła i przeciwieństwo wszelkich cnót samurajskich. W wyniku tego stereotypu samurajowie klanu Skorpiona cieszą się złą sławą na wielu dworach. Filozofia klanu jest prosta, "cel uświęca środki". Dla samuraju z klanu Skorpiona niema w zasadzie czynu, zbyt haniebnego czy niemoralnego którego nie wykona on dla swojego klanu. Służba jest w zasadzie jedynym aspektem Bushido który w klanie Skorpiona traktowany jest z szacunkiem, i choć poświęcenie dla klanu nie jest niczym niezwykłym w Rokuganie, samurajowie z klanu Skorpiona nie cofną się przed niczym by osiągnąć swój cel, wykonają zadanie przed którym inny samurajowie mogli by się cofnąć ze względu na osobisty honor.'}, 

  {name: 'dragon',
  clan_name: 'Klan Smoka',
  mon_img: '',
  desc: 'Tajemniczy i enigmatyczny klan Smoka, od zarania Cesarstra kroczył własną ścieżką. Samurajowie z tego klanu często szokują swoimi zachowaniami innych samurajów i poza klanem Jednorożca, są najmniej przywiązani do ogólnych zwyczajów. Choć klan tworzy spójną całość, łączy w sobie wiele grup o bardzo różnym podejściu do życia. Zaczynając od rodziny Mirumoto, która podąża za wytycznymi Mirumoto i stylu walki dwoma mieczami zwanym Ninten, dworzan Kitsuki którzy ponad słowa innych przedkładają dowody rzeczowy, a kończąc na zakonie tatuowanych mnichów Ise-Zumi, ktorzy czerpią z nich mistyczną moc.'},  

  {name: 'crane',
  clan_name: 'Klan Żurawia',
  mon_img: '',
  desc: 'Jeśli w Rokuganie, jest ktoś z kim należy się liczyć, można śmiało założyć że ma przyjaciela, doradcę lub nawet partnera z klanu Żurawia. W ten sposób klan utrzymuje swoją niekwestionowaną dominację na polu społecznym i politycznym. Z powodu ról jakie pełni klan Żurawia wobec Cesarstwa, znaczna część samurajów to dworzanie i artyści, a nawet Ci którzy poświęcają się drodze bushi lub shugenja, obyci są ze sztuką i dworem. Ziemie kontrolowane przez klan Żurawia należą do najurodzajniejszych i najlepiej prosperujących ziem w Rokuganie, co czyni klan Żurawia jednym z najbogatszych Wielkich Klanów.'},   

  {name: 'crab',
  clan_name: 'Klan Kraba',
  mon_img: '',
  desc: 'Potężni samurajowie z klanu Kraba, są pierwszą linią obrony, jaką posiada Rokugan przeciw istotom z Krain Cienia. Lata służby i poświęcenia, sprawiły że samurajowie z klanu Kraba stali się chłodni i prości. Wieki walk z nieustępliwym przeciwnikiem sprawiły że samurajowie z klanu Kraba, znacznie przewyższają tężyzną innych samurajów. Jednak ciągły stan gotowości i wieki poświęceń, uczyniły z Krabów, ludzi prostych i pragmatycznych, żadko kiedy przeykładających wagę, do sztuki, czy piękna. Dlatego w "spokojniejszych" częściach Rokuganu postrzegani, częśto są z prostaków i barbarzyńców.'}, 

  {name: 'imperial',
  clan_name: 'Rody Cesarskie',
  mon_img: '',
  desc: 'Rodziny Cesarskie, poprzysięgły pełne oddanie dynastii Cesarskiej, a każdy czyn podyktowany jest dobrem Cesarstwa. Samurajowie Miya podróżują jako po Rokuganie jako "głos Cesarza", upewniając się że dekrety Cesarza są przestrzegane. Ród Seppun to tarcza Cesarza, pełnią rolę osobistych ochroniarzy, jak i tworzą Cesarskie Legiony, będące zawsze do dyspozycji cesarza. Z kolei ród Otomo reprezentuje osobę cesarza na dworach Rokufanu, dworzanie tego rodu są mistrzami intryg, oddanymi wyższemu dobru jakim jest dobro Cesarstwa. Dzięki dostępowi do najlepszych nauczycieli, nieograniczonych środków i przewagi statusu, rodziny cesarskie, są elitą pośród samurajów Rokuganu.'},

  {name: 'ronin',
  clan_name: 'Ronini',
  mon_img: '',
  desc: 'Będąc na granicy kasty samurajskiej, ronini są samurajami bez pana, co w oczach wielu członków Wielkich Klanów, czyni nich nic niewartymi. Jednak mocno myli się ten kto wrzuca ich wszystkich do jednego worka. Podstawowy podział roninów dzieli ich na roninów klanowych i prawdziwych roninów. Pierwsi to samurajowie którzy urodzili się w klanie, lecz na skutek zbiegów wydarzeń zostali wygnani z klanu, z zakazem używania nazwiska rodowego i mon klanu, a ich szkoła zamknęła się na nich. Prawdziwi ronini, są dziećmi ze związków w których choć jeden rodzic był samurajem i którzy nie przysięgli wierności żadnemu klanowi.'}]

families = [
  { name: 'Agasha',
    clan_name: 'phoenix',
    desc: 'Niegdyś ród ten stanowił część klanu Smoka, jednak podczas panowania Hitomi, uznał że klan Smoka porzucił swoje obowiązki względem Cesarstwa i przeszła do klanu Feniksa. Ród prowadzi jedną z najstarszych szkół shugenja, a samurajowie z tego rodu cechują się ciekawością oraz potrzebą ciągłego poszerzania swojej wiedzy na temat tego jak działa świat kami, pokonując jedne granice zaraz wyznaczają kolejne.',
    bonus_attr: 'perception',
    bonus_attr_pl: 'Spostrzegawczość',  
    mon_img: ''},

  { name: 'Asako', 
    clan_name: 'phoenix',
    desc: 'Ród Asako, swoją organizacją zbliżony jest do zakonu mnichów, prowadząc ascetyczne życie, jak inne zakony Shinsei. Z tego rodu wywodzą się dworzanie klanu Feniksa oraz tajemniczy mnisi Henshin. Zamyśleni i powściągliwi, nie posiadają własnych ambicji, poza tą by służyć klanowi.',
    bonus_attr: 'awareness',
    bonus_attr_pl: 'Intuicja',  
    mon_img: ''},

  { name: 'Isawa', 
    clan_name: 'phoenix',
    desc: 'Choć Czempionem klanu jest samuraj-ko z rodu Shiba, prawdziwą władzę w klanie Feniksa sprawuje ród Isawa. Największa rodzina shugenja w Rokuganie, posiadającą największą wiedzę w zakresie czarów, uczyniła z wielu członków tego rodu samurajów aroganckich i krótkowzrocznych, którzy walczą ze swymi ograniczeniami.',
    bonus_attr: 'willpower',
    bonus_attr_pl: 'Siła Woli',  
    mon_img: ''},

  { name: 'Shiba',
    clan_name: 'phoenix',
    desc: 'Ród Shiba stanowi zbrojne ramię klanu Feniksa. W czasach pokoju, jak i w sytuacjach konfliktowych preferujący rozwiązania pokojowe, w czasie wojny bez wahania i wątpliwości stają do walki w ramach obrony klanu.',
    bonus_attr: 'perception',
    bonus_attr_pl: 'Spostrzegawczość',  
    mon_img: ''},

  { name: 'Horiuchi',
    clan_name: 'unicorn',
    desc: 'Najmniejszy ród klanu Jednorożca, jest ród Horiuchi, będący odłamem od rodu Iuchi i w najlepszym okresie liczył około 50 członków. Ród wyspecjalizował się w magii ochronnej, samurajowie z tego rodu są czułymi indywidualistami, mieszających się w sprawy innych w czasie kryzysu.',
    bonus_attr: 'willpower',
    bonus_attr_pl: 'Siła Woli',  
    mon_img: ''},

  { name: 'Ide',
    clan_name: 'unicorn',
    desc: 'Rodem dbającym o twarz klanu Jednorożca, na dworach jest ród Ide. Idealne połączenie tradycji rokugańskich z własnymi zwyczajami, sprawia że łatwo im poruszać się nawet po najbardziej wytwornych dworach. Samurajowie z tego rodu są opanowani i otwarci na nowe znajomości, co sprawia że bardzo łatwo nawiązują przyjaźnie i sojusze.',
    bonus_attr: 'perception',
    bonus_attr_pl: 'Spostrzegawczość',  
    mon_img: ''},    

  { name: 'Iuchi',
    clan_name: 'unicorn',
    desc: 'Ród Iuchi, prowadzą pierwszą szkołę shugenja w klanie Jednorożca, będąca jedną z najbardziej militarnie nastawioną rodziną w Rokuganie. Samurajowie z tego rodu, choć prowadzą życie kapłanów, to w sytuacji zagrożenia nie boją się sięgnąć po kami, by dobitnie rozprawić się z przeciwnikiem.',
    bonus_attr: 'intelligence',
    bonus_attr_pl: 'Inteligencja',  
    mon_img: ''},    

  { name: 'Moto',
    clan_name: 'unicorn',
    desc: 'Ród ten jest uosobieniem wszystkich negatywnych stereotypów, jakie ma przeciętny rokugańczyk o klanie Jednorożca. Ród ten jest najbardziej przesycony gajińską krwią, co sprawia że samurajowie z rodu Moto są opryskliwi i żywiołowi, przez co rzadko kiedy potrafią wpasować się w towarzystwo innych samurajów.',
    bonus_attr: 'agility',
    bonus_attr_pl: 'Zręczność',  
    mon_img: ''},    

  { name: 'Shinjo',
    clan_name: 'unicorn',
    desc: 'Shinjo jest najstarszym rodem w klanie Jednorożca, który przez większość czasu przewodził klanowi, do momentu gdy reinkarnacja kami Shinjo, nie usunęła go od władzy z powodu korupcji wewnątrz rodziny. Nie mniej samurajowie z rodu Shinjo, są bardzo przedsiębiorczy i potrafią dopasować się do każdej sytuacji, podobnie jak porozumieć z każdym.',
    bonus_attr: 'reflexes',
    bonus_attr_pl: 'Refleks',  
    mon_img: ''},     

  { name: 'Utaku',
    clan_name: 'unicorn',
    desc: 'Matriarchalna rodzina Utaku jest najbardziej honorowym rodem w klanie Jednorożca. Tylko kobiety z tego rodu mogą przystąpić do szkoły Utaku, która szkoli najlepszych kawalerzystów w Rokuganie. Mężczyźni z rodu Utaku, zajmują się domostwem oraz w czasie wojny powoływani są jako piechota rodu.',
    bonus_attr: 'stamina',
    bonus_attr_pl: 'Wytrzymałość',  
    mon_img: ''},  

  { name: 'Toritaka',
    clan_name: 'crab',
    desc: 'Najmniejszym rodem w ramach klanu Kraba, jest ród Toritaka, będący potomkami klanu Sokoła, który to został przyłączony do klanu Kraba po tragedii jaka spotkała ich stolicę. Ród Toritaka pochodzi z ziem, które często są nawiedzane przez duchy z innych światów, badania oraz sposoby radzenia sobie z tego typu stworami są główną powinnością tego rodu.',
    bonus_attr: 'perception',
    bonus_attr_pl: 'Spostrzegawczość',  
    mon_img: ''},  

  { name: 'Hida',
    clan_name: 'crab',
    desc: 'Potomkowie Kami Hida należą do największych i najpotężniejszych samurajów w całym Cesarstwie. Brzemię obrońców Rokuganu, sprawiło że są nie tylko niezrównanymi wojownikami, ale i utalentowanymi taktykami. Samurajowie z rodu Hida, często mają za złe samurajom z innych klanów ich poczucie bezpieczeństwa, opłacone kosztem samurajów z klanu Kraba oraz drwiny z braku manier.',
    bonus_attr: 'strength',
    bonus_attr_pl: 'Siła',  
    mon_img: ''},  
      
  { name: 'Hiruma',
    clan_name: 'crab',
    desc: 'Cisi i zabójczy, Ród Hiruma odpowiada głównie za zwiad i ochronę dworzan. Samurajowie z rodu Hiruma są zwinni i sprytni, tak samo jak Hida jest potężny, co sprawia że wojownicy z obu rodów, często walczą razem wzajemnie się uzupełniając. Zwiad w Krainach Cienia jest wątpliwym obowiązkiem rodu Hiruma, jednak wykonywany jest z największym oddaniem i poświęceniem, choć wielu prowadzi do śmierci lub jeszcze gorszego końca.',
    bonus_attr: 'agility',
    bonus_attr_pl: 'Zręczność',  
    mon_img: ''},  

  { name: 'Kaiu',
    clan_name: 'crab',
    desc: 'Ród Kaiu słyną głównie ze swoich umiejętności inżynieryjskich i jest odpowiedzialny za najwspanialsze i najdłużej trwające budowle na ziemiach klanu Kraba. Główna powinnością rodu jest ciągły rozwój zarówno technika obronnych, jak i oblężniczych oraz stała modernizacja istniejących budowli na ziemiach Kraba oraz na wielkim Murze Cieśli. Choć bardziej oddani sztuce obrony i oblężeń, ród Kaiu nie odpuszcza szkolenia w zakresie walki i taktyki wojennej, by w każdej chwili służyć klanowi możliwie najlepszy sposób.',
    bonus_attr: 'intelligence',
    bonus_attr_pl: 'Inteligencja',  
    mon_img: ''},  

  { name: 'Kuni',
    clan_name: 'crab',
    desc: 'Ród Kuni jest najbardziej złowieszczym z rodów shugenja w całym Rokuganie. A ich wygląd jest tylko wstępem do ich prawdziwej natury. Dawno temu przywódcy rodu stwierdzili, że jedyną szansą na pokonanie Krain Cienia jest ich zrozumienie. Od tego czasu Kuni poznali sekrety, które przeciętnego rokugańczyka doprowadziły by do szaleństwa. Choć często posądzani o konszachty z Krainami Cienia, niema w Rokuganie, rodu chętnego przejąć ich obowiązki, tylko ród Isawa z klanu Feniksa, a dokładnie ich odłam inkwizycji, potrafi w pełni zrozumieć ich oddanie i poświęcenie dla Rokuganu.',
    bonus_attr: 'intelligence',
    bonus_attr_pl: 'Inteligencja',  
    mon_img: ''},  
      
  { name: 'Yasuki',
    clan_name: 'crab',
    desc: 'Do trzeciego wieku, klan Kraba nie posiadał własnej szkoły dworskiej. Wszystko zmieniło się gdy ród Yasuki postanowił oderwać się od klanu Żurawia i przyłączyć do klanu Kraba, co doprowadziło do pierwszej poważnej wojny domowej w ramach Cesarstwa. Ród Yasuki zajmuje się zarówno handlem jak i reprezentowanie interesów klanu Kraba na dworach, nie ustępują jednak w ciągłym poszukiwaniu możliwości, powiększenia własnych zysków i wpływów. Choć ich skłonność przywiązywania się do pieniędzy, wykracza poza ramy honorowe wielu klanów, członkowie tego rodu nie wiele sobie z tego robią.',
    bonus_attr: 'awareness',
    bonus_attr_pl: 'Intuicja',  
    mon_img: ''}, 

  { name: 'Akodo',
    clan_name: 'lion',
    desc: 'Rodem władającym klanem Lwa jest ród Akodo, z którego szeregów wywodzą się najlepsi stratedzy w Rokuganie. Powiada się że armia prowadzona przez kogoś z rodu Akodo nigdy nie zaznała porażki i choć jest to przesada, to nie bardzo daleka od prawdy. Samurajowie z rodu Akodo są spokojni i metodyczni, co często jest sprzeczne ze stereotypowym poglądem samurajów klanu Lwa jako porywczych.',
    bonus_attr: 'agility',
    bonus_attr_pl: 'Zręczność',  
    mon_img: ''},  

  { name: 'Ikoma',
    clan_name: 'lion',
    desc: 'Ród Ikoma pełni rolę głosu Lwa, prowadząc pierwszą szkołę dworską klanu. Ród zajmuje się również, dbaniem o historię klanu jak i Rokuganu, nie kończąc tylko na badaniu przeszłości, ale jednocześnie przekazując ją kolejnym pokoleniom, tak by każdy samuraj z klanu Lwa dokładnie znał swoją przeszłość. W czasach wojny, ród zapewnia doskonałych zwiadowców, którzy skłonni są poświęcić własny honor w imię potrzeb klanu.',
    bonus_attr: 'awareness',
    bonus_attr_pl: 'Intuicja',  
    mon_img: ''},  
      
  { name: 'Kitsu',
    clan_name: 'lion',
    desc: 'Cisi i powściągliwi członkowie rodu Kitsu, stanowią jedną z najbardziej tradycjonalistycznych i konserwatywnych rodzin w całym Rokuganie. Ród powstał z połączenia ludzi i starożytnych istot Kitsu, dzięki temu połączeniu, ród Kitsu niektórzy członkowie rodu, posiadają umiejętności nieosiągalne dla przeciętnego człowieka, jak możliwość przenikania między światem ludzkim a światem duchów.',
    bonus_attr: 'intelligence',
    bonus_attr_pl: 'Inteligencja',  
    mon_img: ''},  

  { name: 'Matsu',
    clan_name: 'lion',
    desc: 'Ród Matsu jest najliczniejszym z rodów w klanie Lwa, co jest powodem stereotypowego postrzegania tego klanu jako porywczego. Ród Matsu składa się praktycznie wyłącznie z wojowników o ogromnej odwadze i wyjątkowej porywczości. Ród Matsu jest matriarchalny, a mężczyźni wchodzący do rodu, muszą przyjąć nazwisko po żonie.',
    bonus_attr: 'strength',
    bonus_attr_pl: 'Siła',  
    mon_img: ''},  

  { name: 'Kitsune',
    clan_name: 'mantis',
    desc: 'Kitsune to ród który tworzył klan Lisa, który przystąpił do klanu Modliszki jako ostatni, prosząc ich o pomoc gdyż jako klan znajdował się na kraju zagłady. Lata spędzone w mistycznej puszczy Kitsune, sprawiły że w ród ten posiada wielu shugenja, a ród prowadzi własną szkołę shugenja, której specjalizacją jest komunikowanie się duchami przyrody. Samurajowi z tego rodu to w większości prości ludzie którzy zamiast uganiać się za chwałą i honorem, wolą poznawać naturę duchów lasu.',
    bonus_attr: 'awareness',
    bonus_attr_pl: 'Intuicja',  
    mon_img: ''},  
      
  { name: 'Moshi',
    clan_name: 'mantis',
    desc: 'Matriarchalny ród Moshi nim przyłączył się do klanu Modliszki stanowił osobny klan Stonogi. Ród od wieków czci słońce jako boginię, ród prowadzi szkołę shugenja, która specjalizuje się w czarach ognia i piorunów. Wiele statków z klanu Modliszki ma na pokładzie jakąś kapłankę Moshi.',
    bonus_attr: 'intelligence',
    bonus_attr_pl: 'Inteligencja',  
    mon_img: ''},     

  { name: 'Tsuruchi',
    clan_name: 'mantis',
    desc: 'Tsuruchi dawniej stanowili klan Osy, jest to mały ród, który specjalizuje się w sztuce łucznictwa. Samurajowie z tego rodu, w znaczącej większości to bushi, w czasach wojny dający klanowi Modliszki wsparcie łucznicze, w czasach pokoju dzięki umiejętnościom tropienia i śledzenia, często pełnią rolę zarządców.',
    bonus_attr: 'perception',
    bonus_attr_pl: 'Spostrzegawczość',  
    mon_img: ''},  
      
  { name: 'Yoritomo',
    clan_name: 'mantis',
    desc: 'Pierwszy ród klanu Modliszki, najliczniejszy, skupiający w swych ramach największą władzę. Samurajowie z rodu Yoritomo to przedsiębiorczy ludzie, którzy nie wstydzą się handlować jak inne rody, dodatkowym atutem jest posiadanie największej floty handlowej, która w czasie wojny szybko może zamienić się na flotę bojową.',
    bonus_attr: 'stamina',
    bonus_attr_pl: 'Wytrzymałość',  
    mon_img: ''}, 

  { name: 'Bayushi',
    clan_name: 'scorpion',
    desc: 'Myśląc o klanie Skorpiona, pierwszym rodem jaki przychodzi na myśl jest ród Bayushi. Bezwzględni i zdecydowani władcy klanu Skorpiona, odnajdują się na wielu polach, jednak na każdym z nich korzystają z technik które większości rokugańczyków nie przeszły by nawet przez myśl. Wszystko oczywiście w służbie Cesarzowej i klanowi. Samurajowie z rodu Bayushi prawie zawsze noszą maski, które skrywają i twarze, a wraz z nimi ich tajemnice, sekrety i intrygi które się z nimi wiążą.',
    bonus_attr: 'agility',
    bonus_attr_pl: 'Zręczność',  
    mon_img: ''},  
      
  { name: 'Shosuro',
    clan_name: 'scorpion',
    desc: 'Ród Shosuro stanowi cień rodu Bayushi, który rzadko brany jest pod uwagę, ale zawsze przewija się podczas ważniejszych wydarzeń. Utrzymujący własną autonomię, nigdy nie sprzeciwia się rozkazom płynącym z rodu Bayushi. Gdy klan Skorpion potrzebuje by coś "przypadkiem" się wydarzyło, to właśnie ród Shosuro ma tego dopilnować. Inną stroną tego rodu są wrodzone umiejętności aktorskie, wielce cenione na dworach innych klanów, co pomaga rodowi trzymać rękę na pulsie wydarzeń.',
    bonus_attr: 'awareness',
    bonus_attr_pl: 'Intuicja',  
    mon_img: ''}, 

  { name: 'Soshi',
    clan_name: 'scorpion',
    desc: 'Utworzony u zalania klanu Skorpiona, ród Soshi, prowadzi główną szkołę shugenja w ramach klanu Skorpiona. Adepci tej szkoły szkoleni są przede wszystkim w czarach powietrza, które najłatwiej mamią zmysły i pozwalają manipulować innymi. Nie rzadko są również wysyłani razem z agentami rodu Shosuro by służyć im jako wsparcie.',
    bonus_attr: 'intelligence',
    bonus_attr_pl: 'Inteligencja',  
    mon_img: ''},  
      
  { name: 'Yogo',
    clan_name: 'scorpion',
    desc: 'Małżeństwo z kimś z rodu Yogo jest jedną z najgorszych rzeczy jakie mogą spotkać samuraja. Yogo wywodził się z klanu Feniksa, z którego został wygnany i przeklęty za zdradę tej którą kochał najmocniej. Klątwa zdrady przekazywana od tamtej pory przekazywana jest w linii krwi, tego rodu. Niemniej ród z powodzeniem prowadzi drugą co do wielkości szkołę shugenja w klanie Skorpiona.',
    bonus_attr: 'willpower',
    bonus_attr_pl: 'Siła Woli',  
    mon_img: ''},     

  { name: 'Kitsuki',
    clan_name: 'dragon',
    desc: '"Uprzejme Smoki" bo tak zwykło nazywać się przedstawicieli rodu Kitsuki, służą głównie jako dworzanie i zarządczy klanu Smoka, choć wywodzą się od rodziny Agasha, nie prowadzą szkoły shugenja. Ród Kitsuki, szkoli dworzan którzy specjalizują się w wyłapywaniu kłamstw i oszustw, co znacząco pozwala całemu klanowi szybko orientować się w rzeczywistej sytuacji politycznej Rokuganu.',
    bonus_attr: 'awareness',
    bonus_attr_pl: 'Intuicja',  
    mon_img: ''},  
      
  { name: 'Mirumoto ',
    clan_name: 'dragon',
    desc: 'Ród Mirumoto, są rodem który trzyma władzę nad klanem Smoka. Podczas gdy zakon Togashi podąża ścieżką oświecenia, ród Mirumoto zajmuje się codziennymi obowiązkami zarządzania klanem, w rękach tego rodu, spoczywa również dowództwo nad wojskiem. Liczebnie ród Mirumoto również dominuje nad innymi rodami, gdyż członkowie tego rodu stanowią ponad połowę wszystkich członków klanu Smoka.',
    bonus_attr: 'agility',
    bonus_attr_pl: 'Zręczność',  
    mon_img: ''}, 
      
  { name: 'Tamori',
    clan_name: 'dragon',
    desc: 'Prawdopodobnie najbardziej wojowniczy shugenja w Rokuganie pochodzą z rodu Tamori, będącymi bezpośrednimi spadkobiercami, rodu Agasha z przed ich schizmy na rzecz klanu Feniksa. Ród Tamori prowadzi główną szkołę shugenja w klanie Smoka, ich techniki w unikalny sposób łączą alchemię, kowalstwo, tworząc sztukę magii i wojny. Zła sława rodu Tamori, związana jest z ich skłonnością do przemocy, która obca jest innym rodom shugenja.',
    bonus_attr: 'willpower',
    bonus_attr_pl: 'Siła Woli',  
    mon_img: ''},  
      
  { name: 'Togashi',
    clan_name: 'dragon',
    desc: 'Ród Togashi, tak naprawdę jest wielki zakonem mnichów, przyjmujących wszystkich tych którzy chcą wstąpić w jego szeregi, jeśli tylko okażą się oni godni przyjęcia. Zakon Togashi pełni rolę duchowego przewodnika klanu Smoka, stojąc na straży tradycji i właściwej interpretacji dzieł Shinsei.',
    bonus_attr: 'reflexes',
    bonus_attr_pl: 'Refleks',  
    mon_img: ''},   
      
  { name: 'Asahina',
    clan_name: 'crane',
    desc: 'Cichy i spokojny ród Asahina, jest jednym z najbardziej zakonnych rodów w Rokuganie. Ród ten jest najbardziej pokojowym rodem w Rokuganie, w swym usposobieniu wierniejszym swym przekonaniom, nawet od rodów klanu Feniksa. Asahina rodem prowadzonym główną szkołę shugenja na ziemiach Żurawia i to stanowi ich główne zadanie w ramach klanu. Członkowie tego rodu, na równi ze swoimi obowiązkami zajmują się również zgłębianiem sztuki i filozofii.',
    bonus_attr: 'intelligence',
    bonus_attr_pl: 'Inteligencja',  
    mon_img: ''},  
      
  { name: 'Daidoji',
    clan_name: 'crane',
    desc: '"Żelazne Żurawie", czyli ród Daidoji, odpowiada za siły zbrojne klanu. Ród ten jest gwarantem stałej gotowości do wojny lub innych zadań wyznaczonych przez rody Doji i Kakita. Choć wojownikom tego rodu brakuje finezji członków rodu Kakita. Ród Daidoji zajmuje się taktyką oraz technikami wojskowymi, często musząc podejmować decyzje które pozostali członkowie klanu uznali by za niehonorowe, ród ten jest jednak gotowy na wiele wyrzeczeń w imię obrony swojego klanu.',
    bonus_attr: 'stamina',
    bonus_attr_pl: 'Wytrzymałość',  
    mon_img: ''},  
      
  { name: 'Doji',
    clan_name: 'crane',
    desc: 'Ród ten przewodzi całemu klanowi Żurawia, będąc niekwestionowanymi mistrzami zarówno w dziedzinie polityki jak i kultury. Dzięki wskazówką i zasadom jakie pozostawiła po sobie kami Doji, ród ten potrafił przez ponad tysiąc lat zapewnić przewagę klanu nad innymi, pomimo posiadania mniej licznych wojsk.',
    bonus_attr: 'awareness',
    bonus_attr_pl: 'Intuicja',  
    mon_img: ''},
      
  { name: 'Kakita',
    clan_name: 'crane',
    desc: 'Kakita są rodem, najbliżej spokrewnionym z rodem Doji i zajmują drugą pozycję w klanie. Członkowie tego rodu wyznają zasadę doskonałości w danej sztuce. Dla Kakity "sztuką" może być wszystko, taktyka, origami czy poezja. Sztuką którą Kakita szczególnie sobie upodobali idąc za założycielem rodu, jest sztuka pojedynku. Ród Kakita często zapewnia yojimbo dla dworzan Doji, choć rola tego rodu nie jest bliżej określona ze względu na rozmaitość "sztuk" które członkowie tego rodu opanowują.',
    bonus_attr: 'agility',
    bonus_attr_pl: 'Zręczność',  
    mon_img: ''},   
      
  { name: 'Chuda',
    clan_name: 'spider',
    desc: 'Shugenja którzy przyjmują to nazwisko, odwołują się do rodziny Chuda, która została wybita wieki temu. Rodziny która miała zajmować się śledzeniem i niszczeniem shugeny - maho. Ale sama popadła w sidła Krain Cienia. Obecnie ród Chuda, to zbiór shugenja, żadnych władzy i potęgi, którzy nie cofną się przed niczym by tylko zgłębić kolejne zagadnienia związane z zakazaną magią krwii. Nawet wewnątrz klanu Pająka, ich lojaność jest mocno nie pewna i tylko strach przed demaskacją skłania ich do posłuszeństwa względem rodziny Daigotsu.',
    bonus_attr: 'intelligence',
    bonus_attr_pl: 'Inteligencja',  
    mon_img: ''},  
      
  { name: 'Daigotsu',
    clan_name: 'spider',
    desc: 'Ród Daigotsu, jest najliczniejszym, z rodów klanu, a jego członkowie są bardzo różni. W czasach gdy nie istniał jeszcze klan Pająka, nazwisko Daigotsu, przyjmowali samurajowi naznaczeni Skazą Cienia lub ci którzy chcieli podążać ścieżką filozofii Daigotsu, opierającej się na sile, a nie na współczuciu. Choć nie wszyscy członkowie tej rodziny są skarzeni Skazą Cienia, większość z nich przynajmniej otarła się o nią.',
    bonus_attr: 'stamina',
    bonus_attr_pl: 'Wytrzymałość',  
    mon_img: ''},  
      
  { name: 'Susumu',
    clan_name: 'spider',
    desc: 'Rodzina Susumu została założona w roku 1173, po dekrecie Cesarzowej, który umieścił klan Pająka na równi z pozostałymi wielkimi klanami. Ród przyjął nazwę Susumu, chociaż jej "założyciel", nigdy zmarł po jej ustanowieniu i nigdy nie był jej Daimio. Daigotsu Susumu był znany ze swych umiejętności dyplomacji i wrodzonego wdzięki. Wielu uległo jego naturalnym skłonnościom do przekonywania innych. Byli jednak i tacy którzy poznali Susumu, z jego mrocznej strony, osoby bezwzględnej, która wykorzysta każdą sposobność by zniszczyć swoją ofiarę. Pomimo swojej pozycji Cesarskiego doradcy, nigdy nie nadużywał swojej pozycji dla własnych korzyści i do końca pozostał wierny dwóm władcom, Daigotsu i Iweko. Techniki jakimi posługiwał się Susumu, stały się fundamentem szkoły dworskiej rodziny Susumu, pomimo że sam Susumu nigdy nie miał uczniów. Swoją wiedzą i doświadczeniami, często dzielił się ze swoją żoną Kakita Shizuka oraz jej córką, Kuroko. Po śmierci ojca Kuroko, przyjeła nazwisko Susumu i została pierwszym Daimyo tej rodziny. Choć ród Susumu nie posiada własnego Dojo, Kuroko chętnie dzieli się wiedzą, z dworzanami klanu Pająka. I tak ród Susumu, stał się ustami swojego klanu, którzy chętnie poświęcają się roli doradców władców z innych klanów, służąc dwóm panom, tak jak czynił to Daigotsu Susumu. ',
    bonus_attr: 'awareness',
    bonus_attr_pl: 'Intuicja'},

  { name: 'Miya',
    clan_name: 'imperial',
    desc: 'U zarania Cesarstwa, Miya dostał rozkaz, rozpowiadania wieści o porażce Fu Lenga. Od tego czasu, ród Miya, z dumą i godnością,  pełni rolę heraldów i posłanników Cesarza. Samurajowie Miya są zazwyczaj spokojni i patetyczni, ale zawsze skoncentrowani na powierzonej im wielkiej odpowiedzialności.',
    bonus_attr: 'reflexes',
    bonus_attr_pl: 'Refleks'},

  { name: 'Otomo',
    clan_name: 'imperial',
    desc: 'O rodzinie Otomo, często mówi się z nutką strachu i nie jest to wcale oznaka słabości. Dworzanie Otomo to łowcy dworów Cesarstwa, wykorzystujących wszelkie przewagi jakie daje im pozycja rodziny cesarskiej, by zdominować przeciwnika. Dworzanie Otomo, to manipulanci, obdarzeni nadludzki sprytem, którzy nie mają oporów, przed słownym i politycznym niszczeniem swoich wrogów. Mówi się że dwór, to pole bitwy bardziej niebezpieczne od pola bitwy, a Otomo są tego żywym przykładem. Członkowie Cesarskiej rodziny, którzy nie mają szans na objęcie tronu, często zrzekają się swojego nazwiska i wstępują do rodziny Otomo.',
    bonus_attr: 'intelligence',
    bonus_attr_pl: 'Inteligencja'},

  { name: 'Seppun',
    clan_name: 'imperial',
    desc: 'Seppun był najwierniejszym towarzyszem hentei i do dziś ród Seppun jest najbliżej rodziny Cesarskiej. Samurajowie Seppun, oddani są utrzymaniu bezpieczeństwa Cesarza i Cesarstwa, zarówno na polu dworskim, jak i na polu bitwy. Zdarza się że członkowie rodu Cesarskiego, wstępują do rodziny Seppun, jeśli nie mają szans na objęcie tronu, choć żadziej niż do rodziny Otomo.',
    bonus_attr: 'agility',
    bonus_attr_pl: 'Zręczność'},

  { name: 'Heichi',
    clan_name: 'minor',
    small_clan_name: 'Dzik',
    desc: 'Niewielu ludzi może przetrwać zagrożenia Gór Zmierzchu bez szkód, dla swojej psychiki jednak samurajowie Klanu Dzika, byli w stanie utrzymać je przez stulecia. Są twardymi i gorzkimi ludźmi, gotowymi stawić czoła każdemu, byle tylko chronić to co dla nich ważne. Kiedy Heichi raz coś postanowi, nic nie będzie w stanie go powstrzymać.',
    bonus_attr: 'willpower',
    bonus_attr_pl: 'Siła Woli'},

  { name: 'Komori',
    clan_name: 'minor',
    small_clan_name: 'Nietoperz',
    desc: 'Komori są rodziną Shugenja, zebrani pod flagą Klanu Nietoperza przez samego założyciela. Łączą w sobie wiele unikalnych cech, które sprawiają, że trudno jednoznacznie określić jaki jest samuraj z klanu Nietoperza. Jedyne cechy które łączą tę grupę indywialistów to, chęć do nauki i inteligencja pozwalająca przyjąć nowo zdobytą wiedzę.',
    bonus_attr: 'intelligence',
    bonus_attr_pl: 'Inteligencja'},

  { name: 'Toku',
    clan_name: 'minor',
    small_clan_name: 'Małpa',
    desc: 'Założyciel rodziny Toku, przeciętny ronin, stał się Kapitanem Cesarskiej Gwardii, bohaterem Cesarstwa i ostatecznie trafił do Tengoku jako Fortuna Cnoty. Jego potomkom udzielił się charakter tego wielkiego człowieka, żyją więc ze współczuciem dla wszystkich mieszkańców Rokuganu. Członkowie rodu Toku często stają się namiestnikami by szerzyć sprawiedliwość i pokój na wszystkich ziemiech. Znani są ze swego wesołego usposobienia i dziwnego poczucia humoru, obie te cechy rzucają się w oczy już po kilku chwilach przebywania z nimi.',
    bonus_attr: 'stamina',
    bonus_attr_pl: 'Wytrzymałość'},

  { name: 'Fuzake',
    clan_name: 'minor',
    small_clan_name: 'Małpa',
    desc: 'Nazwisko Fuzake zostało nadane tej rodzinie jako nagroda za wieloletnią słóżbę wobec Cesarskiego Rodu. Fuzake to Shugenja o wielkiej inteligencji, zaciekawieni życiem. Ludzie z zewnątrz uważają, że członkowie tego małego rodu są lekkomyślni i kapryśni, jednak Fuzake, nieraz udowodnili, że są odważni i wiarygodni.',
    bonus_attr: 'perception',
    bonus_attr_pl: 'Spostrzegawczość'},

  { name: 'Usagi',
    clan_name: 'minor',
    small_clan_name: 'Zając',
    desc: 'Przez prawie całą swoją historię rodzina Usagi związana była z walką, znali bowiem zagrożenie, jakie niosła, ze sobą wiedza o istnieniu tajnych organizacji, takich jak Kolat czy Piewcy Krwi. Członkowie rodu Usagi, są zawsze czujni i gotowi by rozpoznać najdrobniejsze oznaki skazy i zepsucia. Niestety bardzo wielu spośród starszych członków klanu popadło w paranoję i nie ufa nikomu, zwłaszcza obcym. Młodsi członkowie są zwykle bardziej otwarci.',
    bonus_attr: 'awareness',
    bonus_attr_pl: 'Intuicja'},

  { name: 'Ujina',
    clan_name: 'minor',
    small_clan_name: 'Zając',
    desc: 'Powstał w bardzo niespokojnych czasach niedługo po Drugim Dniu Gromów. Rodzina Ujina jest malutka, liczy zwykle mniej niż dwa tuziny ludzi naraz. Mimo swej niewielkiej liczebności Ujina z dumą noszą nazwisko nadane im przez Cesarza. Są wyjątkowo pragmatyczni i nie zawahają się przed najpodstępniejszymi czynami by osiągnąć to, czego klan Zająca potrzebuje.',
    bonus_attr: 'agility',
    bonus_attr_pl: 'Zręczność'},

  { name: 'Kasuga',
    clan_name: 'minor',
    small_clan_name: 'Żółw',
    desc: 'Kasuga nie są zbyt ambitni, cesarskie uznanie przewyższa wszystkie ichnie potrzeby, w tym własną sławę. Są pragmatyczni i gożcy, od lat walcząc dla sprawy jako szumowiny Cesarstwa. Są szmuglerami i złodziejami często są też bardzo brutalni, jednakże potrafią też być zdolnymi dyplomatami, kiedy klan tego potrzebuje. ',
    bonus_attr: 'perception',
    bonus_attr_pl: 'Spostrzegawczość'},

  { name: 'Chuda',
    clan_name: 'minor',
    small_clan_name: 'Wąż',
    desc: 'Isawa Chuda był człowiekiem o wielkim przekonaniu i mądrości a jego rodzina rozpamiętywała o jego prawości przez pokolenia. Chuda byli całkowicie lojalni wobec Cesarstwa i zwalczali zło, które zagraża jego granicom. Ich nienawiść wobec maho-tsukaj była bardzo dobrze znana a sam Klan Węża niszczył mroczne kulty z wielkim zapałem.',
    bonus_attr: 'strength',
    bonus_attr_pl: 'Siła'},

  { name: 'Kitsune',
    clan_name: 'minor',
    small_clan_name: 'Lis',
    desc: ' Kitsune preferują ciszę lasu ponad zgiełk cywilizowanych miast czy nawet wsi. Są rodziną bardzo związaną ze światem duchów i będą walczyć z całą zaciekłością by bronić mieszkańców Chikushudo, Świata Zwierząt. Kitsune są bardzo niezależni, ale też bardzo pragmatyczni. Bohaterowie Kitsune zrobią wszystko co będzie trzeba by osiągnąć swoje cele, z wyjątkiem poddania swojej duszy złu.',
    bonus_attr: 'willpower',
    bonus_attr_pl: 'Siła Woli'},

  { name: 'Tonbo',
    clan_name: 'minor',
    small_clan_name: 'Ważka',
    desc: ' Tonbo są prości i pokorni pomimo swojego znaczenia w Cesarstwie. Większość pracowitych członków rodziny to Shugenja, choć klan posiada też niewielką armię Bushi szkolącą się, zazwyczaj dzięki wyrobionym już koneksjom politycznym w Szkole Mirumoto. Świetnie radzą sobie w górach i często służą jako przewodnicy na ziemie Smoka.',
    bonus_attr: 'awareness',
    bonus_attr_pl: 'Intuicja'},

  { name: 'Morito',
    clan_name: 'minor',
    small_clan_name: 'Wół',
    desc: 'Samurajowie z Klanu Wołu są zdeterminowani rozsławić swoje imię. Pragną zdobyć przychylność Kolatu i miejsce w jego strukturach jako żołnierze i egzekutorzy. Ich zdolności walki z siodła przewyższają wszystkich poza Jednorożcami a nawet część z nich. Morito mają uszy otwarte na szmery z półświatka i wypatrują wszystkich okazji by zwiększyć swoją potęgę.',
    bonus_attr: 'stamina',
    bonus_attr_pl: 'Wytrzymałość'},
  { name: 'Tsi',
    clan_name: 'minor',
    small_clan_name: 'Wilga',
    desc: 'Rodzina Tsi jest dość mała a jej przeznaczeniem jest sztuka kowalstwa. Ich nieprzyjemna postawa i niekiedy brak społecznej akceptacji często czynią Tsi nieprzyjaznymi, jednak ich kunszt pozostaje bezdyskusyjny. Rzadko opuszczają rodzinne strony a jeżeli już to robią to najczęściej odwiedzają ziemię rodziny Kaiu by obserwować kunszt tamtejszych mistrzów kowalstwa i inżynierii.',
    bonus_attr: 'strength',
    bonus_attr_pl: 'Siła'},

  { name: 'Toritaka',
    clan_name: 'minor',
    small_clan_name: 'Sokół',
    desc: 'Toritaka zawsze byli małą, zamkniętą wspólnotą żyjącą w pobliżu ziem klanu Kraba. Jego stereotypowi członkowie zawsze byli wysocy i niezręczni i nieustannie szlifujący swoją muskulaturę w kolejnych bitwach. Pomimo swego brutalnego wyglądu Toritaka są cisi, spokojni i zdystansowani wobec reszty rokugańskiego społeczeństwa.',
    bonus_attr: 'perception',
    bonus_attr_pl: 'Spostrzegawczość'},

  { name: 'Suzume',
    clan_name: 'minor',
    small_clan_name: 'Wróbel',
    desc: ' Suzume są pokorni, wytrwali i wyluzowani. Ich zainteresowania czynią ich jednak wyobcowanymi wśród innych mniejszych klanów. Są bardzo związani z heiminami i wuażają, że samurajowie powinni im pomagać kiedy jest taka potrzeba.',
    bonus_attr: 'awareness',
    bonus_attr_pl: 'Intuicja'},

  { name: 'Ichiro',
    clan_name: 'minor',
    small_clan_name: 'Borsuk',
    desc: 'Członkowie rodziny Ichiro są niegrzeczni i szorstcy w obyciu z innymi mieszkańcami Cesarstwa, uważają, że czyny znaczą więcej niż słowa, ponadto bardziej niż normy społeczne cenią zwykłą pragmatyczność. Członkowie rodziny zawsze są krępi i dobrze umięśnieni.',
    bonus_attr: 'strength',
    bonus_attr_pl: 'Siła'}]
# ---------------------------- Support functions --------------------------

def not_valid_names(model_name, objects)
  names = []
  objects.each do |obj|
    object = model_name.new(obj)
    object.valid? ? true : names << [ object.name, object.errors.messages ]
  end
  puts names
end

# ------------------------------------------- Main functions -------------------------------

puts 'Clans Generation'
Clan.destroy_all
not_valid_names(Clan, clans)
clans.each do |clan|
  Clan.create(clan)
end

puts 'Families Generation'
Family.destroy_all
clans = Clan.all
not_valid_names(Family, families)
clans.each do |clan|
  families.each do |family|
    clan.families.create(family) if family[:clan_name] == clan.name
  end
end
puts 'Data Base Seeded'