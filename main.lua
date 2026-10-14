require("L5")




function setup()
  size(800, 800)
  windowTitle('setup example')

  background(200)

  -- Draw the circle.
  circle(50, 50, 40)

  describe('A white circle on a gray background.')
  Blueish = color(0,0,255)

end

--PizzaToppingsCode = {1, 2, 3}
PizzaToppingsKey = {"Pepperoni", "Pineapple", "Peppers", "Sausage", "Funny Anchovy", }
SizeText = {"Personal", "Small", "Regular", "Large", "X-Large"} 
--Redish = color(255, 0, 0)
--Greenish = color(0, 255, 0)
--Blueish = color(0, 0, 255)
TempVariableGummy = 0 
round(random(1,3.99))
PepperOutcomes = 0
PineOutcomes = 0
PeppOutcomes = 0
PizzaToppingsOutcomes = {PeppOutcomes,PineOutcomes,PepperOutcomes}



function mousePressed() 
    background(200)
TempVariableGummy = round(random(.6,5.4))

TempVariableSticky = round(random(.6,5.4))

fill(Blueish)

  text("I want a " ..(SizeText[TempVariableSticky]).. " pizza with " ..(PizzaToppingsKey[TempVariableGummy]).. " please.",width/4, height/2)


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