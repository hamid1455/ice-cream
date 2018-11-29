local module = {}

local Names = {
	'Vanilla Bro',
	'Noop',
	'McCool',
	'Frosty',
	'Rainy',
	'Sunshine',
	'Chocoboy',
	'Wiz',
	'Flamer',
	'Freezer',
	
	-- Halloween
	'Skelescoop',
	'Anubis',
	'PuffPuff',
	'Wicca',
	'Ghosty',
	'Jason',
	'Pumpking',
	'Unicorn',
	
	-- Dragon Series 1
	'Firebrand',
	'Frostbite',
	'Malefic',
	'Voltaire',
	'Verdos',
	
	-- Jackolantern
	'King Jack',
	'Bob',
	'Happy Jack',
	'Sam',
	'Demon Bro',
	
	-- 10/27/2018
	'Molten Bro',
	'Candy Sis',
	'Glow Bro',
	'Nebulad',
	'Sis Fro',
	
	-- SkyLand Update
	'Builderman',
	'Gold Unicorn',
	'Wingman',
	'Fairy Sis',
	'Devil Bro',
	
	-- Fairies (Skyland Part 2)
	'Fire Fairy',
	'Water Fairy',
	'Nature Fairy',
	'Light Fairy',
	'Tooth Fairy',
	
	-- Fantasy (Skyland Mini-Update - Part 3)
	'Wiz Bro',
	'Pyro Bro',
	'Jelly Trog',
	'Berry Magician',
	'Mush King',
	
	-- Skyland part 4
	'Ducky',
	'Bloo Boi',
	'Dopey',
	'Trio Bros',
	'Spikey',
	
	-- Youtuber Pets
	'Blueso',
	'BriteBot',
	'Darzeth',
	'Gravy',
	'Defild',
}

local Bonus = {
	2,
	4,
	6,
	8,
	12,
	20,
	35,
	50,
	75,
	90,
	
	-- Halloween
	78,
	115,
	130,
	160,
	185,
	200,
	225,
	250,
	
	-- Dragon Series 1
	115,
	160,
	200,
	280,
	325,
	
	-- Jack-O-Lantern Series
	350,
	375,
	400,
	425,
	450,
	
	-- 10/27/2018
	475,
	490,
	515,
	530,
	555,
	
	-- SkyLand Update
	575,
	600,
	625,
	650,
	675,
	
	-- Fairy Update (Skyland Part 2)
	700,
	725,
	750,
	775,
	800,
	
	-- Fantasy (Skyland Mini-Update - Part 3)
	825,
	850,
	875,
	900,
	925,
	
	-- Skyland part 4
	950,
	975,
	1000,
	1250,
	1400,
	
	-- Youtubers
	2000,
	2000,
	2000,
	2000,
	2000,
}

local Cost = {
	250,
	500,
	1000,
	5000,
	10000,
	30000,
	60000,
	125000,
	500000,
	1000000,
	
	-- Halloween
	750000,
	5000000,
	8000000,
	15000000,
	30000000,
	60000000,
	90000000,
	100000000,
	
	-- Dragon Series 1
	5000000,
	15000000,
	60000000,
	250000000,
	375000000,
	
	-- Jack-O-Lantern Series
	500000000,
	700000000,
	900000000,
	1250000000,
	1500000000,
	
	-- 10/27/2018
	1850000000,
	2000000000,
	2250000000,
	2500000000,
	2750000000,
	
	-- SkyLand Update
	3000000000,
	3250000000,
	3500000000,
	3750000000,
	4000000000,
	
	-- Fairy (Skyland Part 2)
	4250000000,
	4500000000,
	4750000000,
	5000000000,
	5250000000,
	
	-- Fantasy (Skyland Part 3)
	-1,
	-1,
	-1,
	-1,
	-1,
	
	-- Skyland part 4
	-1,
	-1,
	-1,
	-1,
	-1,
	
	-- Youtubers
	-1,
	-1,
	-1,
	-1,
	-1,
}

local Images = {
	'rbxgameasset://Images/PetIcon1',
	'rbxgameasset://Images/PetIcon2',
	'rbxgameasset://Images/PetIcon3',
	'rbxgameasset://Images/PetIcon4',
	'rbxgameasset://Images/PetIcon5',
	'rbxgameasset://Images/PetIcon6',
	'rbxgameasset://Images/PetIcon7',
	'rbxgameasset://Images/PetIcon8',
	'rbxgameasset://Images/PetIcon9',
	'rbxgameasset://Images/PetIcon10',
	
	-- Halloween Pets
	'rbxassetid://2495998019',
	'rbxassetid://2496003555',
	'rbxassetid://2496004150',
	'rbxassetid://2496004809',
	'rbxassetid://2496005330',
	'rbxassetid://2496005784',
	'rbxassetid://2496006682',
	'rbxassetid://2496007426',
	
	-- Dragon Series 1
	'rbxgameasset://Images/Firebrand',
	'rbxgameasset://Images/Frostbite',
	'rbxgameasset://Images/Malefic',
	'rbxgameasset://Images/Voltaire',
	'rbxgameasset://Images/Verdos',
	
	-- Jack-O-Lantern Series
	'rbxgameasset://Images/KingJackIcon',
	'rbxgameasset://Images/BobIcon',
	'rbxgameasset://Images/HappyJackIcon',
	'rbxgameasset://Images/SamIcon',
	'rbxgameasset://Images/DemonBroIcon',
	
	-- 10/27/2018
	'rbxassetid://2521377882',
	'rbxassetid://2521377781',
	'rbxassetid://2521377844',
	'rbxassetid://2521377932',
	'rbxassetid://2521377971',
	
	-- SkyLand Update
	'rbxassetid://2530856629', -- 34
	'rbxassetid://2530856714',
	'rbxassetid://2530856749',
	'rbxassetid://2530856693',
	'rbxassetid://2530856665',
	
	-- Fairies (Skyland Part 2)
	'rbxassetid://2539138122',
	'rbxassetid://2539138490',
	'rbxassetid://2539138304',
	'rbxassetid://2539138207',
	'rbxassetid://2539138382', -- 43
	
	-- Fantasy (Skyland Part 3)
	'rbxassetid://2554464800',
	'rbxassetid://2554464754',
	'rbxassetid://2554464699',
	'rbxassetid://2554464638',
	'rbxassetid://2554464726',
	
	-- Skyland Part 4
	'rbxassetid://2564933670',
	'rbxassetid://2564933522',
	'rbxassetid://2564933604',
	'rbxassetid://2564933811',
	'rbxassetid://2564933748',
	
	-- Youtubers
	'rbxassetid://2582110543',
	'rbxassetid://2582110598',
	'rbxassetid://2582110655',
	'rbxassetid://2582110754',
	'rbxassetid://2582110709',
}

function module:GetNames()
	return Names
end

function module:GetName(Index)
	return Names[Index]
end

function module:GetBonus(Index)
	return Bonus[Index]
end

function module:GetCost(Index)
	return Cost[Index]
end

function module:GetImage(Index)
	return Images[Index]
end

return module
