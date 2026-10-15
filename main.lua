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

--PizzaToppingsCode = {1, 2, 3}
PhylumsArrayText = {"Mollusa", "Echinodermata", "Vertebrata", "Arthropoda"}
PhylumsArrayNested = {MolluscaExtended, EchinodermsExtended, VertebratesExtended, ArthropodsExtended}
MolluscaExtended = {"Whelk", "Snail", "Slug", "Squid", "Octopus", "Shellfish", "Oyster", "Scallop"}
EchinodermsExtended = {"Sea Star", "Brittle Star", "Urchin", "Sea Cucumber", "Sand Dollar", "Sea Lilly", "Feather Stars"}
VertebratesExtended = {"Frog", "Toad", "Shark", "Elephant", "Deer", "Lion", "Anteater", "Gecko", "Owl", 
"Mouse", "Turkey", "Human", "Trout", "Salmon", "Bear", "Wolf", "Dog", "Cat", "Rabbit", "Squirrel", "Vulture", "Condor", "Pidgeon"}
ArthropodsExtended = {"Ant", "Termite", "Spider", "Centipede", "Milipede", "Scorpion", "Beetle", "Fly", 
"Cockroach", "Bee", "Hornet", "Mosquito", "Dragonfly", "Earwig", "Flea", "Grasshopper", "Locust", "Lightningbug", "Antlion", 
"Mite", "Aphid", "Louse", "Butterfly", "Gnat", "Ladybug" }
AdjectivesArray = {'foul', 'evil', 'intimidating', 'cunning', 'short', 'squishy', 'heoric', 'benevolent', 
'crafty', 'fickle', 'tricky', 'furtive', 'wise', 'humble', 'oblivious', 'attentive','sensitive','empathetic',
'feeble','burly','smelly','pristine','corrupt','humorous','mirthful','catastrophic','feminine','masculine',
'genderless','genderful','hairy','hairless','liquid','solid','gaseous','watchful','plasmatic','prismastic','molten',
'hideous','exquisite','spectacular','miraculous','curly','arrow-like','orderly','chaotic','charismatic','dogmatic','dexterous',
'highly-educated','accusitory','scrappy','abscent'}



TempVariableGummy = 0 
round(random(1,34,1))
PepperOutcomes = 0
PineOutcomes = 0
PeppOutcomes = 0
PizzaToppingsOutcomes = {PeppOutcomes,PineOutcomes,PepperOutcomes}



function mousePressed() 
    background(200)
TempVariableGummy = round(random(1,34,1))

TempVariableSticky = round(random(1,34,1))

fill(Blueish)

  text("Imagine, if you will, a " ..(ArthropodsExtended[TempVariableSticky]).. ", that's incredibly " ..(AdjectivesArray[TempVariableGummy]).. ".",width/4, height/2)


--Messy code for tracking the results that crashes
    if TempVariableGummy == 1 then
      PeppOutcomes = PeppOutcomes + 1
    elseif TempVariableGummy == 2 then
      PineOutcomes = PineOutcomes +1
    elseif TempVariableGummy == 3 then
      PepperOutcomes = PepperOutcomes + 1
    end
  end

function draw()
  fill(100)
  rect(10, 10, 200, 20)
  fill(255)
  text("The outcomes:" ..(PeppOutcomes).." "..(PineOutcomes).." "..(PepperOutcomes),10,10,200)
end