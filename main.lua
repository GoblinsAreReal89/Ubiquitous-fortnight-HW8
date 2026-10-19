require("L5")




function setup()
  VarClicks = 0
  size(800, 800)
  windowTitle('setup example')

  background(200)
  fill(200,30,30)
  textSize(20)
  text("This is an an imaginary zoo, you'll get a new animal every time you press the mouse, but you'll have to picture it in your head", width/4, height/6, width/2)
  text('Number of animals: '..VarClicks, width/4, height * .9 )


  Blueish = color(0,0,255)
  --Redish = color(255, 0, 0)
  --Greenish = color(0, 255, 0)
  --Blueish = color(0, 0, 255)

end


-- Many arrays
PhylumsArrayText = {"Mollusca", "Echinodermata", "Vertebrata", "Arthropoda"}
-- Text array is used for the text printing

-- Phylum arrays inside of large arrays
PhylumsArrayNested = {MolluscaExtended, EchinodermsExtended, VertebratesExtended, ArthropodsExtended}

MolluscaExtended = {"Whelk", "Snail", "Slug",  "Squid", "Octopus", "Shellfish", "Oyster", "Scallop"}
EchinodermsExtended = {"Sea Star", "Brittle Star", "Urchin", "Sea Cucumber", "Sand Dollar", "Sea Lilly", "Feather Star",}
VertebratesExtended = {"Frog", "Toad", "Shark", "Elephant", "Deer", "Lion", "Anteater", "Gecko", "Owl", 
"Mouse", "Turkey", "Human", "Trout", "Salmon", "Bear", "Wolf", "Dog", "Cat", "Rabbit", "Squirrel", "Vulture", "Condor", "Pidgeon"}
ArthropodsExtended = {"Ant", "Termite", "Spider", "Centipede", "Milipede", "Scorpion", "Beetle", "Fly", 
"Cockroach", "Bee", "Hornet", "Mosquito", "Dragonfly", "Earwig", "Flea", "Grasshopper", "Locust", "Lightningbug", "Antlion", 
"Mite", "Aphid", "Louse", "Butterfly", "Gnat", "Ladybug" }

--Adjectives work fine don't worry about this guy 
AdjectivesArray = {'foul', 'evil', 'intimidating', 'cunning', 'short', 'squishy', 'heoric', 'benevolent', 
'crafty', 'fickle', 'tricky', 'furtive', 'wise', 'humble', 'oblivious', 'attentive','sensitive','empathetic',
'feeble','burly','smelly','pristine','corrupt','humorous','mirthful','catastrophic','feminine','masculine',
'genderless','genderful','hairy','hairless','liquid','solid','gaseous','watchful','plasmatic','molten',
'hideous','exquisite','spectacular','miraculous','curly','arrow-like','orderly','chaotic','charismatic','dogmatic','dexterous',
'highly-educated','accusitory','scrappy','abscent', 'stubborn','addictive','pretentious','fair-weather','lucky','performative','two-faced','imaginary',
'weak-in-mind','spiritual','well-read','bookworm','dorkish','microscopic','ginormous','talented','injury-prone','immature','two-bit','easily-fooled',
'easily-entertained','cheesy','italian','vegan','blood-donor','radioactive','outspoken','authoritative','despot','new-age'}



TempVariableGummy = 0 
TempVariableSticky = 0
TempVariableFamily = 0
TempVariableEchinoDerm = 0
TempVariableVertebrate = 0
TempVariableMoll = 0
TempVariableArthropod = 0


function mousePressed() 
  noStroke()
  VarClicks = VarClicks + 1
  background(200)
  fill(200,30,30)
  textSize(20)
  text("This is an an imaginary zoo, you'll get a new animal every time you press the mouse, but you'll have to picture it in your head", width/4, height/6, width/2)
  text('Number of animals: '..VarClicks, width/4, height * .9 )

  
  fill(230,30,30,180)
  for i = 1, VarClicks, 1 do
      circle((random(50,width-50)), random(50,height-50),random(5,25))
  end


-- Random number generator (1 to 4) for which phylum is picked in large array
  TempVariableFamily = round(random(1,100))
  --text('TempVarFirst: ' ..TempVariableFamily, width/3, height/2 -45)
  TempVariableFamily = round(TempVariableFamily / 25)
  if TempVariableFamily == 0 then
    TempVariableFamily = 1
  end
--If temp var family is a random from 1-4 the results are uneven, so I had to slant it so that they're more fair
--If I don't have the if Variable is 0 then it's 1 then some low values will just be blank
  --text('TempSecond: ' ..TempVariableFamily, width/3, height/2 +45)
  TempVariableSticky = round(random(1,25))
  TempVariableGummy = round(random(1,83))
  TempVariableEchinoDerm = round(random(1,7))
  TempVariableVertebrate = round(random(1,23))
  TempVariableMoll = round(random(1,8))
  TempVariableArthropod = round(random(1,25))
  


-- TO DO LATER: Code that reacts to the sub phylum array length and grabs a new random number (New random ceiling could be like 5 or 40)

  textSize(35)
if TempVariableFamily == 1 then
    fill(155,0,155)
    text('Animal: ' ..MolluscaExtended[TempVariableMoll], width/3, height/2 +15)
    text('Phylum: ' ..PhylumsArrayText[TempVariableFamily], width / 3, height/2 - 15)
elseif TempVariableFamily == 2 then
    fill(0,155,155)
    text('Animal: ' ..EchinodermsExtended[TempVariableEchinoDerm], width/3, height/2 + 15)
    text('Phylum: ' ..PhylumsArrayText[TempVariableFamily], width/3, height/2 - 15)
elseif TempVariableFamily == 3 then
    fill(245,245,0)
    text('Animal: ' ..VertebratesExtended[TempVariableVertebrate], width/3, height/2 + 15)
    text('Phylum: ' ..PhylumsArrayText[TempVariableFamily], width/3, height/2 - 15)
elseif TempVariableFamily == 4 then
    fill(80,80,80)
    text('Animal: ' ..ArthropodsExtended[TempVariableArthropod], width/3, height/2 + 15)
    text('Phylum: ' ..PhylumsArrayText[TempVariableFamily], width/3, height/2 - 15)
end
    text("Trait: "..AdjectivesArray[TempVariableGummy], width/3, height/2 + 45)


fill(Blueish)

  --text('My pet was from the ' ..(PhylumsArrayText[TempVariableFamily]).. " phylum.", width /4, height/3)

  --text("Imagine, if you will, a " ..(ArthropodsExtended[TempVariableSticky]).. ", that's incredibly " ..(AdjectivesArray[TempVariableGummy]).. ".",width/4, height/2)

end


function draw()
end





