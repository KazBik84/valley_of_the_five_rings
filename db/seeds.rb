# -------------------------------------- Data Base objects ---------------------------------------------
clans = [
  {name: "Feniks",
  clan_name: "Feniks",
  mon_img: "",
  desc: "Słowo 'shugenja' ma w Rokuganie wiele znaczeń: mag, kapłan, prorok, świątobliwy mąż. Bez wątpienia najpotężniejsi przedstawiciele tej profesji przynależą do Klanu Feniksa. Skrybą, który stał za Cesarzem i spisywał jego rozmowę z Shinsei był sam kami Shiba, założyciel tego Klanu, który przekazał swoim następcom nie tylko dokładną relację, ale i wszystkie słowne niuanse rozmowy. Żaden inny klan nie rozumie starej religii Rokuganu i 'nowej drogi' lepiej, niż klan Feniksa i to jego członkowie połączyli obydwa systemy w oficjalne wyznanie Cesarstwa. Studia nad tak delikatną materią odbiły się jednak niekorzystnie na samurajach Feniksa, bowiem dni i godziny kontemplacji oraz studiów nad antycznymi tekstami, to stracone dni nauki sztuki wojny i godziny opuszczonych treningów szermierczych."},

  {name: "Jednorozec",
  clan_name: "Jednorożec",
  mon_img: "",
  desc: "Klan Jednorożca, zwany również klanem Ki-Rin, opuścił Rokugan na blisko osiem stuleci. Wędrując i upewniając się że niema zewnętrznego zagrożenia dla Cesarstwa, które było by nie odkryte. Od swojego powrotu, samurajowie wielu klanów, uważają ten klan, za barbarzyński i obcy, głównie z powodu swojego umiłowania do obcych zwyczajów, które nie są akceptowane wśród rodzin z innych klanów. Jednakże klan zyskał szacunek innych klanów, głównie ze względu na swoją kawalerię, która znacznie przewyższa oddziały konne innych klanów. Złotem klanu Jednorożca, nie jest kruszec, lecz gajiński konie, które niejednokrotnie cenniejsze są od kruszców."},

  {name: "Lew",
  clan_name: "Lew",
  mon_img: "",
  desc: "Mówi się że klan Lwa jest prawą ręką Cesarza, obrońcą jego ziem i własnej osoby. Klan Lwa jest w znacznej mierze oparty na tradycjach wojskowych, co w połączeniu z rozległymi ziemiami w sercu Rokuganu, daje największą armię świetnie wyszkolonych wojowników, gotowych do walki w każdej chwili. Myli się jednak ten, kto patrzy na klan Lwa tylko przez pryzmat jego armii, bowiem klan Lwa to przede wszystkim Honor i Bushido, kultywowany od pokoleń, a przez wieki przekuty w ostrze którego nie da się stępić. I choć wielu w Rokuganie, postrzega ich zamiłowanie do historii i tradycji, jako przejaw zacofania, nikt nie ośmielić się powiedzieć tego głośno, w obawie przed gniewem lwa."},  

  {name: "Modliszka",
  clan_name: "Modliszka",
  mon_img: "",
  desc: "Istnienie klanu Modliszki jako Wielkiego Klanu, jest potwierdzeniem słów Shinsei 'Fortuny sprzyjają śmiertelnikom'. Założony przez syna Osano-Wo, który nie został uznany dziedzicem klanu Kraba, klan Modliszki pozostawał na uboczu i dopiero podczas Wojny Klanów odegrał kluczową rolę w obronie Cesarstwa przed siłami Krain Cienia. Nie ma w Rokuganie klanu o takiej mnogości ideologii i spojrzenia na świat jak w klanie Modliszki. Złożony z mniejszych klanów Modliszki, Lisa, Stonogi i Osy, klan pozostaje pod przewodnictwem klanu Modliszki, rozciąga się na ogromnym, wyjątkowo zróżnicowany obszarze. Jednak dzięki tej różnorodności klan Modliszki jest wyjątkowo elastyczny i gotowy do wypełnienia każdej roli powierzonej przez Cesarzową, a ogromne wpływy z handlu wzmacniają dodatkowo pozycję klanu."},  

  {name: "Pajak",
  clan_name: "Pająk",
  mon_img: "",
  desc: "Choć klan Pająka jako Wielki Klan, funkcjonuje od niedawna, można śmiało założyć że jako siła, klan Pająka istniał od początku Rokuganu. Co łączy przedstawicieli klanu Pająka z przedstawicielami innych klanów, to podążanie ścieżką wyznaczoną wcześniej przez kami. Jednak w tym przypadku, ścieżka wyznaczona została przez Fu-Lenga upadłą kami, która przez większość swojego istnienia chciała zniszczenia Rokuganu. Podobnie jak Fu-Leng, klan Pająka jest bardzo ambitny i skryty, skory do szerzenia chaosu i wykorzystywania go na własną korzyść. Klan wykorzystuje rownież powszechnie zakazane praktyki, w dziedznie czarów Maho, przy pomocy rodziny Chuda, która nie ustaje w przekraczaniu kolejnych granic tej zakazanej sztuki. Skrytobójcze działani jak i wykorzystywanie istot nieludzkich do osiągnięcia własnej korzysci, również nie są obce wysoko postawionym członkom tego klanu."},  

  {name: "Skorpion",
  clan_name: "Skorpion",
  mon_img: "",
  desc: "W wielu Rokugańskich sztukach i poematach, klan Skorpiona przedstawiany jest jako uosobienie wszelkiego zła i przeciwieństwo wszelkich cnót samurajskich. W wyniku tego stereotypu samurajowie klanu Skorpiona cieszą się złą sławą na wielu dworach. Filozofia klanu jest prosta, 'cel uświęca środki'. Dla samuraju z klanu Skorpiona niema w zasadzie czynu, zbyt haniebnego czy niemoralnego którego nie wykona on dla swojego klanu. Służba jest w zasadzie jedynym aspektem Bushido który w klanie Skorpiona traktowany jest z szacunkiem, i choć poświęcenie dla klanu nie jest niczym niezwykłym w Rokuganie, samurajowie z klanu Skorpiona nie cofną się przed niczym by osiągnąć swój cel, wykonają zadanie przed którym inny samurajowie mogli by się cofnąć ze względu na osobisty honor."}, 

  {name: "Smok",
  clan_name: "Smok",
  mon_img: "",
  desc: "Tajemniczy i enigmatyczny klan Smoka, od zarania Cesarstra kroczył własną ścieżką. Samurajowie z tego klanu często szokują swoimi zachowaniami innych samurajów i poza klanem Jednorożca, są najmniej przywiązani do ogólnych zwyczajów. Choć klan tworzy spójną całość, łączy w sobie wiele grup o bardzo różnym podejściu do życia. Zaczynając od rodziny Mirumoto, która podąża za wytycznymi Mirumoto i stylu walki dwoma mieczami zwanym Ninten, dworzan Kitsuki którzy ponad słowa innych przedkładają dowody rzeczowy, a kończąc na zakonie tatuowanych mnichów Ise-Zumi, ktorzy czerpią z nich mistyczną moc."},  

  {name: "Zuraw",
  clan_name: "Żuraw",
  mon_img: "",
  desc: "Jeśli w Rokuganie, jest ktoś z kim należy się liczyć, można śmiało założyć że ma przyjaciela, doradcę lub nawet partnera z klanu Żurawia. W ten sposób klan utrzymuje swoją niekwestionowaną dominację na polu społecznym i politycznym. Z powodu ról jakie pełni klan Żurawia wobec Cesarstwa, znaczna część samurajów to dworzanie i artyści, a nawet Ci którzy poświęcają się drodze bushi lub shugenja, obyci są ze sztuką i dworem. Ziemie kontrolowane przez klan Żurawia należą do najurodzajniejszych i najlepiej prosperujących ziem w Rokuganie, co czyni klan Żurawia jednym z najbogatszych Wielkich Klanów."},   

  {name: "Krab",
  clan_name: "Krab",
  mon_img: "",
  desc: "Potężni samurajowie z klanu Kraba, są pierwszą linią obrony, jaką posiada Rokugan przeciw istotom z Krain Cienia. Lata służby i poświęcenia, sprawiły że samurajowie z klanu Kraba stali się chłodni i prości. Wieki walk z nieustępliwym przeciwnikiem sprawiły że samurajowie z klanu Kraba, znacznie przewyższają tężyzną innych samurajów. Jednak ciągły stan gotowości i wieki poświęceń, uczyniły z Krabów, ludzi prostych i pragmatycznych, żadko kiedy przeykładających wagę, do sztuki, czy piękna. Dlatego w 'spokojniejszych' częściach Rokuganu postrzegani, częśto są z prostaków i barbarzyńców."}, 

  {name: "Rody_Cesarskie",
  clan_name: "Rody Cesarskie",
  mon_img: "",
  desc: "Rodziny Cesarskie, poprzysięgły pełne oddanie dynastii Cesarskiej, a każdy czyn podyktowany jest dobrem Cesarstwa. Samurajowie Miya podróżują jako po Rokuganie jako 'głos Cesarza', upewniając się że dekrety Cesarza są przestrzegane. Ród Seppun to tarcza Cesarza, pełnią rolę osobistych ochroniarzy, jak i tworzą Cesarskie Legiony, będące zawsze do dyspozycji cesarza. Z kolei ród Otomo reprezentuje osobę cesarza na dworach Rokufanu, dworzanie tego rodu są mistrzami intryg, oddanymi wyższemu dobru jakim jest dobro Cesarstwa. Dzięki dostępowi do najlepszych nauczycieli, nieograniczonych środków i przewagi statusu, rodziny cesarskie, są elitą pośród samurajów Rokuganu."},

  {name: "Ronin",
  clan_name: "Ronin",
  mon_img: "",
  desc: "Będąc na granicy kasty samurajskiej, ronini są samurajami bez pana, co w oczach wielu członków Wielkich Klanów, czyni nich nic niewartymi. Jednak mocno myli się ten kto wrzuca ich wszystkich do jednego worka. Podstawowy podział roninów dzieli ich na roninów klanowych i prawdziwych roninów. Pierwsi to samurajowie którzy urodzili się w klanie, lecz na skutek zbiegów wydarzeń zostali wygnani z klanu, z zakazem używania nazwiska rodowego i mon klanu, a ich szkoła zamknęła się na nich. Prawdziwi ronini, są dziećmi ze związków w których choć jeden rodzic był samurajem i którzy nie przysięgli wierności żadnemu klanowi."}]

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
puts 'Data Base Seeded'