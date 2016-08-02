function Sequence()
	if myHero.charName == 'Shyvana' then
		levelSequence =  { 2,1,3,2,2,4,2,1,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Gragas' then
		levelSequence =  { 1,2,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'JarvanIV' then
		levelSequence =  { 3,1,2,1,1,4,2,3,1,3,4,1,2,2,3,4,3,2}
	elseif myHero.charName == 'Irelia' then
		levelSequence =  { 2,3,1,2,2,4,3,3,2,1,4,2,3,1,1,4,3,1}
	elseif myHero.charName == 'Garen' then
		levelSequence =  { 1,3,3,2,3,4,3,1,3,1,4,1,1,2,2,4,2,2}
	elseif myHero.charName == 'Gnar' then
		levelSequence =  { 1,2,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Aatrox' then
		levelSequence =  { 2,1,2,3,2,4,2,1,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Amumu' then
		levelSequence =  { 2,3,1,2,2,4,2,3,2,3,4,3,3,1,1,4,1,1}
	elseif myHero.charName == 'Nunu' then
		levelSequence =  { 1,2,3,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Fiddlesticks' then
		levelSequence =  { 2,3,2,1,1,4,1,3,1,3,4,1,2,3,2,4,3,2}
	elseif myHero.charName == 'Teemo' then
		levelSequence =  { 3,1,2,1,1,4,3,3,2,3,4,1,1,3,2,4,2,2}
	elseif myHero.charName == 'ChoGath' then
		levelSequence =  { 1,2,3,1,1,4,1,1,2,2,4,2,3,2,3,4,3,3}
	elseif myHero.charName == 'Darius' then
		levelSequence =  { 1,2,3,1,1,4,1,2,1,2,4,3,2,2,3,4,3,3}
	elseif myHero.charName == 'DrMundo' then
		levelSequence =  { 1,3,2,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Elise' then
		levelSequence =  { 2,1,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Evelynn' then
		levelSequence =  { 1,3,2,1,1,4,3,1,3,1,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Fiora' then
		levelSequence =  { 2,3,1,2,2,4,2,1,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Gangplank' then
		levelSequence =  { 1,2,2,3,2,4,2,1,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Hecarim' then
		levelSequence =  { 1,2,3,1,1,4,3,1,3,1,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Jax' then
		levelSequence =  { 2,3,1,1,1,4,3,2,3,2,4,2,1,1,3,4,2,3}
	elseif myHero.charName == 'Jayce' then
		levelSequence =  { 1,3,1,2,1,2,1,2,1,2,1,2,2,3,3,3,3,3}
	elseif myHero.charName == 'Ahri' then
		levelSequence =  { 1,3,2,1,1,4,1,2,1,2,4,2,3,2,3,4,3,3}
	elseif myHero.charName == 'Akali' then
		levelSequence =  { 1,2,1,3,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Anivia' then
		levelSequence =  { 1,3,3,1,3,4,3,2,3,2,4,2,2,2,1,4,1,1}
	elseif myHero.charName == 'Annie' then
		levelSequence =  { 1,2,2,3,2,4,2,1,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Azir' then
		levelSequence =  { 2,1,3,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Brand' then
		levelSequence =  { 2,1,3,2,2,4,2,1,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Cassiopeia' then
		levelSequence =  { 3,1,2,3,3,4,1,1,3,3,4,1,1,2,2,4,2,2}
	elseif myHero.charName == 'Orianna' then
		levelSequence =  { 3,1,2,1,1,4,2,1,3,1,4,2,3,2,2,4,3,3}
	elseif myHero.charName == 'Lux' then
		levelSequence =  { 3,1,2,3,3,4,1,2,3,1,4,2,3,1,1,4,2,2}
	elseif myHero.charName == 'Diana' then
		levelSequence =  { 2,1,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Ekko' then
		levelSequence =  { 2,1,3,1,1,4,2,2,1,2,4,1,2,3,3,4,3,3}
	elseif myHero.charName == 'Ezreal' then
		levelSequence =  { 1,2,3,1,1,4,2,2,1,3,4,1,2,2,3,4,3,3}
	elseif myHero.charName == 'Fizz' then
		levelSequence =  { 2,1,3,2,2,4,3,2,1,2,4,1,1,3,1,4,3,3}
	elseif myHero.charName == 'Galio' then
		levelSequence =  { 1,2,3,1,1,4,1,2,1,2,4,2,3,2,3,4,3,3}
	elseif myHero.charName == 'Heimerdinger' then
		levelSequence =  { 1,2,3,1,1,4,2,2,2,1,4,1,2,3,3,4,3,3}
	elseif myHero.charName == 'Ashe' then
		levelSequence =  { 2,1,3,2,2,4,1,2,1,2,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Kalista' then
		levelSequence =  { 3,1,3,2,3,4,3,1,3,1,4,1,1,2,2,4,2,2}
	elseif myHero.charName == 'Graves' then
		levelSequence =  { 1,2,3,1,1,4,3,1,3,1,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Caitlyn' then
		levelSequence =  { 1,3,1,2,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Vayne' then
		levelSequence =  { 2,1,3,2,2,4,1,2,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'MissFortune' then
		levelSequence =  { 1,2,3,1,2,4,1,1,2,1,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Corki' then
		levelSequence =  { 1,2,3,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Draven' then
		levelSequence =  { 1,2,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Jinx' then
		levelSequence =  { 1,2,3,1,1,4,2,1,2,1,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Leona' then
		levelSequence =  { 1,3,2,2,2,4,2,1,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Alistar' then
		levelSequence =  { 1,2,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Janna' then
		levelSequence =  { 3,1,3,2,3,4,3,2,3,2,4,2,2,1,1,4,1,1}
	elseif myHero.charName == 'Braum' then
		levelSequence =  { 1,3,2,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Bard' then
		levelSequence =  { 1,2,3,1,1,4,2,1,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Blitzcrank' then
		levelSequence =  { 1,3,2,1,1,4,2,1,3,1,4,2,2,2,3,4,3,3}
	elseif myHero.charName == 'Morgana' then
		levelSequence =  { 2,1,3,2,2,4,1,1,3,1,4,1,2,2,3,4,3,3}
	elseif myHero.charName == 'Soraka' then
		levelSequence =  { 1,2,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Karma' then
		levelSequence =  { 1,3,1,2,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Karthus' then
		levelSequence =  { 1,3,1,2,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Kassadin' then
		levelSequence =  { 2,1,3,3,2,4,1,1,3,1,4,2,1,2,3,4,3,2}
	elseif myHero.charName == 'Katarina' then
		levelSequence =  { 1,2,3,1,1,4,2,2,1,2,4,1,2,3,3,4,3,3}
	elseif myHero.charName == 'Kayle' then
		levelSequence =  { 3,2,1,3,3,4,3,1,3,1,4,1,1,2,2,4,2,2}
	elseif myHero.charName == 'Kennen' then
		levelSequence =  { 1,2,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'KhaZix' then
		levelSequence =  { 1,3,2,1,1,4,1,1,3,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'KogMaw' then
		levelSequence =  { 2,3,3,1,3,4,3,2,3,2,4,2,2,1,1,4,1,1}
	elseif myHero.charName == 'Leblanc' then
		levelSequence =  { 2,1,3,2,1,4,2,2,1,3,4,2,1,1,3,4,3,3}
	elseif myHero.charName == 'LeeSin' then
		levelSequence =  { 1,2,3,1,1,4,1,3,1,3,4,2,2,2,2,4,3,3}
	elseif myHero.charName == 'Riven' then
		levelSequence =  { 1,3,2,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Viktor' then
		levelSequence =  { 1,3,3,2,3,4,3,1,3,1,4,1,2,1,2,4,2,2}
	elseif myHero.charName == 'Lissandra' then
		levelSequence =  { 1,3,2,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Lucian' then
		levelSequence =  { 1,3,2,1,1,4,1,2,1,3,4,3,2,3,2,4,2,3}
	elseif myHero.charName == 'Lulu' then
		levelSequence =  { 1,3,2,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'MasterYi' then
		levelSequence =  { 1,2,3,1,1,4,3,1,3,1,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Malphite' then
		levelSequence =  { 3,2,1,3,3,4,3,1,3,1,4,1,1,2,2,4,2,2}
	elseif myHero.charName == 'Malzahar' then
		levelSequence =  { 3,2,1,3,3,4,1,3,2,3,4,2,2,1,1,4,1,2}
	elseif myHero.charName == 'Maokai' then
		levelSequence =  { 3,1,2,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Mordekaiser' then
		levelSequence =  { 3,2,3,2,1,4,3,1,3,2,4,2,2,3,1,4,1,1}
	elseif myHero.charName == 'Nami' then
		levelSequence =  { 1,2,3,2,2,4,2,3,2,1,4,3,3,3,1,4,1,1}
	elseif myHero.charName == 'Nasus' then
		levelSequence =  { 1,2,3,1,1,4,3,1,2,1,4,3,3,2,3,4,2,2}
	elseif myHero.charName == 'Nautilus' then
		levelSequence =  { 3,1,2,3,3,4,3,2,3,2,4,2,2,1,1,4,1,1}
	elseif myHero.charName == 'Nidalee' then
		levelSequence =  { 1,3,2,1,1,4,3,1,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Nocturne' then
		levelSequence =  { 1,3,2,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Olaf' then
		levelSequence =  { 1,3,2,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Pantheon' then
		levelSequence =  { 1,2,3,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Poppy' then
		levelSequence =  { 1,3,2,1,1,4,2,1,3,1,4,2,2,2,3,4,3,3}
	elseif myHero.charName == 'Quinn' then
		levelSequence =  { 1,3,2,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Rammus' then
		levelSequence =  { 2,1,3,3,2,4,3,3,3,2,4,2,2,1,1,4,1,1}
	elseif myHero.charName == 'RekSai' then
		levelSequence =  { 2,1,3,2,1,4,1,1,2,1,4,3,2,2,3,4,2,3}
	elseif myHero.charName == 'Renekton' then
		levelSequence =  { 2,3,1,1,1,4,1,3,1,3,4,3,2,3,2,4,2,2}
	elseif myHero.charName == 'Rengar' then
		levelSequence =  { 1,3,2,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Rumble' then
		levelSequence =  { 1,3,2,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Ryze' then
		levelSequence =  { 1,2,3,1,1,4,2,1,2,1,4,3,2,3,2,4,3,3}
	elseif myHero.charName == 'Sejuani' then
		levelSequence =  { 2,3,1,2,2,4,2,3,2,3,4,3,3,1,1,4,1,1}
	elseif myHero.charName == 'Shaco' then
		levelSequence =  { 2,3,1,3,3,4,3,2,3,2,4,2,2,1,1,4,1,1}
	elseif myHero.charName == 'Shen' then
		levelSequence =  { 1,3,1,2,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Singed' then
		levelSequence =  { 1,3,1,3,1,4,1,2,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Sion' then
		levelSequence =  { 1,2,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Sivir' then
		levelSequence =  { 1,3,2,1,1,4,3,2,1,2,4,1,2,2,3,4,3,3}
	elseif myHero.charName == 'Skarner' then
		levelSequence =  { 1,2,1,3,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Sona' then
		levelSequence =  { 1,2,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Swain' then
		levelSequence =  { 2,3,3,1,3,4,3,1,3,1,4,1,1,2,2,4,2,2}
	elseif myHero.charName == 'Syndra' then
		levelSequence =  { 1,3,1,2,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'TahmKench' then
		levelSequence =  { 1,2,3,2,2,4,2,1,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Talon' then
		levelSequence =  { 2,3,2,1,2,4,2,1,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Taric' then
		levelSequence =  { 3,1,2,3,3,4,3,2,3,2,4,2,2,1,1,4,1,1}
	elseif myHero.charName == 'Teemo' then
		levelSequence =  { 3,1,2,1,3,4,1,3,1,3,4,3,1,2,2,4,2,2}
	elseif myHero.charName == 'Thresh' then
		levelSequence =  { 3,1,2,3,3,4,3,1,3,1,4,1,1,2,2,4,2,2}
	elseif myHero.charName == 'Tristana' then
		levelSequence =  { 3,1,2,1,1,4,3,1,3,1,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Trundle' then
		levelSequence =  { 1,2,1,3,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Tryndamere' then
		levelSequence =  { 3,1,2,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'TwistedFate' then
		levelSequence =  { 2,1,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Twitch' then
		levelSequence =  { 3,2,3,1,3,4,3,1,3,1,4,1,1,2,2,4,2,2}
	elseif myHero.charName == 'Udyr' then
		levelSequence =  { 4,2,4,3,4,2,4,2,4,3,2,3,2,3,3,1,1,1}
	elseif myHero.charName == 'Urgot' then
		levelSequence =  { 1,3,2,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Zed' then
		levelSequence =  { 1,2,3,1,1,4,1,3,2,1,4,3,3,2,3,4,2,2}
	elseif myHero.charName == 'Varus' then
		levelSequence =  { 1,2,3,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Veigar' then
		levelSequence =  { 1,2,3,2,2,4,1,2,3,1,4,2,1,1,3,4,3,3}
	elseif myHero.charName == 'VelKoz' then
		levelSequence =  { 2,3,1,2,2,4,2,1,2,1,4,1,1,3,3,4,3,3}
	elseif myHero.charName == 'Vi' then
		levelSequence =  { 2,3,1,1,1,4,1,2,3,1,4,3,2,3,2,4,2,3}
	elseif myHero.charName == 'Viktor' then
		levelSequence =  { 1,3,3,2,3,4,3,1,3,1,4,1,2,1,2,4,2,2}
	elseif myHero.charName == 'Vladimir' then
		levelSequence =  { 1,2,1,3,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Volibear' then
		levelSequence =  { 3,2,1,2,2,4,2,3,2,3,4,3,3,1,1,4,1,1}
	-- 1.1 Last Update
	elseif myHero.charName == 'Warwick' then
		levelSequence =  { 2,1,3,1,2,4,2,1,2,1,4,2,1,3,3,4,3,3}
	elseif myHero.charName == 'MonkeyKing' then
		levelSequence =  { 3,1,2,3,3,4,3,1,3,1,4,1,1,2,2,4,2,2}
	elseif myHero.charName == 'Xerath' then
		levelSequence =  { 1,2,3,1,1,4,2,1,2,1,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'XinZhao' then
		levelSequence =  { 1,2,3,1,1,4,2,1,2,1,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Yasuo' then
		levelSequence =  { 1,3,2,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Yorick' then
		levelSequence =  { 3,2,3,1,3,4,3,2,3,2,4,2,2,1,1,4,1,1}
	elseif myHero.charName == 'Zac' then
		levelSequence =  { 1,3,2,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}
	elseif myHero.charName == 'Ziggs' then
		levelSequence =  { 1,3,2,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}	
	elseif myHero.charName == 'Zyra' then
		levelSequence =  { 3,1,2,1,1,4,1,3,1,3,4,3,3,2,2,4,2,2}	
	elseif myHero.charName == 'Zilean' then
		levelSequence =  { 1,2,1,3,1,4,1,3,1,3,4,3,2,3,2,4,2,2}	
	elseif myHero.charName == 'Kindred' then
		levelSequence =  { 1,2,3,1,1,4,1,2,1,2,4,2,2,3,3,4,3,3}
	elseif myHero.charName == 'Illaoi' then
		levelSequence =  { 1,2,3,2,2,4,2,1,2,1,4,1,1,3,3,4,3,3}		
	end
end

function SayHello()
	PrintChat("<font color=\"#BF00FF\">:----------------------------------------------------------------------------------:</b> ")	
	PrintChat("<font color=\"#FFFFFF\">VERSION <font color=\"#FFFF00\">2.0 - Patch 6.1</font> - AUTOLVLSPELL </font><font color=\"#FFFF00\">By: 4SGlaxy </font>")
	PrintChat("<font color=\"#BF00FF\">----------------------------------------------------------------------------------</b> ")	
	PrintChat("<font color=\"#FE2E2E\">THE AutoLvlSpell IS OFF, PLEASE TURN IT ON IN THE MENU</b> ")
	PrintChat("<font color=\"#40FF00\">Welcome & Good Luck!</b> "..myHero.charName)
	PrintChat("<font color=\"#01DFD7\"><b>Working with:</font><b><font color=\"#F7D358\"> 128 / 128 CHAMPS , Have fun. Enjoy</font> ")
	PrintChat("<font color=\"#BF00FF\">:----------------------------------------------------------------------------------:</b> ")
end

function CustomLoad()
	Config = scriptConfig("AutoLvlSpell Manage ", "configname")
	Config:addSubMenu("Activate / Deactivate", "NF")

	Config.NF:addParam("levelSequence", "Status", SCRIPT_PARAM_ONOFF, false)
	Config.NF.levelSequence = false
	Last_LevelSpell = 0
	SayHello()
	Sequence()
	AddTickCallback(function()
		if Config.NF.levelSequence and os.clock() - Last_LevelSpell > 0 then
			autoLevelSetSequence(levelSequence)
			Last_LevelSpell = os.clock() + Human()
		end
	end)
end

function Human()
	return math.random(0.2, 0.6)
end

function OnLoad()
	local version = "0.01";
	local author = "Prot0o";
	local SCRIPT_NAME = "AutoLvlSpell";
	local UPDATE_HOST = "raw.githubusercontent.com";
	local UPDATE_PATH = "/Prot0o/Scripts/master/AutoLvlSpell.lua".."?rand="..math.random(1,10000);
	local UPDATE_FILE_PATH = SCRIPT_PATH.._ENV.FILE_NAME;
	local UPDATE_URL = "https://"..UPDATE_HOST..UPDATE_PATH;
	local ServerData = GetWebResult(UPDATE_HOST, "/Prot0o/Scripts/master/AutoLvlSpell.version");
	if ServerData then
		ServerVersion = type(tonumber(ServerData)) == "number" and tonumber(ServerData) or nil;
		if ServerVersion then
			if tonumber(version) < ServerVersion then
				PrintChat("New version available "..ServerVersion);
				PrintChat(">>Updating, please don't press F9<<");
				DelayAction(function() DownloadFile(UPDATE_URL, UPDATE_FILE_PATH, function () PrintChat("Successfully updated. ("..version.." => "..ServerVersion.."), press F9 twice to load the updated version.") end) end, 3);
			else
				CustomLoad();
			end
		else
			PrintChat("Error while downloading version info");
		end
	end
end
