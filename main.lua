require("L5")




function setup()
  size(500, 500)
  windowTitle('setup example')

  background(200)

  -- Draw the circle.
  circle(50, 50, 40)

  describe('A white circle on a gray background.')
end

--PizzaToppingsCode = {1, 2, 3}
PizzaToppingsKey = {"Pepperoni", "Pineapple", "Peppers"} 
TempVariableGummy = 0 
round(random(1,3.99))
PepperOutcomes = 0
PineOutcomes = 0
PeppOutcomes = 0
PizzaToppingsOutcomes = {PeppOutcomes,PineOutcomes,PepperOutcomes}



function mousePressed() 
TempVariableGummy = round(random(1,4))
  text("This is the key " ..(TempVariableGummy).. " tempvar value.",mouseX, mouseY - 15, 200)
  
  text("I want a pizza with " ..(PizzaToppingsKey[TempVariableGummy]).. " please.",mouseX, mouseY + 15, 200)


--Messy code for tracking the results that crashes
if TempVariableGummy == 1 then
PeppOutcomes = PeppOutcomes + 1
elseif TempVariableGummy == 2 then
PineOutcomes = PineOutcomes +1
elseif TempVariableGummy == 3 then
PepperOutcomes = PepperOutcomes + 1
end
--Simple code for tracking the results that also crashes


end

function draw()
  fill(100)
  rect(10, 10, 200, 20)
  fill(255)
  text("The outcomes:" ..(PeppOutcomes).." "..(PineOutcomes).." "..(PepperOutcomes),10,10,200)
end