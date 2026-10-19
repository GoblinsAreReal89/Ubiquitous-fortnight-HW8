require("L5")




function setup()
  size(800, 800)
  windowTitle('setup example')

  background(200)

  -- Draw the circle.
  circle(50, 50, 40)

  describe('A white circle on a gray background.')
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

MolluscaExtended = {"Whelk", "Snail", "Slug", "Squid", "Octopus", "Shellfish", "Oyster", "Scallop"}
EchinodermsExtended = {"Sea Star", "Brittle Star", "Urchin", "Sea Cucumber", "Sand Dollar", "Sea Lilly", "Feather Star"}
VertebratesExtended = {"Frog", "Toad", "Shark", "Elephant", "Deer", "Lion", "Anteater", "Gecko", "Owl", 
"Mouse", "Turkey", "Human", "Trout", "Salmon", "Bear", "Wolf", "Dog", "Cat", "Rabbit", "Squirrel", "Vulture", "Condor", "Pidgeon"}
ArthropodsExtended = {"Ant", "Termite", "Spider", "Centipede", "Milipede", "Scorpion", "Beetle", "Fly", 
"Cockroach", "Bee", "Hornet", "Mosquito", "Dragonfly", "Earwig", "Flea", "Grasshopper", "Locust", "Lightningbug", "Antlion", 
"Mite", "Aphid", "Louse", "Butterfly", "Gnat", "Ladybug" }

--Adjectives work fine don't worry about this guy 
AdjectivesArray = {'foul', 'evil', 'intimidating', 'cunning', 'short', 'squishy', 'heoric', 'benevolent', 
'crafty', 'fickle', 'tricky', 'furtive', 'wise', 'humble', 'oblivious', 'attentive','sensitive','empathetic',
'feeble','burly','smelly','pristine','corrupt','humorous','mirthful','catastrophic','feminine','masculine',
'genderless','genderful','hairy','hairless','liquid','solid','gaseous','watchful','plasmatic','prismastic','molten',
'hideous','exquisite','spectacular','miraculous','curly','arrow-like','orderly','chaotic','charismatic','dogmatic','dexterous',
'highly-educated','accusitory','scrappy','abscent'}



TempVariableGummy = 0 
TempVariableSticky = 0
TempVariableFamily = 0
TempVariableEchinoDerm = 0
TempVariableVertebrate = 0
TempVariableMoll = 0
TempVariableArthropod = 0

function mousePressed() 
    background(200)


-- Random number generator (1 to 4) for which phylum is picked in large array
  TempVariableFamily = round(random(1,100))
  text('TempVarFirst: ' ..TempVariableFamily, width/3, height/2 -45)
  TempVariableFamily = round(TempVariableFamily / 25)
  if TempVariableFamily == 0 then
    TempVariableFamily = 1
  end
--If temp var family is a random from 1-4 the results are uneven, so I had to slant it so that they're more fair
--If I don't have the if Variable is 0 then it's 1 then some low values will just be blank
  text('TempSecond: ' ..TempVariableFamily, width/3, height/2 +45)
  TempVariableSticky = round(random(1,25))
  TempVariableGummy = round(random(1,50))
  TempVariableEchinoDerm = round(random(1,7))
  TempVariableVertebrate = round(random(1,23))
  TempVariableMoll = round(random(1,8))
  TempVariableArthropod = round(random(1,25))
  
  

-- TO DO LATER: Code that reacts to the sub phylum array length and grabs a new random number (New random ceiling could be like 5 or 40)

  textSize(25)
if TempVariableFamily == 1 then
    fill(155,0,155)
    text('Animal: ' ..MolluscaExtended[TempVariableMoll].. ", Okay?", width/3, height/2 +15)
    text('Phylum: ' ..PhylumsArrayText[TempVariableFamily].. ", got it?", width / 3, height/2 - 15)
elseif TempVariableFamily == 2 then
    fill(0,155,155)
    text('Animal: ' ..EchinodermsExtended[TempVariableEchinoDerm].. ", Okay?", width/3, height/2 + 15)
    text('Phylum: ' ..PhylumsArrayText[TempVariableFamily].. ", got it?", width/3, height/2 - 15)
elseif TempVariableFamily == 3 then
    fill(245,245,0)
    text('Animal: ' ..VertebratesExtended[TempVariableVertebrate].. ", Okay?", width/3, height/2 + 15)
    text('Phylum: ' ..PhylumsArrayText[TempVariableFamily].. ", got it?", width/3, height/2 - 15)
elseif TempVariableFamily == 4 then
    fill(80,80,80)
    text('Animal: ' ..ArthropodsExtended[TempVariableArthropod].. ", Okay?", width/3, height/2 + 15)
    text('Phylum: ' ..PhylumsArrayText[TempVariableFamily].. ", got it?", width/3, height/2 - 15)
end


fill(Blueish)

  --text('My pet was from the ' ..(PhylumsArrayText[TempVariableFamily]).. " phylum.", width /4, height/3)

  --text("Imagine, if you will, a " ..(ArthropodsExtended[TempVariableSticky]).. ", that's incredibly " ..(AdjectivesArray[TempVariableGummy]).. ".",width/4, height/2)

end


function draw()
end





