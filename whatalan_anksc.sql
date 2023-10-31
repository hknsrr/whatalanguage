-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 11 Kas 2022, 17:21:00
-- Sunucu sürümü: 8.0.31-cll-lve
-- PHP Sürümü: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `whatalan_anksc`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `content1`
--

CREATE TABLE `content1` (
  `id` int UNSIGNED NOT NULL DEFAULT '0',
  `en` text,
  `tr` text,
  `fr` text,
  `de` text,
  `es` text,
  `it` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `fa` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `level` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `content1`
--

INSERT INTO `content1` (`id`, `en`, `tr`, `fr`, `de`, `es`, `it`, `fa`, `level`) VALUES
(0, 'I\'m from Turkey.', 'Ben Türkiyeliyim.', 'Je suis de la Turquie.', 'Ich bin aus der Türkei.', 'Yo soy de Turquía.', 'Vengo dalla Turchia.', 'من از ترکیه هستم', '1'),
(1, 'I am sure that Jessy will help you if you ask her.', 'Ona sorarsan Jessy\'nin sana yardım edeceğinden eminim.', 'Je suis sûr que Jessy t\'aidera si tu le lui demandes.', 'Ich bin sicher, dass Jessy dir helfen wird, wenn du sie fragst.', 'Estoy seguro de que Jessy te ayudará si se lo pides.', 'Sono sicuro che Jessy ti aiuterà se glielo chiedi.', 'مطمئنم که جسی اگر از او بخواهید به شما کمک خواهد کرد', '3'),
(2, 'Jim says really. He hates meeting new people.', 'Jim gerçek söylüyor. Yeni insanlarla tanışmaktan nefret eder.', 'Jim dit vraiment. Il déteste rencontrer de nouvelles personnes.', 'Jim sagt wirklich. Er hasst es, neue Leute kennenzulernen.', 'Jim dice que de verdad. Odia conocer gente nueva.', 'Jim dice davvero. Odia incontrare nuove persone.', 'جیم واقعا می گوید. او از ملاقات با افراد جدید متنفر است', '3'),
(3, 'When i arrived, she was watching a film on tv.', 'Geldiğimde televizyonda bir film izliyordu.', 'Quand je suis arrivé, elle regardait un film à la télé.', 'Als ich ankam, sah sie sich einen Film im Fernsehen an.', 'Cuando llegué, ella estaba viendo una película en la televisión.', 'Quando sono arrivato, stava guardando un film in tv.', 'وقتی رسیدم، او در حال تماشای فیلمی از تلویزیون بود', '3'),
(4, 'Clare buys a lot of takeaways, but I prefer home-made food.', 'Clare bir sürü paket servis alır ama ben ev yapımı yemekleri tercih ederim.', 'Clare achète beaucoup de plats à emporter, mais je préfère les plats faits maison.', 'Clare kauft viele Imbissbuden, aber ich bevorzuge hausgemachtes Essen.', 'Clare compra mucha comida para llevar, pero yo prefiero la comida casera.', 'Clare compra un sacco di cibo da asporto, ma io preferisco il cibo fatto in casa.', 'کلر غذاهای آماده زیادی می خرد، اما من غذاهای خانگی را ترجیح می دهم', '3'),
(5, 'In the summer, i often cycle to work.', 'Yaz aylarında işe genellikle bisikletle giderim.', 'L\'été, je me rends souvent au travail à vélo.', 'Im Sommer fahre ich oft mit dem Fahrrad zur Arbeit.', 'En el verano, a menudo voy en bicicleta al trabajo.', 'In estate vado spesso al lavoro in bicicletta.', 'در تابستان، من اغلب با دوچرخه به سر کار می روم', '2'),
(6, 'I have had a strong relationship with my family.', 'Ailemle her zaman güçlü bir ilişkim oldu.', 'J\'ai eu une relation forte avec ma famille.', 'Ich hatte eine starke Beziehung zu meiner Familie.', 'He tenido una fuerte relación con mi familia.', 'Ho avuto un forte rapporto con la mia famiglia.', 'من رابطه قوی با خانواده ام داشتم.', '3'),
(7, 'The people around you have the greatest influence on your life.', 'Çevrenizdeki insanlar hayatınız üzerinde en büyük etkiye sahiptir.', 'Les personnes qui vous entourent ont la plus grande influence sur votre vie.', 'Die Menschen um dich herum haben den größten Einfluss auf dein Leben.', 'Las personas que te rodean tienen la mayor influencia en tu vida.', 'Le persone intorno a te hanno la maggiore influenza sulla tua vita.', 'افراد اطراف شما بیشترین تأثیر را در زندگی شما دارند', '3'),
(8, 'They taught me that it is important to find time for friends and family and to do what makes you happy.', 'Bana arkadaşlara ve aileye zaman ayırmanın ve seni mutlu eden şeyi yapmanın önemli olduğunu öğrettiler.', 'Ils m\'ont appris qu\'il est important de trouver du temps pour les amis et la famille et de faire ce qui vous rend heureux.', 'Sie haben mir beigebracht, dass es wichtig ist, Zeit für Freunde und Familie zu finden und das zu tun, was einen glücklich macht.', 'Me enseñaron que es importante encontrar tiempo para los amigos y la familia y hacer lo que te hace feliz.', 'Mi hanno insegnato che è importante trovare il tempo per gli amici e la famiglia e per fare ciò che ti rende felice.', 'آنها به من یاد دادند که مهم است که برای دوستان و خانواده وقت پیدا کنی و کاری را انجام دهی که تو را خوشحال می کند.', '4'),
(9, 'I spent many hours as a child listening to my uncle\'s stories.', 'Çocukken amcamın hikayelerini dinleyerek saatler geçirdim.', 'Enfant, j\'ai passé de nombreuses heures à écouter les histoires de mon oncle.', 'Als Kind habe ich viele Stunden damit verbracht, den Geschichten meines Onkels zuzuhören.', 'Pasé muchas horas de niño escuchando las historias de mi tío.', 'Ho passato molte ore da bambino ad ascoltare le storie di mio zio.', 'من در کودکی ساعت های زیادی را صرف گوش دادن به داستان های عمویم کردم.', '3'),
(10, 'He travelled and worked in Alaska, South-East Asia, India and Africa.', 'Alaska, Güneydoğu Asya, Hindistan ve Afrika\'da seyahat etti ve çalıştı.', 'Il a voyagé et travaillé en Alaska, en Asie du Sud-Est, en Inde et en Afrique.', 'Er reiste und arbeitete in Alaska, Südostasien, Indien und Afrika.', 'Viajó y trabajó en Alaska, el Sudeste Asiático, India y África.', 'Ha viaggiato e lavorato in Alaska, Sud-est asiatico, India e Africa.', 'او در آلاسکا، آسیای جنوب شرقی، هند و آفریقا سفر و کار کرد', '2'),
(11, 'I was very beautiful when I was young.', 'Ben gençken çok güzeldim.', 'J\'étais très belle quand j\'étais jeune.', 'Ich war sehr schön, als ich jung war.', 'Yo era muy hermosa cuando era joven.', 'Ero molto bella quando ero giovane.', 'من در جوانی بسیار زیبا بودم.', '2'),
(12, 'You are a child.', 'Sen bir çocuksun.', 'Vous êtes un enfant.', 'Du bist ein Kind.', 'Eres un niño.', 'Sei un bambino.', 'تو بچه ای', '1'),
(13, 'He\'s sixteen years old.', 'O on altı yaşında.', 'Il a seize ans.', 'Er ist sechzehn Jahre alt.', 'Tiene dieciséis años.', 'Ha sedici anni.', 'او شانزده سال دارد', '1'),
(14, 'She is a doctor.', 'O bir doktor.', 'Elle est médecin.', 'Sie ist Ärztin.', 'Ella es una doctora.', 'Lei è un dottore.', 'او یک دکتر است', '1'),
(15, 'It\'s a pretty cat.', 'Bu güzel bir kedi.', 'C\'est un joli chat.', 'Es ist eine hübsche Katze.', 'Es un gato bonito.', 'È un bel gatto.', 'این یک گربه زیبا است', '1'),
(16, 'We are excellent.', 'Biz mükemmeliz.', 'Nous sommes excellents.', 'Wir sind ausgezeichnet.', 'Somos excelentes.', 'Siamo eccellenti.', 'ما عالی هستیم', '1'),
(17, 'You\'re students.', 'Siz öğrencisiniz.', 'Vous êtes étudiants.', 'Ihr seid Studenten.', 'Ustedes son estudiantes.', 'Siete studenti.', 'شما دانشجو هستید', '1'),
(18, 'They are married.', 'Onlar evli.', 'Ils sont mariés.', 'Sie sind verheiratet.', 'Están casados.', 'Sono sposati.', 'آنها ازدواج کرده اند', '1'),
(19, 'Are you at home today?', 'Bugün evde misin?', 'Es-tu à la maison aujourd\'hui?', 'Bist du heute Zuhause?', '¿Estás en casa hoy?', 'Sei a casa oggi?', 'امروز در خانه هستی؟', '1'),
(20, 'I am not at home today, but i am at home tomorrow.', 'Bugün evde değilim, ama yarın evdeyim.', 'Je ne suis pas chez moi aujourd\'hui, mais je suis chez moi demain.', 'Ich bin heute nicht zu Hause, aber ich bin morgen zu Hause.', 'No estoy en casa hoy, pero mañana estoy en casa.', 'Non sono a casa oggi, ma sono a casa domani.', 'من امروز در خانه نیستم، اما فردا در خانه هستم', '2'),
(21, 'Your sister has very beautiful eyes.', 'Kardeşinin çok güzel gözleri var.', 'Votre sœur a de très beaux yeux.', 'Deine Schwester hat sehr schöne Augen.', 'Tu hermana tiene unos ojos muy bonitos.', 'Tua sorella ha degli occhi molto belli.', 'خواهرت چشمان بسیار زیبایی دارد', '2'),
(22, 'They were with the teacher together in the classroom.', 'Onlar sınıfta öğretmenle birlikteydiler.', 'Ils étaient avec le professeur ensemble dans la salle de classe.', 'Sie waren mit der Lehrerin zusammen im Klassenzimmer.', 'Estaban juntos con el maestro en el salón de clases.', 'Erano con l\'insegnante insieme in classe.', 'آنها با معلم با هم در کلاس بودند', '3'),
(23, 'Color of Ayşe\'s dress is red.', 'Ayşe\'nin elbisesinin rengi kırmızıdır.', 'La couleur de la robe d\'Ayşe est rouge.', 'Die Farbe von Ayşes Kleid ist rot.', 'El color del vestido de Ayşe es rojo.', 'Il colore del vestito di Ayşe è rosso.', 'رنگ لباس عایشه قرمز است', '2'),
(24, 'He is very rich person in Germany.', 'O Almanya\'da çok zengin biridir.', 'C\'est une personne très riche en Allemagne.', 'Er ist eine sehr reiche Person in Deutschland.', 'Es una persona muy rica en Alemania.', 'È una persona molto ricca in Germania.', 'او در آلمان یک فرد بسیار ثروتمند است', '2'),
(25, 'Kayra is a happy child every time.', 'Kayra, her zaman neşeli bir çocuktur.', 'Kayra est une enfant heureuse à chaque fois.', 'Kayra ist jedes Mal ein glückliches Kind.', 'Kayra siempre es una niña feliz.', 'Kayra è sempre una bambina felice.', 'کایرا هر بار کودکی شاد است', '2'),
(26, 'I go to school.', 'Ben okula giderim.', 'Je vais à l\'école.', 'Ich gehe zur Schule.', 'Voy a la escuela.', 'Vado a scuola.', 'من به مدرسه میروم', '1'),
(27, 'I go to school by bus.', 'Ben okula otobüsle giderim.', 'Je vais à l\'école en bus.', 'Ich fahre mit dem Bus zur Schule.', 'Voy a la escuela en bus.', 'Vado a scuola con l\'autobus.', 'من با اتوبوس به مدرسه می روم', '2'),
(28, 'My mother cooks every day.', 'Annem her gün yemek yapar.', 'Ma mère cuisine tous les jours.', 'Meine Mutter kocht jeden Tag.', 'Mi madre cocina todos los días.', 'Mia madre cucina tutti i giorni.', 'مادرم هر روز آشپزی می کند', '2'),
(29, 'My mother cooks in the kitchen every day.', 'Annem her gün mutfakta yemek yapar.', 'Ma mère cuisine dans la cuisine tous les jours.', 'Meine Mutter kocht jeden Tag in der Küche.', 'Mi madre cocina en la cocina todos los días.', 'Mia madre cucina in cucina tutti i giorni.', 'مادرم هر روز در آشپزخانه آشپزی می کند', '2'),
(30, 'Ayşe and Sevda graduated from Cambridge University.', 'Ayşe ve Sevda Cambridge üniversitesinden mezun oldu.', 'Ayşe et Sevda sont diplômées de l\'Université de Cambridge.', 'Ayşe und Sevda haben ihren Abschluss an der Cambridge University gemacht.', 'Ayşe y Sevda se graduaron de la Universidad de Cambridge.', 'Ayşe e Sevda si sono laureati all\'Università di Cambridge.', 'عایشه و سودا از دانشگاه کمبریج فارغ التحصیل شدند', '2'),
(31, 'Ahmet\'s sister stayed for her mother at the hospital yesterday.', 'Ahmet\'in kız kardeşi dün annesi için hastanede kaldı.', 'La sœur d\'Ahmet est restée pour sa mère à l\'hôpital hier.', 'Ahmets Schwester war gestern für ihre Mutter im Krankenhaus.', 'La hermana de Ahmet se quedó ayer por su madre en el hospital.', 'La sorella di Ahmet è rimasta per sua madre in ospedale ieri.', 'خواهر احمد دیروز برای مادرش در بیمارستان ماند', '3'),
(32, 'We need much money for alteration of the house.', 'Evin tadilatı için çok paraya ihtiyacımız var.', 'Nous avons besoin de beaucoup d\'argent pour la rénovation de la maison.', 'Wir brauchen viel Geld für den Umbau des Hauses.', 'Necesitamos mucho dinero para reformar la casa.', 'Abbiamo bisogno di molti soldi per la modifica della casa.', 'ما برای تغییر خانه به پول زیادی نیاز داریم', '3'),
(33, 'Unfortunately, the whole family died in this accident.', 'Bu kazada maalesef tüm aile öldü.', 'Malheureusement, toute la famille est morte dans cet accident.', 'Leider ist bei diesem Unfall die ganze Familie ums Leben gekommen.', 'Desafortunadamente, toda la familia murió en este accidente.', 'Purtroppo, l\'intera famiglia è morta in questo incidente.', 'متأسفانه تمام خانواده در این حادثه جان باختند.', '3'),
(34, 'Ali fell down badly in the garden two days ago.', 'Ali, iki gün önce bahçede kötü bir şekilde düştü.', 'Ali est tombé gravement dans le jardin il y a deux jours.', 'Ali ist vor zwei Tagen schlimm im Garten gestürzt.', 'Ali se cayó mal en el jardín hace dos días.', 'Ali è caduto gravemente in giardino due giorni fa.', 'علی دو روز پیش بدجوری در باغ افتاد', '3'),
(35, 'I couldn\'t see the woman who sings for me again.', 'Benim için şarkı söyleyen kadını bir daha göremedim.', 'Je ne pouvais plus revoir la femme qui chante pour moi.', 'Ich konnte die Frau, die für mich singt, nicht mehr sehen.', 'No pude volver a ver a la mujer que canta para mí.', 'Non riuscivo a vedere di nuovo la donna che canta per me.', 'دوباره نتوانستم زنی را که برایم آواز می خواند ببینم', '3'),
(36, 'Ayşe said that she would travel to Mars one day.', 'Ayşe, bir gün Mars\'a yolculuk yapacağını söyledi.', 'Ayşe a dit qu\'elle se rendrait sur Mars un jour.', 'Ayşe sagte, dass sie eines Tages zum Mars reisen würde.', 'Ayşe dijo que algún día viajaría a Marte.', 'Ayşe ha detto che un giorno sarebbe andata su Marte.', 'عایشه گفت که روزی به مریخ سفر خواهد کرد', '3'),
(37, 'Although he is a teacher, he doesn\'t know how to influence students.', 'Bir öğretmen olmasına rağmen, öğrencileri nasıl etkilemesi gerektiğini bilmiyor.', 'Bien qu\'il soit enseignant, il ne sait pas comment influencer les élèves.', 'Obwohl er Lehrer ist, weiß er nicht, wie er Schüler beeinflussen soll.', 'Aunque es profesor, no sabe cómo influir en los estudiantes.', 'Sebbene sia un insegnante, non sa come influenzare gli studenti.', 'او با وجود اینکه معلم است، نمی داند چگونه بر دانش آموزان تأثیر بگذارد.', '3'),
(38, 'Maybe the burglar might get caught by the people in that house.', 'Hırsız belki o evdeki insanlar tarafından yakalanır.', 'Peut-être que le cambrioleur pourrait se faire prendre par les gens de cette maison.', 'Vielleicht wird der Einbrecher von den Leuten in diesem Haus erwischt.', 'Tal vez el ladrón podría ser atrapado por la gente de esa casa.', 'Forse il ladro potrebbe essere catturato dalle persone in quella casa.', 'شاید سارق ممکن است توسط افراد آن خانه دستگیر شود', '3'),
(39, 'The fact that talking on the phone for long hours isn’t healthy has changed the daily habits of many people.', 'Uzun saatler telefonda konuşmanın sağlıklı olmadığı gerçeği, pek çok insanın günlük rutinlerini değiştirdi.', 'Le fait que parler au téléphone pendant de longues heures n\'est pas sain a changé les habitudes quotidiennes de nombreuses personnes.', 'Die Tatsache, dass langes Telefonieren nicht gesund ist, hat die täglichen Gewohnheiten vieler Menschen verändert.', 'El hecho de que hablar por teléfono durante largas horas no sea saludable ha cambiado los hábitos diarios de muchas personas.', 'Il fatto che parlare al telefono per lunghe ore non sia salutare ha cambiato le abitudini quotidiane di molte persone.', 'این واقعیت که صحبت کردن با تلفن برای ساعات طولانی سالم نیست، عادات روزانه بسیاری از مردم را تغییر داده است', '4'),
(40, 'It is not a good idea to eat much just before you sleep.', 'Uyumadan hemen önce çok yemek yemek iyi bir fikir değil.', 'Ce n\'est pas une bonne idée de manger beaucoup juste avant de dormir.', 'Es ist keine gute Idee, kurz vor dem Schlafen viel zu essen.', 'No es una buena idea comer mucho justo antes de dormir.', 'Non è una buona idea mangiare molto prima di dormire.', 'این ایده خوبی نیست که درست قبل از خواب زیاد غذا بخورید', '3'),
(41, 'That the man often gives warnings worries the people living in that apartment.', 'Adamın sürekli uyarı vermesi, o apartmanda yaşayan insanları endişelendirdi.', 'Le fait que l\'homme donne souvent des avertissements inquiète les personnes vivant dans cet appartement.', 'Dass der Mann oft warnt, beunruhigt die Bewohner dieser Wohnung.', 'Que el hombre a menudo da advertencias preocupa a las personas que viven en ese apartamento.', 'Il fatto che l\'uomo dia spesso avvertimenti preoccupa le persone che vivono in quell\'appartamento.', 'این که مرد اغلب هشدار می دهد، مردم ساکن در آن آپارتمان را نگران می کند', '4'),
(42, 'The doctor asked the patients what they were doing in the office.', 'Doktor hastalara ofiste ne yaptıklarını sordu.', 'Le médecin a demandé aux patients ce qu\'ils faisaient dans le bureau.', 'Der Arzt hat die Patienten gefragt, was sie in der Praxis machen.', 'El médico preguntó a los pacientes qué estaban haciendo en la oficina.', 'Il dottore ha chiesto ai pazienti cosa stessero facendo in studio.', 'دکتر از بیماران پرسید که در مطب چه کار می کنند', '3'),
(43, 'Regardless of the age and gender of workers, we need to treat all of them equally. ', 'İşçilerin yaşına ve cinsiyetine bakılmaksızın, hepsine eşit davranmamız gerekiyor.', 'Indépendamment de l\'âge et du sexe des travailleurs, nous devons tous les traiter de la même manière.', 'Unabhängig von Alter und Geschlecht der Arbeitnehmer müssen wir alle gleich behandeln.', 'Independientemente de la edad y el género de los trabajadores, debemos tratarlos a todos por igual.', 'Indipendentemente dall\'età e dal sesso dei lavoratori, dobbiamo trattarli tutti allo stesso modo.', 'صرف نظر از سن و جنسیت کارگران، ما باید با همه آنها یکسان رفتار کنیم.', '4'),
(44, 'Do you know what my mother says when she hears the words that you say to me? ', 'Bana söylediğin sözleri annem duyduğunda ne der biliyor musun?', 'Sais-tu ce que dit ma mère quand elle entend les mots que tu me dis?', 'Weißt du, was meine Mutter sagt, wenn sie die Worte hört, die du zu mir sagst?', '¿Sabes lo que dice mi madre cuando escucha las palabras que me dices?', 'Sai cosa dice mia madre quando sente le parole che mi dici?', 'میدونی مادرم وقتی حرف هایی که به من میزنی میشنوه چی میگه؟', '4'),
(45, 'It is not nice that you are involved in things which don\'t concern you.', 'Seni ilgilendirmeyen konulara dahil olman hiç hoş değil.', 'Ce n\'est pas bien que tu sois impliqué dans des choses qui ne te concernent pas.', 'Es ist nicht schön, dass Sie in Dinge verwickelt sind, die Sie nichts angehen.', 'No es agradable que estés involucrado en cosas que no te conciernen.', 'Non è bello che tu sia coinvolto in cose che non ti riguardano.', 'خوب نیست که درگیر چیزهایی می شوید که به شما مربوط نیست', '5'),
(46, 'The faults of officials rather than the process of organization need to be defined.', 'Organizasyonun sürecinden ziyade görevlilerin suçunun belirtilmesi gerekiyor.', 'Il faut définir les défauts des officiels plutôt que le processus d\'organisation.', 'Eher die Fehler der Beamten als der Organisationsprozess müssen definiert werden.', 'Es necesario definir las fallas de los funcionarios más que el proceso de organización.', 'Bisogna definire le colpe dei funzionari piuttosto che il processo organizzativo.', 'ایرادات مسئولان به جای فرآیند تشکیلات باید تعریف شود', '5'),
(47, 'We are at the edge of the river now. ', 'Biz şu an ırmak kenarındayız.', 'Nous sommes au bord de la rivière maintenant.', 'Wir sind jetzt am Ufer des Flusses.', 'Estamos en la orilla del río ahora.', 'Siamo sulla riva del fiume ora.', 'ما اکنون در لبه رودخانه هستیم', '2'),
(48, 'He is not a smart man. ', 'Akıllı bir adam değildir.', 'Ce n\'est pas un homme intelligent.', 'Er ist kein kluger Mann.', 'Él no es un hombre inteligente.', 'Non è un uomo intelligente.', 'او مرد باهوشی نیست', '1'),
(49, 'Why are you still here? ', 'Neden hala buradasın?', 'Pourquoi es-tu encore là ?', 'Wieso bist du immer noch da?', '¿Por qué sigues aquí? ', 'Perché sei ancora qui? ', 'چرا هنوز اینجایی؟ ', '2'),
(50, 'This dishes are very tasty and cheap. ', 'Bu yemekler çok lezzetli ve ucuz.', 'Ces plats sont très savoureux et bon marché.', 'Diese Gerichte sind sehr lecker und günstig.', 'Estos platos son muy sabrosos y baratos.', 'Questi piatti sono molto gustosi ed economici.', 'این غذاها بسیار خوشمزه و ارزان هستند', '2'),
(51, 'The love is priceless for people. ', 'Aşk insanlar için paha biçilmezdir.', 'L\'amour n\'a pas de prix pour les gens.', 'Die Liebe ist für die Menschen unbezahlbar.', 'El amor no tiene precio para las personas.', 'L\'amore non ha prezzo per le persone.', 'عشق برای مردم بی ارزش است', '2'),
(52, 'The love is not only priceless for people. ', 'Aşk sadece insanlar için paha biçilmez değildir.', 'L\'amour n\'a pas seulement de prix pour les gens.', 'Die Liebe ist nicht nur für Menschen unbezahlbar.', 'El amor no solo no tiene precio para las personas.', 'L\'amore non è solo inestimabile per le persone.', 'عشق نه تنها برای مردم بی ارزش است', '2'),
(53, 'The love is not only priceless for people. But also it is valuable for animals.', 'Aşk sadece insanlar için paha biçilmez değildir. Aynı zamanda hayvanlar için de değerlidir.', 'L\'amour n\'a pas seulement de prix pour les gens. Mais il est aussi précieux pour les animaux.', 'Die Liebe ist nicht nur für Menschen unbezahlbar. Aber auch für Tiere ist es wertvoll.', 'El amor no sólo no tiene precio para las personas. Pero también es valioso para los animales.', 'L\'amore non è solo inestimabile per le persone. Ma è anche prezioso per gli animali.', 'عشق نه تنها برای مردم بی ارزش است. اما برای حیوانات نیز ارزشمند است', '3'),
(54, 'I don\'t come home on tuesday. ', 'Salı günü eve uğramam.', 'Je ne rentre pas le mardi.', 'Ich komme am Dienstag nicht nach Hause.', 'No vuelvo a casa el martes.', 'Non torno a casa martedì.', 'من سه شنبه به خانه نمی آیم', '2'),
(55, 'All work places close at 12 o\'clock at night. ', 'Bütün iş yerleri gece saat 12\'de kapanır.', 'Tous les lieux de travail ferment à 12 heures du soir.', 'Alle Arbeitsplätze schließen nachts um 12 Uhr.', 'Todos los lugares de trabajo cierran a las 12 de la noche.', 'Tutti i posti di lavoro chiudono alle 12 di notte.', 'همه محل های کار در ساعت 12 شب بسته می شوند', '2'),
(56, 'The people use the soap to wash their hands. ', 'İnsanlar ellerini yıkamak için sabun kullanır.', 'Les gens utilisent le savon pour se laver les mains.', 'Die Leute benutzen die Seife, um sich die Hände zu waschen.', 'La gente usa el jabón para lavarse las manos.', 'La gente usa il sapone per lavarsi le mani.', 'مردم از صابون برای شستن دست های خود استفاده می کنند', '3'),
(57, 'Believe me. ', 'İnan bana.', 'Crois-moi.', 'Glaub mir.', 'Créame. ', 'Mi creda. ', 'باور کن', '1'),
(58, 'Call me back. ', 'Beni geri ara.', 'Rappelle-moi.', 'Ruf mich zurück.', 'Llámame. ', 'Richiamami. ', 'به من زنگ بزن', '1'),
(59, 'Come with me. ', 'Benimle gel', 'Viens avec moi.', 'Komm mit mir.', 'Ven conmigo. ', 'Venga con me. ', 'با من بیا', '1'),
(60, 'Give me a hand. ', 'Bana el uzat', 'Donne-moi un coup de main.', 'Hilf mir.', 'Échame una mano. ', 'Dammi una mano. ', 'دستی به من بده', '1'),
(61, 'Good afternoon ', 'İyi günler', 'Bon après-midi', 'Guten Nachmittag', 'Buenas tardes ', 'Buon pomeriggio ', 'عصر بخیر ', '1'),
(62, 'Good morning ', 'Günaydın', 'Bonjour', 'Guten Morgen', 'Buenos dias ', 'Buon giorno ', 'صبح بخیر ', '1'),
(63, 'Good night ', 'İyi geceler', 'Bonsoir', 'Gute Nacht', 'Buenas noches ', 'Buona Notte ', 'شب بخیر ', '1'),
(64, 'Have a good trip. ', 'İyi yolculuklar', 'Bon voyage.', 'Gute Reise.', 'Ten un buen viaje. ', 'Fai un buon viaggio. ', 'سفر خوبی داشته باشید', '1'),
(65, 'Have a good weekend ', 'İyi hafta sonları', 'Bon week-end', 'Ein schönes Wochenende', 'Tener un buen fin de semana ', 'Passa un buon fine settimana ', 'آخر هفته خوبی داشته باشید ', '1'),
(66, 'I admire you. ', 'Sana hayranım.', 'Je vous admire.', 'Ich bewundere dich.', 'Te admiro. ', 'Ti ammiro. ', 'من تو را تحسین می کنم', '1'),
(67, 'I apologize. ', 'Özür dilerim', 'Je m\'excuse.', 'Ich entschuldige mich.', 'Me disculpo. ', 'Chiedo scusa. ', 'معذرت می خواهم', '1'),
(68, 'I can’t wait. ', 'Bekleyemem.', 'Je ne peux pas attendre.', 'Ich kann es kaum erwarten.', 'No puedo esperar.', 'Non vedo l\'ora.', 'من نمی توانم صبر کنم', '1'),
(69, 'I don’t have time. ', 'Zamanım yok', 'Je n\'ai pas le temps.', 'Ich habe keine Zeit.', 'No tengo tiempo.', 'Non ho tempo.', 'من وقت ندارم', '1'),
(70, 'I don’t agree. ', 'Katılmıyorum', 'Je ne suis pas d\'accord.', 'Ich bin nicht einverstanden.', 'No estoy de acuerdo.', 'Non sono d\'accordo.', 'من موافق نیستم', '1'),
(71, 'I got it. ', 'Anladım / Aldım', 'J\'ai compris.', 'Ich habe es verstanden.', 'Lo tengo. ', 'Capito. ', 'دریافت کردم', '1'),
(72, 'I hate you! ', 'Senden nefret ediyorum', 'Je te déteste!', 'Ich hasse dich!', '¡Te odio! ', 'Ti odio! ', 'ازت متنفرم! ', '1'),
(73, 'I hope so. ', 'Umarım', 'Je l\'espère.', 'Hoffentlich.', 'Eso espero. ', 'Lo spero. ', 'امیدوارم', '1'),
(74, 'I knew it. ', 'Biliyordum', 'Je le savais.', 'Ich wusste es.', 'Lo sabía. ', 'Lo sapevo. ', 'من آن را می دانستم', '1'),
(75, 'I love you. ', 'Seni seviyorum', 'Je vous aime.', 'Ich liebe dich.', 'Te amo. ', 'Ti amo. ', 'دوستت دارم', '1'),
(76, 'I think so. ', 'Sanırım', 'Je pense que oui.', 'Ich glaube schon.', 'Creo que sí. ', 'Credo di si. ', 'من هم اینچنین فکر میکنم', '1'),
(77, 'I would love to. ', 'Çok isterim.', 'J\'aimerais bien.', 'Ich würde gern.', 'Me encantaría. ', 'Mi piacerebbe molto. ', 'من دوست دارم', '1'),
(78, 'I’m busy. ', 'Meşgulüm', 'Je suis occupé.', 'Ich bin beschäftigt.', 'Estoy ocupado. ', 'Sono occupato. ', 'مشغول هستم', '1'),
(79, 'I’m sorry. ', 'Üzgünüm', 'Je suis désolé.', 'Es tut mir Leid.', 'Lo siento. ', 'Mi dispiace. ', 'متاسفم', '1'),
(80, 'I’m tired ', 'Yorgunum', 'Je suis fatigué', 'Ich bin müde', 'Estoy cansado ', 'Sono stanco ', 'خسته ام ', '1'),
(81, 'I’m good. ', 'İyiyim.', 'Je vais bien.', 'Mir geht es gut.', 'Estoy bien. ', 'Sono buono. ', 'من خوبم', '1'),
(82, 'It doesn’t matter ', 'Fark etmez', 'Cela n\'a pas d\'importance', 'Es spielt keine Rolle', 'No importa ', 'Non importa', 'مهم نیست', '1'),
(83, 'Join me. ', 'Katıl bana.', 'Rejoins moi.', 'Begleite mich.', 'Únete a mi. ', 'Unisciti a me. ', 'به من ملحق شو', '1'),
(84, 'Let’s catch up! ', 'Hadi arayı kapatalım', 'Rattrapons-nous !', 'Lass uns das nachholen!', '¡Vamos a ponernos al día!', 'Raggiungiamoci!', 'بیایید پیگیری کنیم!', '1'),
(85, 'Let’s do it! ', 'Hadi yapalım', 'Faisons-le!', 'Machen wir das!', '¡Vamos a hacerlo! ', 'Facciamolo! ', 'بیا انجامش بدهیم!', '1'),
(86, 'Nice to meet you ', 'Tanıştığıma memnun oldum', 'Ravi de vous rencontrer', 'Schön, dich kennenzulernen', 'Encantada de conocerte ', 'Lieto di conoscerti ', 'از ملاقات شما خوشبختم ', '1'),
(87, 'Not yet. ', 'Daha değil', 'Pas encore.', 'Noch nicht.', 'No todavía. ', 'Non ancora. ', 'نه هنوز. ', '1'),
(88, 'See you later. ', 'Sonra görüşürüz', 'À plus tard.', 'Bis später.', 'Te veo luego. ', 'Arrivederci. ', 'بعدا میبینمت. ', '1'),
(89, 'Talk to you tomorrow. ', 'Yarın konuşuruz', 'À demain.', 'Spreche mit dir morgen.', 'Hablamos contigo mañana.', 'Ti parlo domani. ', 'فردا باهات حرف میزنم', '1'),
(90, 'Thank you very much. ', 'Çok teşekkür ederim.', 'Merci beaucoup.', 'Vielen Dank.', 'Muchísimas gracias. ', 'Grazie mille. ', 'بسیار از شما متشکرم', '1'),
(91, 'Your turn. ', 'Senin sıran', 'À ton tour.', 'Du bist dran.', 'Tu turno. ', 'Il tuo turno. ', 'نوبت توست', '1'),
(92, 'Why don\'t you love me?', 'Neden beni sevmiyorsun?', 'Pourquoi tu ne m\'aimes pas ?', 'Warum liebst du mich nicht?', '¿Por qué no me amas?', 'Perché non mi ami?', 'چرا منو دوست نداری؟', '2'),
(93, 'Are you done?', 'Bitirdin mi?', 'As tu fini?', 'Bist du fertig?', '¿Ya terminaste?', 'Hai finito?', 'شما تمام کردید؟', '1'),
(94, 'Are you sure?', 'Emin misin?', 'Êtes-vous sûr?', 'Bist du dir sicher?', '¿Está seguro?', 'Sei sicuro?', 'مطمئنی؟', '1'),
(95, 'Can I ask you something?', 'Sana bir şey sorabilir miyim?', 'Puis-je te demander quelque chose?', 'Darf ich Sie etwas fragen?', '¿Puedo preguntarte algo?', 'Posso chiederti una cosa?', 'میتونم یه چیزی ازت بپرسم؟', '2'),
(96, 'Can you please repeat that?', 'Lütfen tekrar eder misin?', 'Pouvez-vous répéter?', 'Kannst du das bitte wiederholen?', '¿Puede por favor repetir eso?', 'Puoi ripeterlo per favore?', 'میشه لطفا تکرارش کنید؟', '2'),
(97, 'Did you get it?', 'Aldın mı? / Anladın mı?', 'As-tu compris?', 'Hast du es verstanden?', '¿Lo obtuviste?', 'L\'hai preso?', 'گرفتی؟', '1'),
(98, 'Do you need anything?', 'Bir şeye ihtiyacın var mı?', 'As-tu besoin de quelque chose?', 'Brauchst du irgendetwas?', '¿Necesitas algo?', 'Ti serve qualcosa?', 'به چیزی نیاز داری؟', '2'),
(99, 'Do you understand?', 'Anlıyor musun?', 'Comprenez vous?', 'Verstehst du?', '¿Lo entiendes?', 'Capisci?', 'آیا می فهمی؟', '1'),
(100, 'How are you?', 'Nasılsın?', 'Comment allez-vous?', 'Wie geht es dir?', '¿Cómo estás?', 'Come stai?', 'چطور هستید؟', '1'),
(101, 'How do you feel?', 'Ne hissediyorsun?', 'Comment vous sentez-vous?', 'Wie fühlen Sie sich?', '¿Cómo te sientes?', 'Come ti senti?', 'چه احساسی داری؟', '1'),
(102, 'How much is it?', 'Fiyatı ne kadar?', 'Combien ça coûte?', 'Wie viel kostet das?', '¿Cuánto cuesta?', 'Quanto costa?', 'چقدر است؟', '1'),
(103, 'How old are you?', 'Kaç yaşındasın?', 'Quel âge as-tu?', 'Wie alt sind Sie?', '¿Cuantos años tienes?', 'Quanti anni hai?', 'شما چند سال دارید؟', '1'),
(104, 'How was your weekend?', 'Hafta sonun nasıldı?', 'Comment c\'est passé ton week-end?', 'Wie war dein Wochenende?', '¿Cómo estuvo tu fin de semana?', 'Come è stato il tuo fine settimana?', 'آخر هفته ات چطور بود؟', '1'),
(105, 'Is all good?', 'Her şey iyi mi?', 'Est-ce que tout va bien?', 'Ist alles gut?', '¿Todo está bien?', 'Va tutto bene?', 'همه چیز خوب است؟', '1'),
(106, 'Is everything OK?', 'Her şey yolunda mı?', 'Est-ce que tout va bien?', 'Ist alles in Ordnung?', '¿Esta todo bien?', 'È tutto ok?', 'آیا همه چیز خوب است؟', '1'),
(107, 'What are you doing?', 'Ne yapıyorsun?', 'Que faites-vous?', 'Was machst du?', '¿Qué estás haciendo?', 'Cosa stai facendo?', 'چه کار می کنی؟', '1'),
(108, 'What are you talking about?', 'Neyden bahsediyorsun?', 'Qu\'est-ce que tu racontes?', 'Worüber redest du?', '¿De qué estás hablando?', 'Di cosa stai parlando?', 'چی میگی تو؟', '2'),
(109, 'What are you up to?', 'Neler yapıyorsun?', 'Que fais-tu?', 'Was hast du vor?', '¿Qué estás haciendo?', 'Che cosa stai facendo?', 'تو چیکار میکنی؟', '1'),
(110, 'What are your hobbies?', 'Hobilerin neler?', 'Quels sont vos hobbies?', 'Was sind deine Hobbies?', '¿Cuáles son tus aficiones?', 'Quali sono i tuoi hobby?', 'سرگرمی های شما چیست؟', '1'),
(111, 'What did you say?', 'Ne dedin?', 'Qu\'est-ce que vous avez dit?', 'Was hast du gesagt?', '¿Qué dijiste?', 'Cosa hai detto?', 'چی گفتی؟', '1'),
(112, 'What do you need?', 'Neye ihtiyacın var?', 'De quoi avez-vous besoin?', 'Was brauchen Sie?', '¿Que necesitas?', 'Di che cosa hai bisogno?', 'چه چیزی نیاز دارید؟', '1'),
(113, 'What do you think?', 'Ne düşünüyorsun?', 'Qu\'est-ce que tu penses?', 'Was denkst du?', '¿Qué opinas?', 'Cosa ne pensi?', 'شما چی فکر میکنید؟', '1'),
(114, 'What do you want to do?', 'Ne yapmak istersin?', 'Qu\'est-ce que vous voulez faire?', 'Was möchten Sie tun?', '¿Qué es lo que quieres hacer?', 'Cosa vuoi fare?', 'چیکار میخوای بکنی؟', '2'),
(115, 'What do you want?', 'Ne istiyorsun?', 'Qu\'est-ce que tu veux?', 'Was willst du?', '¿Qué quieres?', 'Cosa vuoi?', 'چه چیزی می خواهید؟', '1'),
(116, 'What’s the weather like?', 'Hava nasıl?', 'Quel temps fait-il?', 'Wie ist das Wetter?', '¿Como está el clima?', 'Che tempo fa?', 'آب و هوا چگونه است؟', '1'),
(117, 'What’s your email address?', 'E-posta adresin ne?', 'Quelle est votre adresse e-mail? -', 'Wie ist deine E-Mail-Adresse?', '¿Cuál es tu dirección de correo electrónico?', 'Qual è il tuo indirizzo e-mail?', 'آدرس ایمیل شما چیست؟', '1'),
(118, 'What’s your job?', 'Ne iş yapıyorsun?', 'Quel travail faites vous?', 'Was arbeitest du?', '¿Cuál es tu trabajo?', 'Che lavoro fai?', 'شغل شما چیست؟', '1'),
(119, 'What’s your name?', 'Adın ne?', 'Quel est ton nom?', 'Wie heißen Sie?', '¿Cuál es tu nombre?', 'Come ti chiami?', 'اسمت چیه؟', '1'),
(120, 'What’s your phone number?', 'Telefon numaran ne?', 'Quel est ton numéro de téléphone?', 'Wie ist deine Telefonnummer?', '¿Cuál es tu número de teléfono?', 'Qual\'è il tuo numero di telefono?', 'شماره تلفن شما چیست؟', '1'),
(121, 'What’s going on?', 'Neler oluyor?', 'Que se passe-t-il?', 'Was ist los?', '¿Que esta pasando?', 'Cosa sta succedendo?', 'چه خبر است؟', '1'),
(122, 'Where are you from?', 'Nerelisin?', 'D\'où viens-tu?', 'Woher kommst du?', '¿De dónde eres?', 'Di dove sei?', 'شما اهل کجا هستید؟', '1'),
(123, 'Where are you going?', 'Nereye gidiyorsun?', 'Où allez-vous?', 'Wo gehst du hin?', '¿A dónde vas?', 'Dove stai andando?', 'کجا میری؟', '1'),
(124, 'Where are you?', 'Neredesin?', 'Où êtes-vous?', 'Wo sind Sie?', '¿Dónde estás?', 'Dove sei?', 'شما کجا هستید؟', '1'),
(125, 'Where did you get it?', 'Nereden aldın?', 'Où l\'avez-vous obtenu?', 'Wo hast du es bekommen?', '¿Dónde lo obtuviste?', 'Dove l\'hai preso?', 'از کجا گرفتیش؟', '1'),
(126, 'Where do you live?', 'Nerede yaşıyorsun?', 'Où habitez-vous?', 'Wo leben Sie?', '¿Donde vives?', 'Dove vivi?', 'کجا زندگی می کنید؟', '1'),
(127, 'What’s up?', 'Ne haber?', 'Quoi de neuf?', 'Was ist los?', '¿Que pasa?', 'Che cosa succede?', 'چه خبر؟', '1'),
(128, 'Let’s go!', 'Hadi gidelim.', 'Allons-y!', 'Lass uns gehen!', '¡Vamos!', 'Andiamo!', 'بیا بریم!', '1'),
(129, 'How much is this?', 'Bu ne kadar?', 'Combien ça coûte?', 'Wieviel kostet das?', '¿Cuánto cuesta este?', 'Quanto costa?', 'این چنده؟', '1'),
(130, 'No way!', 'Olamaz!', 'Certainement pas!', 'Auf keinen Fall!', '¡De ninguna manera!', 'Non c\'è modo!', 'به هیچ وجه!', '1'),
(131, 'More or less', 'Aşağı yukarı ', 'Plus ou moins', 'Mehr oder weniger', 'Más o menos', 'Più o meno', 'کم و بیش، تقریبا', '1'),
(132, 'It sounds good', 'Kulağa hoş geliyor ', 'Ça sonne bien', 'Es klingt gut', 'Suena bien', 'Suona bene', 'خوب به نطر میاد', '1'),
(133, 'Guess what?', 'Bil bakalım ne oldu?', 'Devine quoi?', 'Erraten Sie, was?', '¿Adivina qué?', 'Indovina un po?', 'حدس بزن چی شده؟', '1'),
(134, 'Don’t mention', 'Lafını bile etme ', 'Ne pas mentionner', 'Nicht erwähnen', 'No mencionar', 'Non menzionare', 'ذکر نکن', '1'),
(135, 'I don’t mind', 'Umurumda değil ', 'Cela ne me dérange pas', 'Mir egal', 'No me importa', 'Non mi dispiace', 'من مشکلی ندارم', '1'),
(136, 'I will be back soon', 'Kısa sürede geri geleceğim ', 'Je serai bientôt de retour', 'Ich werde bald wiederkommen', 'Volveré pronto', 'Io tornerò presto', 'زود برمیگردم', '2'),
(137, 'If I were you…', 'Senin yerinde olsaydım… ', 'Si j\'étais toi…', 'Wenn ich du wäre…', 'Si yo fuera tú…', 'Se fossi in te…', 'اگر جای تو بودم…', '2'),
(138, 'Give me five!', 'Çak bir beşlik!', 'Tape la!', 'Gib mir fünf!', '¡Dame cinco!', 'Dammi il cinque!', 'بزن قدش!', '1'),
(139, 'Make yourself at home', 'Kendini evindeymiş gibi rahat hisset ', 'Fais comme chez toi', 'Fühlen Sie sich wie zu Hause', 'Siéntete como en casa', 'Faccia come se fosse a casa sua', 'خودت را در خانه بساز', '2'),
(140, 'It’s better than nothing', 'Hiç yoktan iyidir!', 'C\'est mieux que rien', 'Es ist besser als nichts', 'Es mejor que nada', 'Meglio di niente', 'از هیچی بهتره', '2'),
(141, 'Leave me alone', 'Beni yalnız bırak ', 'Laisse-moi tranquille', 'Lass mich alleine', 'Déjame en paz', 'Lasciami solo', 'دست از سرم بردار', '1'),
(142, 'Can you come on Sunday evening?', 'Pazar akşamı gelebilir misin?', 'Pouvez-vous venir dimanche soir ?', 'Kannst du am Sonntagabend kommen?', '¿Puedes venir el domingo por la noche?', 'Puoi venire domenica sera?', 'میشه یکشنبه عصر بیای؟', '2'),
(143, 'Do you deliver on Sundays?', 'Pazar günleri teslimat yapıyor musunuz?', 'Livrez-vous le dimanche ?', 'Liefern Sie sonntags?', 'Haces entregas los domingos?', 'Consegnate la domenica?', 'یکشنبه ها تحویل می گیرید؟', '1'),
(144, 'Have a nice day!', 'İyi günler!', 'Passez une bonne journée!', 'Einen schönen Tag noch!', '¡Que tengas un lindo día!', 'Buona giornata!', 'روز خوبی داشته باشید!', '1'),
(145, 'He quit school last week.', 'Geçen hafta okulu bıraktı.', 'Il a quitté l\'école la semaine dernière.', 'Er hat letzte Woche die Schule verlassen.', 'Dejó la escuela la semana pasada.', 'Ha lasciato la scuola la scorsa settimana.', 'او هفته گذشته مدرسه را ترک کرد', '1'),
(146, 'He watches TV every day.', 'Her gün televizyon izliyor.', 'Il regarde la télévision tous les jours.', 'Er sieht jeden Tag Fernsehen.', 'Él ve la tele cada día.', 'Guarda la TV tutti i giorni.', 'او هر روز تلویزیون تماشا می کند', '1'),
(147, 'How many days are there in a week?', 'Bir haftada kaç gün var?', 'Combien y a-t-il de jours dans une semaine?', 'Wie viele Tage hat eine Woche?', '¿Cuantos días hay en una semana?', 'Quanti giorni ci sono in una settimana?', 'چند روز در هفته وجود دارد؟', '2'),
(148, 'How was your week?', 'Haftan nasıldı?', 'Comment s\'est passée ta semaine?', 'Wie war Ihre Woche?', '¿Cómo estuvo tu semana?', 'Come è stata la tua settimana?', 'هفته ات چطور بود؟', '1'),
(149, 'I am leaving next week.', 'Gelecek hafta ayrılıyorum.', 'Je pars la semaine prochaine.', 'Ich fahre nächste Woche ab.', 'Me voy la próxima semana.', 'Parto la prossima settimana.', 'من هفته آینده می روم', '1'),
(150, 'I cook almost every day.', 'Neredeyse her gün yemek yaparım.', 'Je cuisine presque tous les jours.', 'Ich koche fast jeden Tag.', 'Cocino casi todos los días.', 'Cucino quasi tutti i giorni.', 'من تقریبا هر روز آشپزی می کنم', '1'),
(151, 'I do that every week.', 'Bunu her hafta yapıyorum.', 'Je fais ça chaque semaine.', 'Das mache ich jede Woche.', 'Hago eso todas las semanas.', 'Lo faccio ogni settimana.', 'من هر هفته این کار را انجام می دهم', '1'),
(152, 'I don’t go to school on Sunday.', 'Pazar günü okula gitmiyorum.', 'Je ne vais pas à l\'école le dimanche.', 'Sonntags gehe ich nicht in die Schule.', 'No voy a la escuela los domingos.', 'Non vado a scuola la domenica.', 'من یکشنبه به مدرسه نمی روم', '2'),
(153, 'I don’t work on Sunday.', 'Pazar günü çalışmıyorum.', 'Je ne travaille pas le dimanche.', 'Ich arbeite sonntags nicht.', 'No trabajo los domingos.', 'Non lavoro la domenica.', 'من یکشنبه کار نمی کنم', '1'),
(154, 'I exercise every day.', 'Hergün egzersiz yaparım.', 'Je fais de l\'exercice tous les jours.', 'Ich übe jeden Tag.', 'Hago ejercicio todos los días.', 'Mi esercito ogni giorno.', 'من هرروز ورزش میکنم', '1'),
(155, 'I go to the mosque on Friday.', 'Cuma günü camiye giderim.', 'Je vais à la mosquée vendredi.', 'Ich gehe am Freitag in die Moschee.', 'Voy a la mezquita el viernes.', 'Venerdì vado alla moschea.', 'جمعه میرم مسجد', '1'),
(156, 'I got sick last week.', 'Geçen hafta hastalandım.', 'Je suis tombé malade la semaine dernière.', 'Ich wurde letzte Woche krank.', 'Me enfermé la semana pasada.', 'Mi sono ammalato la scorsa settimana.', 'هفته گذشته مریض شدم', '1'),
(157, 'I remember those days.', 'O günleri hatırlıyorum.', 'Je me souviens de ces jours.', 'Ich erinnere mich an diese Tage.', 'Recuerdo esos días.', 'Ricordo quei giorni.', 'من آن روزها را به یاد دارم', '1'),
(158, 'I run five miles a day.', 'Günde beş mil koşuyorum.', 'Je cours cinq milles par jour.', 'Ich laufe jeden Tag fünf Meilen.', 'Corro cinco millas al día.', 'Corro cinque miglia al giorno.', 'من روزی پنج مایل می دوم', '1'),
(159, 'I swim once a week.', 'Haftada bir yüzüyorum.', 'Je nage une fois par semaine.', 'Ich schwimme einmal die Woche.', 'Nado una vez a la semana.', 'Nuoto una volta alla settimana.', 'من هفته ای یک بار شنا می کنم', '1'),
(160, 'I use it every day.', 'Her gün kullanırım.', 'Je l\'utilise tous les jours.', 'Ich benutze es jeden Tag.', 'Lo uso todos los dias.', 'Lo uso tutti i giorni.', 'من هر روز از این استفاده میکنم', '1'),
(161, 'I was born on Monday.', 'Pazartesi günü doğdum.', 'Je suis né lundi.', 'Ich bin am Montag geboren.', 'Nací el lunes.', 'Sono nato lunedì.', 'من روز دوشنبه به دنیا آمدم', '1'),
(162, 'I work every day except Sunday.', 'Pazar hariç her gün çalışıyorum.', 'Je travaille tous les jours sauf le dimanche.', 'Ich arbeite jeden Tag außer sonntags.', 'Trabajo todos los días excepto los domingos.', 'Lavoro tutti i giorni tranne la domenica.', 'من هر روز به جز یکشنبه کار می کنم', '2'),
(163, 'I work on Sunday.', 'Pazar günü çalışıyorum.', 'Je travaille le dimanche.', 'Ich arbeite am Sonntag.', 'Trabajo el domingo.', 'Lavoro la domenica.', 'من یکشنبه کار می کنم', '1'),
(164, 'I’m free on Sunday.', 'Pazar günü boşum.', 'Je suis libre le dimanche.', 'Am Sonntag habe ich frei.', 'Estoy libre el domingo.', 'Sono libero la domenica.', 'من یکشنبه آزاد هستم', '1'),
(165, 'Is it open on Sunday?', 'Pazar günü açık mı?', 'Est-ce ouvert le dimanche ?', 'Ist sonntags geöffnet?', '¿Está abierto el domingo?', 'È aperto la domenica?', 'آیا یکشنبه باز است؟', '1'),
(166, 'It rained for a week.', 'Bir hafta boyunca yağmur yağdı.', 'Il a plu pendant une semaine.', 'Es hat eine Woche lang geregnet.', 'Llovió durante una semana.', 'Ha piovuto per una settimana.', 'یک هفته باران بارید', '1'),
(167, 'It was a terrible day.', 'Korkunç bir gündü.', 'C\'était une journée terrible.', 'Es war ein schrecklicher Tag.', 'Fue un día terrible.', 'E \'stata una giornata terribile.', 'روز وحشتناکی بود', '1'),
(168, 'It was a very hot day.', 'Çok sıcak bir gündü.', 'C\'était une journée très chaude.', 'Es war ein sehr heißer Tag.', 'Fue un día muy caluroso.', 'Era una giornata molto calda.', 'روز بسیار گرمی بود.', '1'),
(169, 'It’s a new day.', 'Yeni bir gün.', 'C\'est un nouveau jour.', 'Es ist ein neuer Tag.', 'Es un nuevo día.', 'È un nuovo giorno.', 'این یک روز جدید است', '1'),
(170, 'No one go to school on Sunday.', 'Pazar günü okula kimse gitmez.', 'Personne ne va à l\'école le dimanche.', 'Niemand geht sonntags in die Schule.', 'Nadie va a la escuela los domingos.', 'Nessuno va a scuola la domenica.', 'هیچ کس یکشنبه به مدرسه نمی رود', '2'),
(171, 'Saturday is the last day of the week.', 'Cumartesi haftanın son günüdür.', 'Le samedi est le dernier jour de la semaine.', 'Samstag ist der letzte Tag der Woche.', 'El sábado es el último día de la semana.', 'Sabato è l\'ultimo giorno della settimana.', 'شنبه آخرین روز هفته است', '1'),
(172, 'See you next week!', 'Haftaya görüşürüz!', 'À la semaine prochaine!', 'Bis nächste Woche!', '¡Te veo la proxima semana!', 'Ci vediamo la prossima settimana!', 'هفته آینده می بینمت!', '1'),
(173, 'Some keep fast on Thursday.', 'Bazıları perşembe günü oruç tutar.', 'Certains restent rapides le jeudi.', 'Manche halten am Donnerstag fasten.', 'Algunos ayunan el jueves.', 'Alcuni vanno veloci giovedì.', 'برخی روز پنجشنبه را روزه می گیرند', '1'),
(174, 'Sunday follows Saturday.', 'Pazar cumartesiyi takip eder.', 'Le dimanche succède au samedi.', 'Der Sonntag folgt auf den Samstag.', 'El domingo sigue al sábado.', 'La domenica segue il sabato.', 'یکشنبه به دنبال شنبه', '1'),
(175, 'Sunday is a holiday.', 'Pazar tatildir.', 'Le dimanche est un jour férié.', 'Sonntag ist ein Feiertag.', 'El domingo es feriado.', 'La domenica è una festa.', 'یکشنبه تعطیل است', '1'),
(176, 'Sunday is the first day of the week.', 'Pazar haftanın ilk günüdür.', 'Le dimanche est le premier jour de la semaine.', 'Sonntag ist der erste Tag der Woche.', 'El domingo es el primer día de la semana.', 'La domenica è il primo giorno della settimana.', 'یکشنبه اولین روز هفته است', '2'),
(177, 'The day is almost over.', 'Gün neredeyse bitti.', 'La journée est presque finie.', 'Der Tag ist fast vorbei.', 'El día casi ha terminado.', 'La giornata è quasi finita.', 'روز تقریباً به پایان رسیده است', '2'),
(178, 'The first day of the week is Sunday.', 'Haftanın ilk günü Pazar.', 'Le premier jour de la semaine est le dimanche.', 'Der erste Tag der Woche ist Sonntag.', 'El primer día de la semana es el domingo.', 'Il primo giorno della settimana è domenica.', 'اولین روز هفته یکشنبه است', '2'),
(179, 'The school is closed on Sundays.', 'Okul pazar günleri kapalıdır.', 'L\'école est fermée le dimanche.', 'Sonntags ist die Schule geschlossen.', 'La escuela está cerrada los domingos.', 'La scuola è chiusa la domenica.', 'مدرسه یکشنبه ها تعطیل است', '2'),
(180, 'The wind blew all day.', 'Rüzgar bütün gün esti.', 'Le vent a soufflé toute la journée.', 'Der Wind wehte den ganzen Tag.', 'El viento sopló todo el día.', 'Il vento ha soffiato tutto il giorno.', 'تمام روز باد می‌وزید', '2'),
(181, 'There are seven days in a week.', 'Bir haftada yedi gün vardır.', 'Il y a sept jours dans une semaine.', 'Es gibt sieben tage in der Woche.', 'Hay siete días en la semana.', 'Ci sono sette giorni in una settimana.', 'در یک هفته هفت روز وجود دارد', '2'),
(182, 'This happens every day.', 'Bu her gün olur.', 'Cela arrive tous les jours.', 'Das passiert jeden Tag.', 'Esto sucede todos los días.', 'Questo succede ogni giorno.', 'این اتفاق هر روز می افتد', '1'),
(183, 'Today is not your day.', 'Bugün senin günün değil.', 'Ce n\'est pas ton jour aujourd\'hui.', 'Heute ist nicht dein Tag.', 'Hoy no es tu día.', 'Oggi non è il tuo giorno.', 'امروز روز تو نیست', '1'),
(184, 'Tomorrow is Sunday.', 'Yarın pazar.', 'Demain c\'est dimanche.', 'Morgen ist Sonntag.', 'Mañana es domingo.', 'Domani è domenica.', 'فردا یکشنبه است', '1'),
(185, 'We never work on Sunday.', 'Pazar günleri asla çalışmıyoruz.', 'Nous ne travaillons jamais le dimanche.', 'Wir arbeiten nie sonntags.', 'Nunca trabajamos los domingos.', 'Non lavoriamo mai la domenica.', 'ما هرگز یکشنبه کار نمی کنیم', '1'),
(186, 'We’ll meet on Sunday.', 'Pazar günü buluşacağız.', 'Nous nous retrouverons dimanche.', 'Wir treffen uns am Sonntag.', 'Nos encontraremos el domingo.', 'Ci incontreremo domenica.', 'یکشنبه همدیگر را ملاقات خواهیم کرد', '1'),
(187, 'What a day!', 'Ne gün ama!', 'Quelle journée!', 'Was für ein Tag!', '¡Que dia!', 'Che giornata!', 'چه روزی!', '1'),
(188, 'What a terrible day!', 'Ne berbat bir gün!', 'Quelle terrible journée !', 'Was für ein schrecklicher Tag!', '¡Que terrible día!', 'Che giornata terribile!', 'چه روز وحشتناکی!', '1'),
(189, 'What did you do last Sunday?', 'Geçen pazar ne yaptın?', 'Qu\'as-tu fais dimanche dernier?', 'Was hast du letzten Sonntag gemacht?', '¿Qué hiciste el domingo pasado?', 'Cosa hai fatto domenica scorsa?', 'یکشنبه گذشته چه کردی؟', '2'),
(190, 'What do you do on Sundays?', 'Pazar günleri ne yaparsın?', 'Qu\'est ce que tu fais le dimanche?', 'Was tust du an Sonntagen?', '¿Que haces los domingos?', 'Cosa fai di domenica?', 'یکشنبه ها چیکار میکنی؟', '2'),
(191, 'Yesterday was Sunday.', 'Dün pazardı.', 'Hier c\'était dimanche.', 'Gestern war Sonntag.', 'Ayer fue domingo.', 'Ieri era domenica.', 'دیروز یکشنبه بود', '1'),
(192, 'Marie is the person who is taking over my job next month.', 'Marie, gelecek ay işimi devralacak kişi.', 'Marie est la personne qui reprend mon travail le mois prochain.', 'Marie ist die Person, die nächsten Monat meinen Job übernimmt.', 'Marie es la persona que se hará cargo de mi trabajo el próximo mes.', 'Marie è la persona che prenderà il mio lavoro il prossimo mese.', 'ماری فردی است که ماه آینده شغل من را بر عهده می گیرد', '4'),
(193, 'I couldn\'t imagine how I would be able to find the courage to leave.', 'Ayrılmak için cesareti nasıl bulacağımı hayal bile edemiyordum.', 'Je ne pouvais pas imaginer comment je pourrais trouver le courage de partir.', 'Ich konnte mir nicht vorstellen, wie ich den Mut finden sollte, zu gehen.', 'No podía imaginar cómo sería capaz de encontrar el coraje para irme.', 'Non riuscivo a immaginare come avrei potuto trovare il coraggio di partire.', 'نمی‌توانستم تصور کنم که چگونه می‌توانم شهامت ترک را پیدا کنم.', '4'),
(194, 'He really can\'t work out where he has to go to get the information he needs.', 'İhtiyacı olan bilgiyi almak için nereye gitmesi gerektiğini gerçekten çözemiyor.', 'Il ne sait vraiment pas où il doit aller pour obtenir les informations dont il a besoin.', 'Er weiß wirklich nicht, wohin er gehen muss, um die Informationen zu bekommen, die er braucht.', 'Realmente no sabe dónde tiene que ir para obtener la información que necesita.', 'Non riesce davvero a capire dove deve andare per ottenere le informazioni di cui ha bisogno.', 'او واقعاً نمی تواند به جایی برسد که باید برای به دست آوردن اطلاعات مورد نیازش مراجعه کند.', '4'),
(195, 'The person with whom you should be registering your complaint is the manager, but he\'s unavailable at the moment.', 'Şikayetinizi kaydetmeniz gereken kişi yöneticidir, ancak şu anda müsait değil.', 'La personne auprès de laquelle vous devez déposer votre plainte est le responsable, mais il n\'est pas disponible pour le moment.', 'Die Person, bei der Sie Ihre Beschwerde einreichen sollten, ist der Manager, aber er ist im Moment nicht verfügbar.', 'La persona con la que debe registrar su queja es el gerente, pero no está disponible en este momento.', 'La persona con cui dovresti registrare il tuo reclamo è il manager, ma al momento non è disponibile.', 'شخصی که باید شکایت خود را با او ثبت کنید مدیر است، اما در حال حاضر در دسترس نیست', '4'),
(196, 'Damn! The laptop! That\'s what I meant to give him before he left.', 'Lanet olsun! Dizüstü bilgisayar! Gitmeden önce ona vermek istediğim buydu.', 'Condamner! Le pc portable! C\'est ce que je voulais lui donner avant qu\'il parte.', 'Verdammt! Der Laptop! Das wollte ich ihm geben, bevor er ging.', '¡Maldita sea! ¡El portatil! Eso es lo que quise darle antes de que se fuera.', 'Dannazione! Il portatile! Questo è quello che intendevo dargli prima che se ne andasse.', 'لعنتی! لپ تاپ! این چیزی بود که می خواستم قبل از رفتن به او بدهم', '4'),
(197, 'I\'ve got a week to finish this, which is just about long enough.', 'Bunu bitirmek için bir haftam var, bu da yeterince uzun.', 'J\'ai une semaine pour finir ça, ce qui est à peu près assez long.', 'Ich habe eine Woche Zeit, um das fertigzustellen, was gerade lang genug ist.', 'Tengo una semana para terminar esto, que es casi suficiente.', 'Ho una settimana per finire questo, che è abbastanza lungo.', 'من یک هفته فرصت دارم تا این کار را تمام کنم، که تقریباً به اندازه کافی طولانی است', '4'),
(198, 'In 1902 the parishioners of the Church of San Giovanni Battista near Padua decided their organ needing repairing.', '1902\'de Padua yakınlarındaki San Giovanni Battista Kilisesi\'nin cemaat üyeleri, organlarının onarılması gerektiğine karar verdiler.', 'En 1902, les paroissiens de l\'église de San Giovanni Battista près de Padoue décidèrent que leur orgue avait besoin d\'être réparé.', '1902 entschieden die Gemeindemitglieder der Kirche San Giovanni Battista in der Nähe von Padua, dass ihre Orgel repariert werden musste.', 'En 1902, los feligreses de la iglesia de San Giovanni Battista, cerca de Padua, decidieron que su órgano necesitaba reparación.', 'Nel 1902 i parrocchiani della Chiesa di San Giovanni Battista vicino a Padova decisero di riparare il loro organo.', 'در سال 1902، اعضای کلیسای سن جیووانی باتیستا در نزدیکی پادوآ تصمیم گرفتند اندام خود را تعمیر کنند', '5');
INSERT INTO `content1` (`id`, `en`, `tr`, `fr`, `de`, `es`, `it`, `fa`, `level`) VALUES
(199, 'To raise their money, they sold an old terracotta relief of the Madonna and Child.', 'Paralarını toplamak için Madonna ve Child\'ın eski bir pişmiş toprak kabartmasını sattılar.', 'Pour réunir leur argent, ils ont vendu un ancien relief en terre cuite de la Vierge à l\'Enfant.', 'Um ihr Geld aufzubringen, verkauften sie ein altes Terrakotta-Relief der Madonna mit Kind.', 'Para recaudar dinero, vendieron un antiguo relieve de terracota de la Virgen y el Niño.', 'Per raccogliere i loro soldi, vendettero un antico rilievo in terracotta della Madonna col Bambino.', 'آنها برای جمع آوری پول خود، یک نقش برجسته سفالی قدیمی از مدونا و کودک را فروختند', '5'),
(200, 'Covered in dirt and chip paint, it looked like thousands of unattributed carvings found throughout Italy.', 'Kir ve talaş boyayla kaplı, İtalya\'da bulunan binlerce ilişkilendirilmemiş oymaya benziyordu.', 'Couvert de saleté et de peinture écaillée, il ressemblait à des milliers de sculptures non attribuées trouvées dans toute l\'Italie.', 'Bedeckt mit Schmutz und abgesplitterter Farbe sah es aus wie Tausende von nicht zugeordneten Schnitzereien, die in ganz Italien gefunden wurden.', 'Cubierto de suciedad y pintura descascarada, parecía miles de tallas no atribuidas encontradas en toda Italia.', 'Coperto di sporco e vernice scheggiata, sembravano migliaia di intagli non attribuiti trovati in tutta Italia.', 'پوشیده از خاک و رنگ خرد شده، به نظر می رسد هزاران حکاکی بدون منسوب در سرتاسر ایتالیا پیدا شده است', '5'),
(201, 'Today their descendants are probable regretting that decision.', 'Bugün onların torunları muhtemelen bu karardan pişmanlık duyuyorlar.', 'Aujourd\'hui, leurs descendants regrettent probablement cette décision.', 'Heute werden ihre Nachkommen diese Entscheidung wahrscheinlich bereuen.', 'Hoy es probable que sus descendientes se arrepientan de esa decisión.', 'Oggi è probabile che i loro discendenti si pentano di quella decisione.', 'امروز فرزندان آنها احتمالاً از این تصمیم پشیمان شده اند.', '5'),
(202, 'Ayşe who saw the man that adjusted to level of the volume stood up suddenly.', 'Sesin düzeyini ayarlayan adamı gören Ayşe bir anda ayağa kalktı.', 'Ayşe qui a vu l\'homme qui s\'est ajusté au niveau du volume s\'est levé soudainement.', 'Ayşe, die den Mann sah, der die Lautstärke eingestellt hatte, stand plötzlich auf.', 'Ayşe, que vio al hombre que se ajustó al nivel del volumen, se puso de pie de repente.', 'Ayşe, chi ha visto l\'uomo che si è adattato al livello del volume si è alzato all\'improvviso.', 'عایشه که مردی را دید که به سطح صدا تنظیم شده بود ناگهان از جایش بلند شد', '5'),
(203, 'Have you ever seen the crocodile that eats the human? I haven\'t seen in my life.', 'Siz hiç insan yiyen timsah gördünüz mü? Ben hayatım boyunca görmedim.', 'Avez-vous déjà vu le crocodile qui mange l\'humain ? Je n\'ai pas vu de ma vie.', 'Hast du jemals das Krokodil gesehen, das den Menschen frisst? Ich habe nicht in meinem Leben gesehen.', '¿Alguna vez has visto al cocodrilo que se come al humano? no he visto en mi vida.', 'Hai mai visto il coccodrillo che mangia l\'umano? Non l\'ho visto in vita mia.', 'آیا تا به حال تمساح را دیده اید که انسان را می خورد؟ من در زندگی ام ندیده ام', '5'),
(204, 'As soon as the cinema actors came on the stage, everyone started to clap.', 'Sinema oyuncuları sahneye gelir gelmez herkes onları alkışlamaya başladı.', 'Dès que les acteurs du cinéma sont montés sur scène, tout le monde s\'est mis à applaudir.', 'Sobald die Kinoschauspieler die Bühne betraten, fingen alle an zu klatschen.', 'Tan pronto como los actores de cine subieron al escenario, todos comenzaron a aplaudir.', 'Non appena gli attori del cinema sono saliti sul palco, tutti hanno iniziato ad applaudire.', 'به محض اینکه بازیگران سینما روی صحنه آمدند، همه شروع کردند به کف زدن', '5'),
(205, 'She went out instead of listening to teacher.', 'Öğretmeni dinlemek yerine dışarı çıktı.', 'Elle est sortie au lieu d\'écouter le professeur.', 'Sie ging aus, anstatt dem Lehrer zuzuhören.', 'Ella salió en lugar de escuchar al maestro.', 'È uscita invece di ascoltare l\'insegnante.', 'او به جای گوش دادن به معلم بیرون رفت', '2'),
(206, 'Even though i saw you, you didn\'t look at me.', 'Seni görmeme rağmen bana bakmadın.', 'Même si je t\'ai vu, tu ne m\'as pas regardé.', 'Obwohl ich dich gesehen habe, hast du mich nicht angesehen.', 'Aunque te vi, no me miraste.', 'Anche se ti ho visto, non mi hai guardato.', 'با وجود اینکه من تو را دیدم، تو به من نگاه نکردی', '2'),
(207, 'I especially liked your thoughts.', 'Özellikle düşüncelerine bayıldım.', 'J\'ai particulièrement aimé vos pensées.', 'Deine Gedanken haben mir besonders gut gefallen.', 'Me gustaron especialmente tus pensamientos.', 'Mi sono piaciuti particolarmente i tuoi pensieri.', 'من به خصوص افکار شما را دوست داشتم', '2'),
(208, 'When you came home, i will be waiting for you.', 'Eve geldiğinde, seni bekliyor olacağım.', 'Quand tu rentreras à la maison, je t\'attendrai.', 'Wenn du nach Hause kommst, werde ich auf dich warten.', 'Cuando llegues a casa, te estaré esperando.', 'Quando torni a casa, ti aspetterò.', 'وقتی به خانه آمدی، من منتظرت خواهم بود', '3'),
(209, 'All documents were prepared. The contract is going to be signed tomorrow.', 'Bütün belgeler hazırlandı. Yarın sözleşme imzalanacak.', 'Tous les documents ont été préparés. Le contrat sera signé demain.', 'Alle Unterlagen wurden vorbereitet. Morgen soll der Vertrag unterschrieben werden.', 'Todos los documentos fueron preparados. El contrato se va a firmar mañana.', 'Tutti i documenti sono stati preparati. Il contratto verrà firmato domani.', 'همه مدارک آماده شد، قرار است فردا قرارداد امضا شود', '3'),
(210, 'You made the biggest mistake by going a bike.', 'Bisikletle giderek en büyük hatayı yaptın.', 'Vous avez fait la plus grosse erreur en faisant du vélo.', 'Du hast den größten Fehler gemacht, als du Fahrrad gefahren bist.', 'Cometiste el mayor error yendo en bicicleta.', 'Hai commesso l\'errore più grande andando in bicicletta.', 'شما با دوچرخه سواری بزرگترین اشتباه را مرتکب شدید', '3'),
(211, 'Your body lost much water, so you became ill all the time.', 'Vücudun çok su kaybetti, bu yüzden sürekli hasta oldun.', 'Votre corps a perdu beaucoup d\'eau, alors vous êtes tombé malade tout le temps.', 'Dein Körper verlor viel Wasser, so dass du ständig krank wurdest.', 'Tu cuerpo perdía mucha agua, por lo que te enfermabas todo el tiempo.', 'Il tuo corpo ha perso molta acqua, quindi ti sei ammalato tutto il tempo.', 'بدن شما آب زیادی از دست داده است، بنابراین شما همیشه بیمار شده اید', '3'),
(212, 'A new one was ordered for the damaged part of the ship.', 'Geminin bozulan parçası için yeni bir sipariş verildi. ', 'Un nouveau a été commandé pour la partie endommagée du navire.', 'Für den beschädigten Teil des Schiffes wurde ein neues bestellt.', 'Se ordenó uno nuevo para la parte dañada del barco.', 'Ne è stato ordinato uno nuovo per la parte danneggiata della nave.', 'یک دستگاه جدید برای قسمت آسیب دیده کشتی سفارش داده شد.', '3'),
(213, 'Nobody takes responsibilty because more mistakes have been made until now.', 'Şu ana kadar fazla hata yapıldığından dolayı kimse sorumluluk almıyor.', 'Personne ne prend la responsabilité car plus d\'erreurs ont été commises jusqu\'à présent.', 'Niemand übernimmt die Verantwortung, weil bis jetzt mehr Fehler gemacht wurden.', 'Nadie se hace responsable porque hasta ahora se han cometido más errores.', 'Nessuno si assume la responsabilità perché fino ad ora sono stati commessi più errori.', 'هیچ کس مسئولیتی را بر عهده نمی گیرد زیرا تا کنون اشتباهات بیشتری مرتکب شده است.', '3'),
(214, 'While all employees were entering the room, the manager was standing up.', 'Tüm çalışanlar odaya girerken, müdür ayakta duruyordu.', 'Alors que tous les employés entraient dans la salle, le directeur se levait.', 'Während alle Mitarbeiter den Raum betraten, stand der Manager auf.', 'Mientras todos los empleados entraban en la habitación, el gerente se puso de pie.', 'Mentre tutti i dipendenti stavano entrando nella stanza, il manager si è alzato in piedi.', 'در حالی که همه کارمندان وارد اتاق می شدند، مدیر ایستاده بود.', '3'),
(215, 'The man scarcely went into the bank, when he came out. Anybody didn\'t understand anything.', 'Adamın bankaya girmesiyle çıkması bir oldu. Kimse bir şey anlamadı.', 'L\'homme entra à peine dans la banque, qu\'il en sortit. Personne n\'a rien compris.', 'Der Mann ging kaum in die Bank, als er herauskam. Jeder hat nichts verstanden.', 'Apenas entró el hombre en el banco, cuando salió. Alguien no entendió nada.', 'L\'uomo è appena entrato in banca, quando è uscito. Nessuno ha capito niente.', 'وقتی بیرون آمد، مرد به سختی وارد بانک شد. کسی چیزی نفهمید', '4'),
(216, 'Some things that are defined as badly may be better than the other people.', 'Kötü olarak tanımlanan bazı şeyler diğer insanlara göre iyi olabilir.', 'Certaines choses qui sont définies comme mauvaises peuvent être meilleures que les autres.', 'Einige Dinge, die als schlecht definiert sind, können besser sein als die anderen Menschen.', 'Algunas cosas que se definen como malas pueden ser mejores que otras personas.', 'Alcune cose che sono definite male possono essere migliori delle altre persone.', 'برخی چیزهایی که بد تعریف می شوند ممکن است بهتر از افراد دیگر باشند', '4'),
(217, 'The point where all processes start at a factory is defined as production.', 'Bir fabrikada tüm süreçlerin başladığı nokta üretim olarak tanımlanır.', 'Le point où tous les processus commencent dans une usine est défini comme la production.', 'Der Punkt, an dem alle Prozesse in einer Fabrik beginnen, wird als Produktion definiert.', 'El punto donde comienzan todos los procesos en una fábrica se define como producción.', 'Il punto in cui tutti i processi iniziano in una fabbrica è definito come produzione.', 'نقطه ای که در آن تمام فرآیندها در یک کارخانه شروع می شود به عنوان تولید تعریف می شود', '4'),
(218, 'The most fundamental way to solve a problem is to forecast the source of it.', 'Bir problemi çözmenin en temel yolu onun kaynağını tahmin etmektir.', 'La façon la plus fondamentale de résoudre un problème est d\'en prévoir la source.', 'Der grundlegendste Weg, ein Problem zu lösen, besteht darin, die Ursache vorherzusagen.', 'La forma más fundamental de resolver un problema es pronosticar su origen.', 'Il modo più fondamentale per risolvere un problema è prevederne l\'origine.', 'بنیادی ترین راه برای حل یک مشکل، پیش بینی منبع آن است', '4'),
(219, 'Your sister was in İstanbul two days ago.', 'Kız kardeşin 2 gün önce İstanbul\'daydı.', 'Votre sœur était à Istanbul il y a deux jours.', 'Ihre Schwester war vor zwei Tagen in Istanbul.', 'Tu hermana estuvo en Estambul hace dos días.', 'Tua sorella era a Istanbul due giorni fa.', 'خواهرت دو روز پیش در استانبول بود', '1'),
(220, 'You are with me together beacuse of you are a very good boy.', 'Çok iyi bir çocuk olduğundan dolayı benimle birliktesin.', 'Tu es avec moi ensemble parce que tu es un très bon garçon.', 'Du bist mit mir zusammen, weil du ein sehr guter Junge bist.', 'Estás conmigo juntos porque eres un chico muy bueno.', 'Sei con me insieme perché sei un bravissimo ragazzo.', 'تو با من هستی چون پسر خیلی خوبی هستی', '2'),
(221, 'The earth is larger and warmer than the Moon.', 'Dünya, Ay\'dan daha büyük ve sıcaktır.', 'La Terre est plus grande et plus chaude que la Lune.', 'Die Erde ist größer und wärmer als der Mond.', 'La Tierra es más grande y más cálida que la Luna.', 'La terra è più grande e più calda della Luna.', 'زمین بزرگتر و گرمتر از ماه است', '2'),
(222, 'The taste of grape is better than it\'s shape.', 'Üzümün şeklinden ziyade tadı daha güzel.', 'Le goût du raisin est meilleur que sa forme.', 'Der Geschmack der Traube ist besser als ihre Form.', 'El sabor de la uva es mejor que su forma.', 'Il sapore dell\'uva è migliore della sua forma.', 'مزه انگور بهتر از شکل آن است', '2'),
(223, 'Dark clouds are very scary, so I am at my home.', 'Kara bulutlar çok ürkütücü, bu yüzden evimdeyim.', 'Les nuages sombres sont très effrayants, alors je suis chez moi.', 'Dunkle Wolken sind sehr beängstigend, also bin ich bei mir zu Hause.', 'Las nubes oscuras dan mucho miedo, así que estoy en mi casa.', 'Le nuvole scure sono molto spaventose, quindi sono a casa mia.', 'ابرهای تاریک بسیار ترسناک هستند، بنابراین من در خانه خود هستم', '2'),
(224, 'If you are at home or not is not important.', 'Evde olup olmadığın önemli değil.', 'Que vous soyez chez vous ou non n\'est pas important.', 'Ob Sie zu Hause sind oder nicht, ist nicht wichtig.', 'Si estás en casa o no, no es importante.', 'Se sei a casa o no non è importante.', 'اگر در خانه هستید یا نه مهم نیست', '1'),
(225, 'However beautiful you are, i don\'t love you.', 'Ne kadar güzel olsan da seni sevmiyorum.', 'Aussi belle que tu sois, je ne t\'aime pas.', 'So schön du auch bist, ich liebe dich nicht.', 'Por muy hermosa que seas, no te amo.', 'Per quanto bella tu sia, non ti amo.', 'هرچقدر هم زیبا باشی، من تو را دوست ندارم', '2'),
(226, 'When the train arrived in Ankara, it was 12 o\'clock.', 'Tren Ankara\'ya vardığında saat 12\'ydi.', 'Lorsque le train est arrivé à Ankara, il était midi.', 'Als der Zug in Ankara ankam, war es 12 Uhr.', 'Cuando el tren llegó a Ankara, eran las 12 en punto.', 'Quando il treno è arrivato ad Ankara, erano le 12.', 'وقتی قطار به آنکارا رسید، ساعت 12 بود', '2'),
(227, 'Tropical areas constantly rain.', 'Tropikal bölgeler sürekli olarak yağış alır.', 'Les zones tropicales pleuvent constamment.', 'Tropische Gebiete regnen ständig.', 'Las áreas tropicales llueven constantemente.', 'Le aree tropicali piovono costantemente.', 'مناطق گرمسیری دائما باران می بارد', '2'),
(228, 'Because the sun is extremely effective, the spacecrafts can\'t even get close to it.', 'Güneş aşırı etkili olduğu için, uzay araçları yanına bile yaklaşamıyor.', 'Parce que le soleil est extrêmement efficace, les vaisseaux spatiaux ne peuvent même pas s\'en approcher.', 'Da die Sonne extrem effektiv ist, können die Raumschiffe ihr nicht einmal nahe kommen.', 'Debido a que el sol es extremadamente efectivo, las naves espaciales ni siquiera pueden acercarse a él.', 'Poiché il sole è estremamente efficace, i veicoli spaziali non possono nemmeno avvicinarsi ad esso.', 'از آنجایی که خورشید بسیار موثر است، فضاپیماها حتی نمی توانند به آن نزدیک شوند.', '3'),
(229, 'Among the countries, especially Germany stands out with it\'s richness.', 'Ülkeler arasında özellikle Almanya zenginliği ile öne çıkıyor.', 'Parmi les pays, l\'Allemagne en particulier se distingue par sa richesse.', 'Unter den Ländern sticht besonders Deutschland mit seinem Reichtum hervor.', 'Entre los países, especialmente Alemania se destaca por su riqueza.', 'Tra i paesi, in particolare la Germania si distingue per la sua ricchezza.', 'در میان کشورها، به ویژه آلمان با غنای خود برجسته است', '3'),
(230, 'Besides the speed of the cheetah, the sight ability of it is also very suitable in order to catching it\'s hunt.', 'Çita\'nın hızının yanı sıre görme yeteneği de avını yakalamak için çok uygundur.', 'Outre la vitesse du guépard, sa capacité de vision est également très appropriée pour attraper sa chasse.', 'Neben der Schnelligkeit des Geparden ist auch sein Sehvermögen sehr geeignet, um seine Jagd zu fangen.', 'Además de la velocidad del guepardo, la capacidad de visión también es muy adecuada para atrapar su caza.', 'Oltre alla velocità del ghepardo, anche la sua capacità visiva è molto adatta per catturare la sua caccia.', 'علاوه بر سرعت یوزپلنگ، قدرت بینایی آن نیز برای صید شکار بسیار مناسب است', '3'),
(231, 'To see smiling people encourages me.', 'Güleryüzlü insanları görmek bana cesaret veriyor.', 'Voir des gens souriants m\'encourage.', 'Lächelnde Menschen zu sehen, ermutigt mich.', 'Ver a la gente sonriendo me anima.', 'Vedere persone sorridenti mi incoraggia.', 'دیدن افراد خندان مرا تشویق می کند', '3'),
(232, 'When the boiling of the water is calculated we can learn the height of the region.', 'Suyun kaynama noktası hesaplandığında bölgenin yüksekliğini öğrenebiliriz.', 'Lorsque l\'ébullition de l\'eau est calculée, nous pouvons connaître la hauteur de la région.', 'Wenn das Sieden des Wassers berechnet wird, können wir die Höhe der Region erfahren.', 'Cuando se calcula la ebullición del agua podemos conocer la altura de la región.', 'Quando viene calcolata l\'ebollizione dell\'acqua, possiamo imparare l\'altezza della regione.', 'زمانی که میزان جوشش آب محاسبه شود می توانیم ارتفاع منطقه را یاد بگیریم', '3'),
(233, 'She talks so nicely that i agree with everything that she says.', 'O kadar güzel konuşuyor ki, dediği her şeye katılıyorum.', 'Elle parle si bien que je suis d\'accord avec tout ce qu\'elle dit.', 'Sie redet so nett, dass ich allem zustimme, was sie sagt.', 'Habla tan bien que estoy de acuerdo con todo lo que dice.', 'Parla così bene che sono d\'accordo con tutto ciò che dice.', 'او آنقدر خوب صحبت می کند که من با همه چیزهایی که او می گوید موافقم', '3'),
(234, 'If you want to learn some things about emergency aid, join a course.', 'Acil yardım konusunda bir şeyler öğrenmek istiyorsan bir kursa katıl!', 'Si vous voulez apprendre des choses sur l\'aide d\'urgence, rejoignez un cours.', 'Wenn Sie etwas über Nothilfe lernen möchten, nehmen Sie an einem Kurs teil.', 'Si quieres aprender algunas cosas sobre la ayuda de emergencia, únete a un curso.', 'Se vuoi imparare alcune cose sugli aiuti di emergenza, iscriviti a un corso.', 'اگر می خواهید چیزهایی در مورد کمک های اضطراری بیاموزید، به یک دوره آموزشی بپیوندید', '3'),
(235, 'Thanks to this tool that the scientist invented will be able to define everyone\'s faces.', 'Bilim insanının icat ettiği bu alet sayesinde herkesin yüzü tanımlanabilecek.', 'Grâce à cet outil que le scientifique a inventé, il pourra définir les visages de chacun.', 'Dank dieses Tools, das der Wissenschaftler erfunden hat, wird er in der Lage sein, die Gesichter aller zu definieren.', 'Gracias a esta herramienta que inventó el científico podrá definir los rostros de todos.', 'Grazie a questo strumento inventato dallo scienziato sarà in grado di definire i volti di tutti.', 'به لطف این ابزاری که این دانشمند اختراع کرد، می‌تواند چهره همه را مشخص کند.', '4'),
(236, 'Once the cold war started, US and Russia often faced.', 'Soğuk savaş başladığından itibaren ABD ve Rusya çoğu zaman karşı karşıya geldi.', 'Une fois la guerre froide commencée, les États-Unis et la Russie se sont souvent affrontés.', 'Als der Kalte Krieg begann, standen sich die USA und Russland oft gegenüber.', 'Una vez que comenzó la guerra fría, Estados Unidos y Rusia se enfrentaron a menudo.', 'Una volta iniziata la guerra fredda, gli Stati Uniti e la Russia si sono spesso trovati di fronte.', 'زمانی که جنگ سرد شروع شد، ایالات متحده و روسیه اغلب با آن مواجه بودند', '3'),
(237, 'If the impact of global warming continues like that, the drought is gradually increasing.', 'Küresel ısınmanın etkisi böyle devam ederse, kuraklık gitgide artacak.', 'Si l\'impact du réchauffement climatique continue comme ça, la sécheresse augmente progressivement.', 'Wenn die Auswirkungen der globalen Erwärmung so weitergehen, nimmt die Dürre allmählich zu.', 'Si el impacto del calentamiento global continúa así, la sequía aumentará gradualmente.', 'Se l\'impatto del riscaldamento globale continua così, la siccità aumenta gradualmente.', 'اگر تاثیر گرمایش جهانی به همین منوال ادامه یابد، خشکسالی به تدریج در حال افزایش است', '3'),
(238, 'I had to work in Ankara between 1990 and 1991.', '1990 ve 1991 yılları arası Ankara\'da çalışmak zorundaydım.', 'J\'ai dû travailler à Ankara entre 1990 et 1991.', 'Zwischen 1990 und 1991 musste ich in Ankara arbeiten.', 'Tuve que trabajar en Ankara entre 1990 y 1991.', 'Ho dovuto lavorare ad Ankara tra il 1990 e il 1991.', 'بین سال های 1990 تا 1991 مجبور شدم در آنکارا کار کنم', '3'),
(239, 'Some animals appear as if they are dead to be able to camouflage.', 'Bazı hayvanlar kamufle olabilmek için ölmüş gibi görünürler.', 'Certains animaux apparaissent comme s\'ils étaient morts pour pouvoir se camoufler.', 'Manche Tiere wirken tot, um sich tarnen zu können.', 'Algunos animales parecen como si estuvieran muertos para poder camuflarse.', 'Alcuni animali sembrano morti per potersi mimetizzare.', 'برخی از حیوانات طوری به نظر می رسند که انگار مرده اند تا بتوانند استتار کنند', '4'),
(240, 'Unless the people get along well with eachother, the world will never be a good home.', 'İnsanlar birbirleri ile iyi geçinmedikçe, dünya asla güzel bir ev olmayacak.', 'À moins que les gens ne s\'entendent bien les uns avec les autres, le monde ne sera jamais un bon foyer.', 'Wenn die Menschen nicht gut miteinander auskommen, wird die Welt niemals ein gutes Zuhause sein.', 'A menos que las personas se lleven bien entre sí, el mundo nunca será un buen hogar.', 'A meno che le persone non vadano d\'accordo tra loro, il mondo non sarà mai una buona casa.', 'تا زمانی که مردم با یکدیگر به خوبی کنار بیایند، جهان هرگز خانه خوبی نخواهد بود', '4'),
(241, 'Due to the unexpected rain, all process that was planned had to be cancelled.', 'Beklenmeyen yağmurdan dolayı, planlanan tüm süreç iptal edilmek zorunda kaldı.', 'En raison de la pluie inattendue, tous les processus prévus ont dû être annulés.', 'Aufgrund des unerwarteten Regens mussten alle geplanten Prozesse abgesagt werden.', 'Debido a la lluvia inesperada, todo el proceso que estaba planeado tuvo que ser cancelado.', 'A causa della pioggia inaspettata, tutto il processo pianificato è stato annullato.', 'به دلیل بارندگی غیرمنتظره، تمام مراحلی که برنامه ریزی شده بود باید لغو می شد', '4'),
(242, 'Whenever we visit İstanbul, we are welcomed by Galata Tower with it\'s smiling face.', 'Her İstanbul\'u ziyaret ettiğimizde, güleryüzü ile Galata Kulesi tarafından karşılanırız.', 'Chaque fois que nous visitons Istanbul, nous sommes accueillis par la tour de Galata avec son visage souriant.', 'Wann immer wir İstanbul besuchen, werden wir vom Galataturm mit seinem lächelnden Gesicht begrüßt.', 'Cada vez que visitamos Estambul, la Torre de Gálata nos da la bienvenida con su rostro sonriente.', 'Ogni volta che visitiamo Istanbul, veniamo accolti dalla Torre di Galata con la sua faccia sorridente.', 'هر زمان که از استانبول بازدید می کنیم، برج گالاتا با چهره ای خندان از ما استقبال می کند', '5'),
(243, 'Given that the people forget some things which they promise, you must know that you don\'t need to trust anyone in this life.', 'İnsanların söz verdiği bazı şeyleri unuttuğu dikkate alınırsa, bu hayatta kimseye güvenmemen gerektiğini bilmelisin.', 'Étant donné que les gens oublient certaines choses qu\'ils promettent, vous devez savoir que vous n\'avez pas besoin de faire confiance à qui que ce soit dans cette vie.', 'Angesichts der Tatsache, dass die Menschen einige Dinge vergessen, die sie versprechen, müssen Sie wissen, dass Sie niemandem in diesem Leben vertrauen müssen.', 'Dado que las personas olvidan algunas cosas que prometen, debes saber que no necesitas confiar en nadie en esta vida.', 'Dato che le persone dimenticano alcune cose che promettono, devi sapere che non devi fidarti di nessuno in questa vita.', 'با توجه به اینکه مردم بعضی چیزهایی را که قول می دهند فراموش می کنند، باید بدانید که در این زندگی نیازی به اعتماد به کسی ندارید', '5'),
(244, 'All assignments that we prepared weren\'t accepted by the teacher; therefore, the teacher said that we need to prepare the them again.', 'Hazırladığımız bütün ödevler öğretmen tarafından kabul edilmedi; bu yüzden, öğretmen ödevleri tekrar hazırlamamız gerektiğini söyledi.', 'Tous les devoirs que nous avons préparés n\'ont pas été acceptés par l\'enseignant ; par conséquent, le professeur a dit que nous devions les préparer à nouveau.', 'Alle Aufgaben, die wir vorbereitet haben, wurden vom Lehrer nicht angenommen; Deshalb sagte der Lehrer, dass wir sie noch einmal vorbereiten müssen.', 'Todas las tareas que preparamos no fueron aceptadas por el maestro; por lo tanto, el maestro dijo que necesitamos prepararlos nuevamente.', 'Tutti i compiti che abbiamo preparato non sono stati accettati dall\'insegnante; quindi, l\'insegnante ha detto che dobbiamo prepararli di nuovo.', 'تمام تکالیفی که آماده کردیم مورد قبول معلم قرار نگرفت، بنابراین معلم گفت که باید دوباره آنها را آماده کنیم.', '5'),
(245, 'I am good at football.', 'Futbol oyununda iyiyimdir.', 'Je suis bon au football.', 'Ich bin gut im Fußball.', 'Soy bueno en el fútbol.', 'Sono bravo a calcio.', 'من در فوتبال خوب هستم', '1'),
(246, 'I am bad at basketball.', 'Basketbol oyununda kötüyümdür.', 'Je suis mauvais au basket.', 'Ich bin schlecht im Basketball.', 'Soy malo en el baloncesto.', 'Sono pessimo a basket.', 'من در بسکتبال بد هستم', '1'),
(247, 'Scientists were very pretentious about this.', 'Bilim insanları bu konuda çok iddialıydılar.', 'Les scientifiques étaient très prétentieux à ce sujet.', 'Wissenschaftler waren diesbezüglich sehr prätentiös.', 'Los científicos eran muy pretenciosos al respecto.', 'Gli scienziati erano molto pretenziosi su questo.', 'دانشمندان در این مورد بسیار پرمدعا بودند', '1'),
(248, 'Nobody was comfortable during the economic crisis.', 'Ekonomik kriz sırasında kimse rahat değildi.', 'Personne n\'était à l\'aise pendant la crise économique.', 'Während der Wirtschaftskrise fühlte sich niemand wohl.', 'Nadie estaba cómodo durante la crisis económica.', 'Nessuno era a suo agio durante la crisi economica.', 'هیچکس در طول بحران اقتصادی راحت نبود.', '2'),
(249, 'Dogs are more compliant than cats.', 'Köpekler, kedilere göre daha uysaldır.', 'Les chiens sont plus dociles que les chats.', 'Hunde sind gefälliger als Katzen.', 'Los perros son más obedientes que los gatos.', 'I cani sono più accondiscendenti dei gatti.', 'سگ ها سازگارتر از گربه ها هستند', '1'),
(250, 'Ali was keen on drawing at the age of seven.', 'Ali, yedi yaşında resim çizmeye hevesliydi.', 'Ali était passionné de dessin à l\'âge de sept ans.', 'Im Alter von sieben Jahren begeisterte sich Ali für das Zeichnen.', 'Ali estaba interesado en dibujar a la edad de siete años.', 'Ali amava disegnare all\'età di sette anni.', 'علی در سن هفت سالگی علاقه زیادی به نقاشی داشت', '2'),
(251, 'Since the garage door is out of order, my car is out right now.', 'Garaj kapısı bozuk olduğundan dolayı arabam şu an dışarıda.', 'Comme la porte du garage est en panne, ma voiture est sortie en ce moment.', 'Da das Garagentor außer Betrieb ist, steht mein Auto gerade aus.', 'Dado que la puerta del garaje está fuera de servicio, mi auto está fuera de servicio ahora mismo.', 'Dato che la porta del garage è fuori servizio, la mia macchina è fuori servizio in questo momento.', 'از آنجایی که درب گاراژ از کار افتاده است، ماشین من در حال حاضر بیرون است', '2'),
(252, 'The court will announce final decision for this murder today.', 'Mahkeme bugün bu cinayet için son kararı açıklayacak.', 'Le tribunal rendra sa décision finale pour ce meurtre aujourd\'hui.', 'Das Gericht wird heute die endgültige Entscheidung für diesen Mord bekannt geben.', 'El tribunal anunciará hoy la decisión final por este asesinato.', 'La corte annuncerà oggi la decisione finale per questo omicidio.', 'دادگاه امروز تصمیم نهایی برای این قتل را اعلام خواهد کرد', '2'),
(253, 'He has been working in the same job since 2000.', '2000 yılından bu yana aynı işte çalışıyor.', 'Il occupe le même poste depuis 2000.', 'Seit 2000 arbeitet er im gleichen Beruf.', 'Trabaja en el mismo puesto desde el año 2000.', 'Lavora nello stesso lavoro dal 2000.', 'او از سال 2000 در همین شغل مشغول به کار بوده است', '2'),
(254, 'There must be an evidence to charge someone with theft.', 'Birini hırsızlık ile suçlamak için bir kanıt olması gerekir.', 'Il doit y avoir une preuve pour accuser quelqu\'un de vol.', 'Es müssen Beweise vorliegen, um jemanden wegen Diebstahls anzuklagen.', 'Debe haber evidencia para acusar a alguien de robo.', 'Ci deve essere una prova per accusare qualcuno di furto.', 'باید مدرکی وجود داشته باشد که کسی را به دزدی متهم کند', '2'),
(255, 'Half of the forests in Turkey will have been destroyed in 2025.', '2025 yılında Türkiye\'deki ormanların yarısı yok edilmiş olacak.', 'La moitié des forêts de Turquie auront été détruites en 2025.', 'Die Hälfte der Wälder in der Türkei wird 2025 zerstört sein.', 'La mitad de los bosques de Turquía habrán sido destruidos en 2025.', 'Metà delle foreste in Turchia sarà stata distrutta nel 2025.', 'نیمی از جنگل های ترکیه در سال 2025 نابود خواهند شد', '2'),
(256, 'Though some people look seriously, their hearts are very soft.', 'Bazı insanlar ciddi görünmelerine rağmen kalpleri çok yumuşaktır.', 'Bien que certaines personnes regardent sérieusement, leur cœur est très doux.', 'Obwohl manche Menschen ernst aussehen, sind ihre Herzen sehr weich.', 'Aunque algunas personas parecen serias, sus corazones son muy tiernos.', 'Sebbene alcune persone sembrino seriamente, i loro cuori sono molto teneri.', 'اگرچه برخی افراد جدی به نظر می رسند، اما قلبشان بسیار نرم است', '2'),
(257, 'The solution of the most difficult questions can someties be very easy.', 'Bazen en zor soruların çözümü çok kolay olabilir.', 'La solution des questions les plus difficiles peut parfois être très simple.', 'Die Lösung der schwierigsten Fragen kann manchmal sehr einfach sein.', 'La solución de las preguntas más difíciles a veces puede ser muy fácil.', 'La soluzione delle domande più difficili a volte può essere molto semplice.', 'حل سخت ترین سوالات می تواند گاهی اوقات بسیار آسان باشد', '2'),
(258, '3 students had to leave school so far.', 'Şimdiye kadar 3 öğrenci, okulu terk etmek zorunda kaldı.', '3 élèves ont dû quitter l\'école jusqu\'à présent.', '3 Schüler mussten bisher die Schule verlassen.', '3 estudiantes tuvieron que dejar la escuela hasta ahora.', 'Finora 3 studenti hanno dovuto lasciare la scuola.', '3 دانش آموز تاكنون مجبور به ترك مدرسه شدند', '2'),
(259, 'The teacher gave me this book in order to read, but i have already read it.', 'Öğretmen bana okumak için bu kitabı verdi, ama ben bunu çoktan okudum.', 'Le professeur m\'a donné ce livre pour le lire, mais je l\'ai déjà lu.', 'Der Lehrer hat mir dieses Buch zum Lesen gegeben, aber ich habe es bereits gelesen.', 'El profesor me dio este libro para leer, pero ya lo he leído.', 'L\'insegnante mi ha dato questo libro per poterlo leggere, ma l\'ho già letto.', 'معلم این کتاب را به من داد تا بخوانم، اما من قبلاً آن را خوانده ام', '3'),
(260, 'Even the most serious studies conducted in recent years have not solved the environmental problem.', 'Son yıllarda yapılan en ciddi çalışmalar bile çevresel sorunu çözemedi.', 'Même les études les plus sérieuses menées ces dernières années n\'ont pas résolu le problème environnemental.', 'Selbst die ernsthaftesten Studien der letzten Jahre haben das Umweltproblem nicht gelöst.', 'Incluso los estudios más serios realizados en los últimos años no han resuelto el problema ambiental.', 'Anche gli studi più seri condotti negli ultimi anni non hanno risolto il problema ambientale.', 'حتی جدی ترین مطالعات انجام شده در سال های اخیر نیز مشکل زیست محیطی را حل نکرده است', '3'),
(261, 'The time is almost up. We must hand over the assignments from now.', 'Süre neredeyse tükendi. Artık ödevleri teslim etmemiz gerekiyor.', 'Le temps est presque écoulé. Nous devons remettre les missions à partir de maintenant.', 'Die Zeit ist fast abgelaufen. Wir müssen die Aufgaben ab sofort abgeben.', 'El tiempo casi ha terminado. Debemos entregar las asignaciones a partir de ahora.', 'Il tempo è quasi scaduto. Dobbiamo consegnare gli incarichi d\'ora in poi.', 'زمان تقریباً به پایان رسیده است. ما باید از هم اکنون وظایف را تحویل دهیم', '3'),
(262, 'Because of the greenhouse gases the children become ill at an early age in Turkey.', 'Türkiye\'de çocuklar sera gazından dolayı erken yaşta hasta oluyorlar.', 'À cause des gaz à effet de serre, les enfants tombent malades très tôt en Turquie.', 'Wegen der Treibhausgase werden die Kinder in der Türkei schon früh krank.', 'Debido a los gases de efecto invernadero, los niños se enferman a una edad temprana en Turquía.', 'A causa dei gas serra i bambini si ammalano in tenera età in Turchia.', 'به دلیل گازهای گلخانه ای، کودکان در سنین پایین در ترکیه بیمار می شوند', '3'),
(263, 'The French government no longer accepts the agreement which was signed 3 months ago.', 'Fransız hükümeti 3 ay önce imzalanan sözleşmeyi artık kabul etmiyor.', 'Le gouvernement français n\'accepte plus l\'accord signé il y a 3 mois.', 'Die französische Regierung akzeptiert das vor 3 Monaten unterzeichnete Abkommen nicht mehr.', 'El gobierno francés ya no acepta el acuerdo que se firmó hace 3 meses.', 'Il governo francese non accetta più l\'accordo firmato 3 mesi fa.', 'دولت فرانسه دیگر توافقی را که 3 ماه پیش امضا شده است، نمی پذیرد', '3'),
(264, 'The life span of living things which is exposed to climate change is shorter than before.', 'İklim değişikliğine maruz kalan canlıların yaşam süresi eskisine göre daha kısadır.', 'La durée de vie des êtres vivants exposés au changement climatique est plus courte qu\'auparavant.', 'Die Lebensdauer von Lebewesen, die dem Klimawandel ausgesetzt sind, ist kürzer als früher.', 'La vida útil de los seres vivos que están expuestos al cambio climático es más corta que antes.', 'La durata della vita degli esseri viventi esposti ai cambiamenti climatici è più breve di prima.', 'طول عمر موجودات زنده ای که در معرض تغییرات آب و هوایی قرار دارند کوتاه تر از گذشته است', '4'),
(265, 'Italian journalists stressed that the traffic fines should be reduced as much as possible.', 'İtalyan gazeteciler, trafik cezalarının olabildiğince hafifletilmesi gerektiğini vurguladılar.', 'Les journalistes italiens ont souligné que les amendes routières devraient être réduites autant que possible.', 'Italienische Journalisten betonten, dass die Verkehrsstrafen so weit wie möglich reduziert werden sollten.', 'Los periodistas italianos insistieron en que las multas de tráfico deberían reducirse tanto como sea posible.', 'I giornalisti italiani hanno sottolineato che le multe stradali dovrebbero essere ridotte il più possibile.', 'روزنامه نگاران ایتالیایی تاکید کردند که جریمه های رانندگی باید تا حد امکان کاهش یابد', '4'),
(266, 'Although Turkey has the world\'s most fertile soil, it is never used efficiently.', 'Türkiye dünyanın en verimli toprağına sahip olmasına rağmen, hiçbir zaman verimli olarak kullanılmıyor.', 'Bien que la Turquie ait le sol le plus fertile du monde, il n\'est jamais utilisé efficacement.', 'Obwohl die Türkei den fruchtbarsten Boden der Welt hat, wird er nie effizient genutzt.', 'Aunque Turquía tiene el suelo más fértil del mundo, nunca se usa de manera eficiente.', 'Sebbene la Turchia abbia il suolo più fertile del mondo, non viene mai utilizzata in modo efficiente.', 'اگرچه ترکیه حاصلخیزترین خاک جهان را دارد، اما هرگز به طور موثر از آن استفاده نمی شود', '4'),
(267, 'When it comes to the differences between human and animal, the biggest difference between them is thinking ability of humankind.', 'İnsan ve hayvan arasındaki farklara gelince, aralarındaki en büyük fark insanoğlunun düşünme kabiliyetidir.', 'En ce qui concerne les différences entre l\'homme et l\'animal, la plus grande différence entre eux est la capacité de réflexion de l\'humanité.', 'Wenn es um die Unterschiede zwischen Mensch und Tier geht, ist der größte Unterschied zwischen ihnen die Denkfähigkeit der Menschheit.', 'Cuando se trata de las diferencias entre humanos y animales, la mayor diferencia entre ellos es la capacidad de pensamiento de la humanidad.', 'Quando si tratta delle differenze tra umano e animale, la più grande differenza tra loro è la capacità di pensiero dell\'umanità.', 'وقتی صحبت از تفاوت بین انسان و حیوان می شود، بزرگترین تفاوت بین آنها توانایی تفکر نوع بشر است', '5'),
(268, 'Since dinosaurs existed in the world, the level of carbon dioxide in the air has reached the highest level today.', 'Dinazorlar dünyada var olduğundan beri havadaki karbondioksit seviyesi günümüzde en yüksek seviyeye ulaşmıştır.', 'Depuis que les dinosaures existent dans le monde, le niveau de dioxyde de carbone dans l\'air a atteint son plus haut niveau aujourd\'hui.', 'Seit es Dinosaurier auf der Welt gibt, hat der Kohlendioxidgehalt der Luft heute den höchsten Stand erreicht.', 'Desde que existieron los dinosaurios en el mundo, el nivel de dióxido de carbono en el aire ha alcanzado el nivel más alto en la actualidad.', 'Da quando esistevano i dinosauri nel mondo, il livello di anidride carbonica nell\'aria ha raggiunto il livello più alto oggi.', 'از زمان وجود دایناسورها در جهان، سطح دی اکسید کربن موجود در هوا به بالاترین سطح امروزی رسیده است', '5'),
(269, 'California severely affected by Tornado hurricane is trying to deal with forest fires.', 'Tornado kasırgasından ciddi şekilde etkilenen California, şimdi de orman yangınları ile başa çıkmaya çalışıyor.', 'La Californie gravement touchée par l\'ouragan Tornado tente de faire face aux incendies de forêt.', 'Das vom Hurrikan Tornado schwer betroffene Kalifornien versucht, mit den Waldbränden fertig zu werden.', 'California gravemente afectada por el huracán Tornado está tratando de hacer frente a los incendios forestales.', 'La California, gravemente colpita dall\'uragano Tornado, sta cercando di far fronte agli incendi boschivi.', 'کالیفرنیا که به شدت تحت تاثیر طوفان گردباد قرار گرفته است در تلاش است تا با آتش سوزی جنگل ها مقابله کند', '5'),
(270, 'The cat was very sleepy by the door.', 'Kedi, kapının kenarında çok uykuluydu.', 'Le chat était très endormi près de la porte.', 'Die Katze war sehr schläfrig neben der Tür.', 'El gato estaba muy dormido junto a la puerta.', 'Il gatto era molto assonnato vicino alla porta.', 'گربه کنار در خیلی خواب آلود بود', '1'),
(271, 'I was at the beach at 11 o\'clock on Friday.', 'Cuma günü saat sabah 11\'de sahildeydim.', 'J\'étais à la plage à 11 heures vendredi.', 'Ich war am Freitag um 11 Uhr am Strand.', 'Estuve en la playa a las 11 el viernes.', 'Ero in spiaggia alle 23 di venerdì.', 'جمعه ساعت 11 در ساحل بودم', '1'),
(272, 'Despite the bad people, there are still good people.', 'Kötü insanlara rağmen hala iyi insanlar da var.', 'Malgré les mauvaises personnes, il y a encore des bonnes personnes.', 'Trotz der schlechten Menschen gibt es immer noch gute Menschen.', 'A pesar de la gente mala, todavía hay gente buena.', 'Nonostante le persone cattive, ci sono ancora persone buone.', 'با وجود آدم های بد، هنوز آدم های خوب هم هستند', '1'),
(273, 'Everyone is ready as worker thanks to this man.', 'Herkes bu adam sayesinde işçi olarak hazır.', 'Tout le monde est prêt comme travailleur grâce à cet homme.', 'Dank diesem Mann ist jeder als Arbeiter bereit.', 'Todo el mundo está listo como trabajador gracias a este hombre.', 'Ognuno è pronto come lavoratore grazie a quest\'uomo.', 'همه به لطف این مرد به عنوان کارگر آماده هستند', '2'),
(274, 'Everybody in the car was in shock as a result of that accident.', 'O kazanın sonucunda arabadaki herkes şoktaydı.', 'Tout le monde dans la voiture était sous le choc à la suite de cet accident.', 'Alle im Auto standen unter Schock als Folge dieses Unfalls.', 'Todos en el auto estaban en estado de shock como resultado de ese accidente.', 'Tutti in macchina sono rimasti scioccati a causa di quell\'incidente.', 'همه افراد داخل ماشین در اثر آن تصادف در شوک بودند', '1'),
(275, 'It\'s too early to talk about the new worker.', 'Yeni işçi ile ilgili konuşmak şu an için çok erken.', 'Il est trop tôt pour parler du nouveau travailleur.', 'Es ist noch zu früh, um über den neuen Mitarbeiter zu sprechen.', 'Es demasiado pronto para hablar del nuevo trabajador.', 'È troppo presto per parlare del nuovo lavoratore.', 'هنوز خیلی زود است که در مورد کارگر جدید صحبت کنیم', '2'),
(276, 'Farmers generally forecast the weather through wind and clouds.', 'Çiftçiler hava durumunu genellikle rüzgar ve bulutlar aracılığıyla tahmin eder.', 'Les agriculteurs prévoient généralement le temps à travers le vent et les nuages.', 'Landwirte sagen das Wetter im Allgemeinen durch Wind und Wolken voraus.', 'Los agricultores generalmente pronostican el clima a través del viento y las nubes.', 'Gli agricoltori generalmente prevedono il tempo attraverso il vento e le nuvole.', 'کشاورزان معمولا آب و هوا را از طریق باد و ابر پیش بینی می کنند', '2'),
(277, 'You have lost enough weight these days because you had a diet.', 'Bugünlerde diyet yaptığından dolayı yeterince kilo verdin.', 'Vous avez perdu suffisamment de poids ces jours-ci parce que vous avez suivi un régime.', 'Sie haben heutzutage genug Gewicht verloren, weil Sie eine Diät gemacht haben.', 'Has perdido bastante peso estos días porque estabas a dieta.', 'Hai perso abbastanza peso in questi giorni perché hai seguito una dieta.', 'این روزها به دلیل داشتن رژیم غذایی به اندازه کافی وزن کم کرده اید', '2'),
(278, 'Parents should listen to their children\'s problems and advise them.', 'Ebeveynler mutlaka çocuklarının sorunlarını dinlemeli ve onlara nasihat vermelidirler.', 'Les parents doivent écouter les problèmes de leurs enfants et les conseiller.', 'Eltern sollten sich die Probleme ihrer Kinder anhören und sie beraten.', 'Los padres deben escuchar los problemas de sus hijos y aconsejarlos.', 'I genitori dovrebbero ascoltare i problemi dei loro figli e consigliarli.', 'والدین باید مشکلات فرزندان خود را بشنوند و به آنها توصیه کنند', '2'),
(279, 'Before the cold war began, almost the whole world had ruined.', 'Soğuk savaş başlamadan önce neredeyse tüm dünya harabe olmuştu.', 'Avant le début de la guerre froide, presque le monde entier était ruiné.', 'Bevor der Kalte Krieg begann, war fast die ganze Welt ruiniert.', 'Antes de que comenzara la guerra fría, casi todo el mundo se había arruinado.', 'Prima dell\'inizio della guerra fredda, quasi il mondo intero era andato in rovina.', 'قبل از شروع جنگ سرد، تقریباً تمام جهان ویران شده بود', '2'),
(280, 'Besides the design of the garden, plans were also made for decoration of the house.', 'Bahçenin dizaynına ek olarak evin dekorasyonu için de planlar yapıldı.', 'Outre la conception du jardin, des plans ont également été réalisés pour la décoration de la maison.', 'Neben der Gestaltung des Gartens wurden auch Pläne für die Dekoration des Hauses gemacht.', 'Además del diseño del jardín, también se hicieron planos para la decoración de la casa.', 'Oltre alla progettazione del giardino, sono stati elaborati anche progetti per la decorazione della casa.', 'در کنار طراحی باغ، نقشه هایی برای دکوراسیون خانه نیز کشیده شد', '3'),
(281, 'During the liberation war, the Turkish people would either end completely or resurrect again.', 'Türk halkı, kurtuluş savaşı sırasında ya tamamen bitecek ya da tekrar dirilecekti.', 'Pendant la guerre de libération, le peuple turc finirait complètement ou ressusciterait à nouveau.', 'Während des Befreiungskrieges würde das türkische Volk entweder vollständig enden oder wieder auferstehen.', 'Durante la guerra de liberación, el pueblo turco terminaría por completo o resucitaría de nuevo.', 'Durante la guerra di liberazione, il popolo turco sarebbe finito completamente o sarebbe risorto.', 'در طول جنگ آزادی، مردم ترکیه یا به طور کامل پایان می یافتند یا دوباره زنده می شدند', '3'),
(282, 'Yemeni people are struggling with hunger, in fact they are quietly waiting for helping.', 'Yemen halkı açlıkla mücadele ediyor, aslında sessizce yardım bekliyor.', 'Les Yéménites luttent contre la faim, en fait ils attendent tranquillement de l\'aide.', 'Die Menschen im Jemen kämpfen mit dem Hunger, tatsächlich warten sie im Stillen auf Hilfe.', 'Los yemeníes luchan contra el hambre, de hecho, esperan en silencio ayuda.', 'Gli yemeniti stanno lottando con la fame, infatti aspettano tranquillamente di essere aiutati.', 'مردم یمن با گرسنگی دست و پنجه نرم می کنند، در واقع آنها بی سر و صدا منتظر کمک هستند', '3'),
(283, 'You can easily see effects of global warming. For example, recently it has begun to snow too late in Turkey.', 'Küresel ısınmanın etkilerini rahatlıkla görebilirsiniz. Örneğin, Türkiye\'de son zamanlarda kar çok geç yağmaya başladı.', 'Vous pouvez facilement voir les effets du réchauffement climatique. Par exemple, récemment, il a commencé à neiger trop tard en Turquie.', 'Sie können die Auswirkungen der globalen Erwärmung leicht erkennen. Zum Beispiel hat es in der Türkei kürzlich zu spät angefangen zu schneien.', 'Puede ver fácilmente los efectos del calentamiento global. Por ejemplo, recientemente ha comenzado a nevar demasiado tarde en Turquía.', 'Puoi facilmente vedere gli effetti del riscaldamento globale. Ad esempio, recentemente in Turchia ha iniziato a nevicare troppo tardi.', 'شما به راحتی می توانید اثرات گرمایش زمین را مشاهده کنید. به عنوان مثال، اخیراً در ترکیه خیلی دیر برف باریده است', '3'),
(284, 'The teas that we ordered are very cold. So, how can we drink these teas?', 'Ismarladığımız çaylar çok soğuk. Yani biz bu çayları nasıl içebiliriz?', 'Les thés que nous avons commandés sont très froids. Alors, comment peut-on boire ces thés?', 'Die Tees, die wir bestellt haben, sind sehr kalt. Also, wie können wir diese Tees trinken?', 'Los tés que pedimos están muy fríos. Entonces, ¿cómo podemos beber estos tés?', 'I tè che abbiamo ordinato sono molto freddi. Allora, come possiamo bere questi tè?', 'چای هایی که سفارش دادیم خیلی سرد هستند. بنابراین، چگونه می توانیم این چای ها را بنوشیم؟', '3'),
(285, 'People should forever thank scientists who devoted their lives to development of the science.', 'İnsanlar, bilimin gelişmesine canlarını adayan bilim insanlarına sonsuza kadar teşekkür etmelidir.', 'Les gens devraient toujours remercier les scientifiques qui ont consacré leur vie au développement de la science.', 'Die Menschen sollten Wissenschaftlern für immer danken, die ihr Leben der Entwicklung der Wissenschaft gewidmet haben.', 'La gente siempre debería agradecer a los científicos que dedicaron sus vidas al desarrollo de la ciencia.', 'Le persone dovrebbero ringraziare per sempre gli scienziati che hanno dedicato la loro vita allo sviluppo della scienza.', 'مردم باید برای همیشه از دانشمندانی که زندگی خود را وقف توسعه علم کردند تشکر کنند', '4'),
(286, 'A person who lives on a deserted island can die at any moment because he doesn\'t know where to go and what to eat.', 'Issız bir adada kalan insan, nereye gideceğini ve ne yiyeceğini bilmediği için her an ölebilir.', 'Une personne qui vit sur une île déserte peut mourir à tout moment parce qu\'elle ne sait pas où aller et quoi manger.', 'Ein Mensch, der auf einer einsamen Insel lebt, kann jeden Moment sterben, weil er nicht weiß, wohin er gehen und was er essen soll.', 'Una persona que vive en una isla desierta puede morir en cualquier momento porque no sabe adónde ir y qué comer.', 'Una persona che vive su un\'isola deserta può morire in qualsiasi momento perché non sa dove andare e cosa mangiare.', 'کسی که در یک جزیره متروک زندگی می کند هر لحظه ممکن است بمیرد زیرا نمی داند کجا برود و چه بخورد', '4'),
(287, 'Surveys that were conducted in all provinces of Turkey show that the society\'s level of education declined.', 'Türkiye\'nin tüm illerinde gerçekleştirilen anketler, toplumun eğitim seviyesinin gerilediğini gösteriyor.', 'Des enquêtes menées dans toutes les provinces de Turquie montrent que le niveau d\'éducation de la société a baissé.', 'Umfragen, die in allen Provinzen der Türkei durchgeführt wurden, zeigen, dass das Bildungsniveau der Gesellschaft gesunken ist.', 'Las encuestas que se realizaron en todas las provincias de Turquía muestran que el nivel de educación de la sociedad disminuyó.', 'I sondaggi condotti in tutte le province della Turchia mostrano che il livello di istruzione della società è diminuito.', 'بررسی هایی که در تمام استان های ترکیه انجام شده نشان می دهد که سطح تحصیلات جامعه کاهش یافته است', '5'),
(288, 'Africa where the wildest animals in the world live, is still struggling with famine, even if it has the most oil deposits in the world.', 'Dünya\'nın en vahşi hayvanlarının yaşadığı Afrika, dünyanın en çok petrol yataklarına sahip olmasına rağmen, hala kıtlık ile mücadele ediyor.', 'L\'Afrique, où vivent les animaux les plus sauvages du monde, est toujours aux prises avec la famine, même si elle possède le plus de gisements de pétrole au monde.', 'Afrika, wo die wildesten Tiere der Welt leben, kämpft immer noch mit Hungersnöten, auch wenn es die meisten Ölvorkommen der Welt hat.', 'África, donde viven los animales más salvajes del mundo, todavía lucha contra la hambruna, incluso si tiene la mayor cantidad de depósitos de petróleo del mundo.', 'L\'Africa, dove vivono gli animali più selvaggi del mondo, è ancora alle prese con la carestia, anche se ha il maggior numero di giacimenti di petrolio al mondo.', 'آفریقا که وحشی ترین حیوانات جهان در آن زندگی می کنند، هنوز با قحطی دست و پنجه نرم می کند، حتی اگر بیشترین ذخایر نفت را در جهان داشته باشد', '5'),
(289, 'The rose is the most beautiful flower in the garden.', 'Gül bahçenin en güzel çiçeğidir.', 'La rose est la plus belle fleur du jardin.', 'Die Rose ist die schönste Blume im Garten.', 'La rosa es la flor más hermosa del jardín.', 'La rosa è il fiore più bello del giardino.', 'گل رز زیباترین گل باغ است', '1'),
(290, 'I am in Istanbul yesterday because of my mother.', 'Annemden dolayı dün İstanbul\'daydım.', 'Je suis à Istanbul hier à cause de ma mère.', 'Ich bin gestern wegen meiner Mutter in Istanbul.', 'Ayer estuve en Estambul por mi madre.', 'Sono a Istanbul ieri a causa di mia madre.', 'من دیروز به خاطر مادرم در استانبول هستم', '1'),
(291, 'Red is a more popular color than yellow.', 'Kırmızı sarıya göre daha popüler bir renktir.', 'Le rouge est une couleur plus populaire que le jaune.', 'Rot ist eine beliebtere Farbe als Gelb.', 'El rojo es un color más popular que el amarillo.', 'Il rosso è un colore più popolare del giallo.', 'رنگ قرمز محبوب‌تر از زرد است', '1');
INSERT INTO `content1` (`id`, `en`, `tr`, `fr`, `de`, `es`, `it`, `fa`, `level`) VALUES
(292, 'I\'m used to standing at work every day.', 'Her gün iş yerinde ayakta durmaya alışkınım.', 'J\'ai l\'habitude de rester debout au travail tous les jours.', 'Ich bin es gewohnt, jeden Tag bei der Arbeit zu stehen.', 'Estoy acostumbrado a estar de pie en el trabajo todos los días.', 'Sono abituato a stare in piedi al lavoro tutti i giorni.', 'من عادت دارم هر روز سر کار بایستم', '1'),
(293, 'These employees are often late for work.', 'Bu çalışanlar sık sık işe geç kalırlar.', 'Ces employés sont souvent en retard au travail.', 'Diese Mitarbeiter kommen oft zu spät zur Arbeit.', 'Estos empleados a menudo llegan tarde al trabajo.', 'Questi dipendenti sono spesso in ritardo al lavoro.', 'این کارمندان اغلب دیر سر کار می آیند', '1'),
(294, 'Although she usually comes to work early, the boss doesn\'t like her.', 'Genellikle işe erken gelse de patron onu sevmiyor.', 'Bien qu\'elle arrive généralement tôt au travail, le patron ne l\'aime pas.', 'Obwohl sie normalerweise früh zur Arbeit kommt, mag sie der Chef nicht.', 'Aunque suele llegar temprano al trabajo, al jefe no le cae bien.', 'Anche se di solito viene presto al lavoro, al capo non piace.', 'اگرچه او معمولاً زود سر کار می آید، اما رئیس او را دوست ندارد', '2'),
(295, 'After the conquest of Istanbul, The Ottoman Empire grew gradually.', 'İstanbul\'un fethinden sonra, Osmanlı İmparatorluğu gitgide büyüdü.', 'Après la conquête d\'Istanbul, l\'Empire ottoman s\'agrandit progressivement.', 'Nach der Eroberung Istanbuls wuchs das Osmanische Reich allmählich.', 'Después de la conquista de Estambul, el Imperio Otomano creció gradualmente.', 'Dopo la conquista di Istanbul, l\'Impero Ottomano crebbe gradualmente.', 'پس از فتح استانبول، امپراتوری عثمانی به تدریج رشد کرد', '2'),
(296, 'As soon as the plane fell, it exploded suddenly.', 'Uçak düşer düşmez, bir anda patladı.', 'Dès que l\'avion est tombé, il a explosé soudainement.', 'Sobald das Flugzeug abstürzte, explodierte es plötzlich.', 'Tan pronto como el avión cayó, explotó repentinamente.', 'Non appena l\'aereo è caduto, è esploso all\'improvviso.', 'به محض سقوط هواپیما ناگهان منفجر شد', '2'),
(297, 'Even though the man has just left work, he started a new job.', 'Adam işten daha yeni ayrılmasına rağmen, yeni bir işe başladı.', 'Même si l\'homme vient de quitter son travail, il a commencé un nouveau travail.', 'Obwohl der Mann gerade die Arbeit verlassen hat, hat er einen neuen Job begonnen.', 'A pesar de que el hombre acaba de salir del trabajo, comenzó un nuevo trabajo.', 'Anche se l\'uomo ha appena lasciato il lavoro, ha iniziato un nuovo lavoro.', 'با وجود اینکه مرد تازه کار را ترک کرده است، کار جدیدی را شروع کرده است', '2'),
(298, 'You should think like an Englishman in order to be able to speak English fluently.', 'Akıcı şekilde ingilizce konuşabilmek için bir İngiliz gibi düşünmelisin.', 'Vous devez penser comme un Anglais pour pouvoir parler couramment l\'anglais.', 'Du solltest wie ein Engländer denken, um fließend Englisch sprechen zu können.', 'Debes pensar como un inglés para poder hablar inglés con fluidez.', 'Dovresti pensare come un inglese per poter parlare correntemente l\'inglese.', 'برای اینکه بتوانید انگلیسی را روان صحبت کنید باید مانند یک انگلیسی فکر کنید', '3'),
(299, 'Ayşe\'s wedding ring was stolen by a man yesterday.', 'Ayşe\'nin evlilik yüzüğü dün bir adam tarafından çalındı.', 'L\'alliance d\'Ayşe a été volée par un homme hier.', 'Ayşes Ehering wurde gestern von einem Mann gestohlen.', 'El anillo de bodas de Ayşe fue robado por un hombre ayer.', 'L\'anello nuziale di Ayşe è stato rubato da un uomo ieri.', 'حلقه ازدواج عایشه دیروز توسط مردی به سرقت رفت', '3'),
(300, 'All rented bicycles were returned to the owner.', 'Kiralanan bisikletlerin tamamı sahibine geri iade edildi.', 'Tous les vélos loués ont été rendus au propriétaire.', 'Alle gemieteten Fahrräder wurden an den Eigentümer zurückgegeben.', 'Todas las bicicletas alquiladas fueron devueltas al propietario.', 'Tutte le biciclette noleggiate sono state restituite al proprietario.', 'تمامی دوچرخه های کرایه شده به صاحبش بازگردانده شد', '3'),
(301, 'If you don\'t open the umbrella that you took along with you, we\'ll both get wet.', 'Yanına aldığın şemsiyeyi açmazsan ikimizde ıslanacağız.', 'Si tu n\'ouvres pas le parapluie que tu as pris avec toi, on va tous les deux se mouiller.', 'Wenn du den mitgenommenen Regenschirm nicht aufmachst, werden wir beide nass.', 'Si no abres el paraguas que te llevaste, nos mojaremos los dos.', 'Se non apri l\'ombrello che hai portato con te, ci bagniamo entrambi.', 'اگر چتری را که با خود بردی باز نکنی، هر دو خیس می شویم', '3'),
(302, 'To live again in the small town where i grew up was one of my biggest dreams.', 'Büyüdüğüm küçük kasabada tekrar yaşamak benim en büyük hayallerim arasındaydı.', 'Revivre dans la petite ville où j\'ai grandi était l\'un de mes plus grands rêves.', 'Wieder in der kleinen Stadt zu leben, in der ich aufgewachsen bin, war einer meiner größten Träume.', 'Vivir de nuevo en el pequeño pueblo donde crecí era uno de mis mayores sueños.', 'Rivivere nella piccola città in cui sono cresciuto era uno dei miei sogni più grandi.', 'زندگی دوباره در شهر کوچکی که در آن بزرگ شدم یکی از بزرگترین آرزوهای من بود', '3'),
(303, 'The famous doctor who got education in Germany, is giving lectures by travelling around the world. ', 'Eğitimini Almanya\'da alan ünlü doktor dünyayı dolaşarak konferanslar veriyor.', 'Le célèbre médecin qui a fait ses études en Allemagne donne des conférences en voyageant à travers le monde.', 'Der berühmte Arzt, der in Deutschland ausgebildet wurde, hält Vorträge, indem er um die Welt reist.', 'El famoso médico que se educó en Alemania, está dando conferencias viajando por todo el mundo.', 'Il famoso dottore che ha studiato in Germania, tiene conferenze viaggiando per il mondo.', 'دکتر معروفی که در آلمان تحصیل کرد، با سفر به نقاط مختلف جهان سخنرانی می کند', '4'),
(304, 'Children who are exposed to violence frazzle both psychologically and physically.', 'Şiddete maruz kalan çocuklar hem psikolojik hem de fiziksel olarak yıpranıyorlar.', 'Les enfants exposés à la violence s\'épuisent psychologiquement et physiquement.', 'Kinder, die Gewalt ausgesetzt sind, zerbrechen sowohl psychisch als auch physisch.', 'Los niños que están expuestos a la violencia se agotan tanto psicológica como físicamente.', 'I bambini che sono esposti alla violenza sono stremati sia psicologicamente che fisicamente.', 'کودکانی که در معرض خشونت قرار می‌گیرند، هم از نظر روانی و هم از نظر جسمی دچار سرگیجه می‌شوند', '4'),
(305, 'China, the most crowded country in the world economically challenges to whole world besides competing with US and Russia.', 'Dünyanın en kalabalık ülkesi olan Çin, ekonomik olarak ABD ve Rusya ile yarışmasının yanı sıra tüm dünyaya meydan okuyor.', 'La Chine, le pays le plus peuplé du monde, défie économiquement le monde entier en plus de concurrencer les États-Unis et la Russie.', 'China, das bevölkerungsreichste Land der Welt, fordert die ganze Welt wirtschaftlich heraus, abgesehen davon, dass es mit den USA und Russland konkurriert.', 'China, el país más poblado del mundo, desafía económicamente a todo el mundo además de competir con EE.UU. y Rusia.', 'La Cina, il paese più affollato del mondo, sfida economicamente il mondo intero oltre a competere con Stati Uniti e Russia.', 'چین، پرجمعیت‌ترین کشور جهان، علاوه بر رقابت با آمریکا و روسیه، از نظر اقتصادی همه دنیا را نیز به چالش می‌کشد', '5'),
(306, 'We first need to taste it so as to understand whether oven-baked chicken is delicious or not.', 'Fırında pişen tavuğun lezzetli olup olmadığını anlamak için onu ilk olarak tatmamız gerekir.', 'Il faut d\'abord le goûter pour comprendre si le poulet au four est délicieux ou non.', 'Wir müssen es zuerst probieren, um zu verstehen, ob im Ofen gebackenes Hähnchen lecker ist oder nicht.', 'Primero tenemos que probarlo para saber si el pollo al horno es delicioso o no.', 'Bisogna prima assaggiarlo per capire se il pollo al forno è delizioso o meno.', 'ابتدا باید آن را بچشیم تا بفهمیم مرغ پخته شده در فر خوشمزه است یا خیر', '5'),
(307, 'As far as i recall, the meeting was planned to be made in the last days was canceled due to the lack of participant.', 'Hatırladığım kadarıyla, son günlerde yapılması planlanan toplantı katılımcı yetersizliğinden dolayı iptal edildi.', 'Autant que je me souvienne, la réunion qui devait avoir lieu dans les derniers jours a été annulée en raison du manque de participant.', 'Soweit ich mich erinnere, wurde das Treffen, das in den letzten Tagen geplant war, wegen fehlender Teilnehmer abgesagt.', 'Por lo que recuerdo, la reunión que estaba planeada para realizarse en los últimos días fue cancelada debido a la falta de participantes.', 'Per quanto mi ricordo, l\'incontro che doveva essere fatto negli ultimi giorni è stato annullato per mancanza di partecipanti.', 'تا جایی که به یاد دارم، جلسه قرار بود در روزهای آخر برگزار شود، به دلیل عدم حضور شرکت کنندگان لغو شد', '5'),
(308, 'Why is the construction of houses too late?', 'Evlerin inşası neden çok geç kaldı?', 'Pourquoi la construction de maisons est-elle trop tardive ?', 'Warum kommt der Hausbau zu spät?', '¿Por qué la construcción de casas es demasiado tarde?', 'Perché la costruzione delle case è troppo tardi?', 'چرا ساخت خانه ها دیر می شود؟', '1'),
(309, 'The forecast of future sales is really impressive.', 'Gelecek satışların tahmini gerçekten etkileyici.', 'La prévision des ventes futures est vraiment impressionnante.', 'Die Prognose der zukünftigen Umsätze ist wirklich beeindruckend.', 'El pronóstico de ventas futuras es realmente impresionante.', 'La previsione delle vendite future è davvero impressionante.', 'پیش بینی فروش آینده واقعاً چشمگیر است', '1'),
(310, 'I think, your words are as valuable as your beauty.', 'Bence sözlerin güzelliğin kadar değerli.', 'Je pense que tes paroles sont aussi précieuses que ta beauté.', 'Ich denke, deine Worte sind so wertvoll wie deine Schönheit.', 'Creo que tus palabras son tan valiosas como tu belleza.', 'Penso che le tue parole valgano quanto la tua bellezza.', 'من فکر می کنم، کلمات شما به اندازه زیبایی شما ارزشمند هستند', '1'),
(311, 'Many global companies are in poor condition because of crisis.', 'Birçok küresel şirket, krizden dolayı kötü durumda.', 'De nombreuses entreprises mondiales sont en mauvais état à cause de la crise.', 'Viele globale Unternehmen befinden sich aufgrund der Krise in einem schlechten Zustand.', 'Muchas empresas globales están en malas condiciones debido a la crisis.', 'Molte aziende globali sono in cattive condizioni a causa della crisi.', 'بسیاری از شرکت های جهانی به دلیل بحران در وضعیت بدی هستند', '1'),
(312, 'Despite deteriorations in economy, some sectors are still standing.', 'Ekonomideki bozulmalara rağmen, bazı sektörler hala ayakta duruyor.', 'Malgré les détériorations de l\'économie, certains secteurs sont encore debout.', 'Trotz Verschlechterungen der Wirtschaft stehen einige Sektoren noch.', 'A pesar del deterioro de la economía, algunos sectores siguen en pie.', 'Nonostante il deterioramento dell\'economia, alcuni settori sono ancora in piedi.', 'با وجود وخامت اقتصاد، برخی از بخش ها همچنان پابرجا هستند', '2');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `de`
--

CREATE TABLE `de` (
  `id` int UNSIGNED NOT NULL,
  `uname` varchar(25) NOT NULL,
  `level1` int UNSIGNED DEFAULT NULL,
  `level2` int UNSIGNED DEFAULT NULL,
  `level3` int UNSIGNED DEFAULT NULL,
  `level4` int UNSIGNED DEFAULT NULL,
  `level5` int UNSIGNED DEFAULT NULL,
  `uid` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `de`
--

INSERT INTO `de` (`id`, `uname`, `level1`, `level2`, `level3`, `level4`, `level5`, `uid`) VALUES
(1, 'hakan', 9, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `en`
--

CREATE TABLE `en` (
  `id` int UNSIGNED NOT NULL,
  `uname` varchar(25) NOT NULL,
  `level1` int UNSIGNED DEFAULT NULL,
  `level2` int UNSIGNED DEFAULT NULL,
  `level3` int UNSIGNED DEFAULT NULL,
  `level4` int UNSIGNED DEFAULT NULL,
  `level5` int UNSIGNED DEFAULT NULL,
  `uid` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `en`
--

INSERT INTO `en` (`id`, `uname`, `level1`, `level2`, `level3`, `level4`, `level5`, `uid`) VALUES
(1, 'hakan', 9, NULL, NULL, NULL, NULL, 1);


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `es`
--

CREATE TABLE `es` (
  `id` int UNSIGNED NOT NULL,
  `uname` varchar(25) NOT NULL,
  `level1` int UNSIGNED DEFAULT NULL,
  `level2` int UNSIGNED DEFAULT NULL,
  `level3` int UNSIGNED DEFAULT NULL,
  `level4` int UNSIGNED DEFAULT NULL,
  `level5` int UNSIGNED DEFAULT NULL,
  `uid` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `es`
--

INSERT INTO `es` (`id`, `uname`, `level1`, `level2`, `level3`, `level4`, `level5`, `uid`) VALUES
(1, 'hakan', 9, NULL, NULL, NULL, NULL, 1);


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fa`
--

CREATE TABLE `fa` (
  `id` int UNSIGNED NOT NULL,
  `uname` varchar(25) NOT NULL,
  `level1` int UNSIGNED DEFAULT NULL,
  `level2` int UNSIGNED DEFAULT NULL,
  `level3` int UNSIGNED DEFAULT NULL,
  `level4` int UNSIGNED DEFAULT NULL,
  `level5` int UNSIGNED DEFAULT NULL,
  `uid` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `fa`
--

INSERT INTO `fa` (`id`, `uname`, `level1`, `level2`, `level3`, `level4`, `level5`, `uid`) VALUES
(1, 'hakan', 9, NULL, NULL, NULL, NULL, 1);


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `fr`
--

CREATE TABLE `fr` (
  `id` int UNSIGNED NOT NULL,
  `uname` varchar(25) NOT NULL,
  `level1` int UNSIGNED DEFAULT NULL,
  `level2` int UNSIGNED DEFAULT NULL,
  `level3` int UNSIGNED DEFAULT NULL,
  `level4` int UNSIGNED DEFAULT NULL,
  `level5` int UNSIGNED DEFAULT NULL,
  `uid` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `fr`
--

INSERT INTO `fr` (`id`, `uname`, `level1`, `level2`, `level3`, `level4`, `level5`, `uid`) VALUES
(1, 'hakan', 9, NULL, NULL, NULL, NULL, 1);


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `it`
--

CREATE TABLE `it` (
  `id` int UNSIGNED NOT NULL,
  `uname` varchar(25) NOT NULL,
  `level1` int UNSIGNED DEFAULT NULL,
  `level2` int UNSIGNED DEFAULT NULL,
  `level3` int UNSIGNED DEFAULT NULL,
  `level4` int UNSIGNED DEFAULT NULL,
  `level5` int UNSIGNED DEFAULT NULL,
  `uid` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `it`
--

INSERT INTO `it` (`id`, `uname`, `level1`, `level2`, `level3`, `level4`, `level5`, `uid`) VALUES
(1, 'hakan', 9, NULL, NULL, NULL, NULL, 1);


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tr`
--

CREATE TABLE `tr` (
  `id` int UNSIGNED NOT NULL,
  `uname` varchar(25) NOT NULL,
  `level1` int UNSIGNED DEFAULT NULL,
  `level2` int UNSIGNED DEFAULT NULL,
  `level3` int UNSIGNED DEFAULT NULL,
  `level4` int UNSIGNED DEFAULT NULL,
  `level5` int UNSIGNED DEFAULT NULL,
  `uid` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `tr`
--

INSERT INTO `tr` (`id`, `uname`, `level1`, `level2`, `level3`, `level4`, `level5`, `uid`) VALUES
(1, 'hakan', 9, NULL, NULL, NULL, NULL, 1);


-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `uname` varchar(100) NOT NULL,
  `score` float UNSIGNED NOT NULL,
  `pass` varchar(100) NOT NULL,
  `cdate` datetime DEFAULT NULL,
  `udate` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `uname`, `score`, `pass`, `cdate`, `udate`) VALUES
(3, 'hakan', 13.5, '$2a$10$U73ZJJOiE0WOl1IWf1UNhOiEMEzvCsVbbJ5//DNlpnJzM9n2yhsPe', '2022-10-12 21:08:48', '2022-10-12 21:08:48');


--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `content1`
--
ALTER TABLE `content1`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `de`
--
ALTER TABLE `de`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `en`
--
ALTER TABLE `en`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `es`
--
ALTER TABLE `es`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `fa`
--
ALTER TABLE `fa`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `fr`
--
ALTER TABLE `fr`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `it`
--
ALTER TABLE `it`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tr`
--
ALTER TABLE `tr`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `de`
--
ALTER TABLE `de`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `en`
--
ALTER TABLE `en`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `es`
--
ALTER TABLE `es`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `fa`
--
ALTER TABLE `fa`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `fr`
--
ALTER TABLE `fr`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `it`
--
ALTER TABLE `it`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `tr`
--
ALTER TABLE `tr`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
