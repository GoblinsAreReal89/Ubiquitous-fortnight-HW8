require("L5")


function setup()
  size(100, 100)
  windowTitle('setup example')

  background(200)

  -- Draw the circle.
  circle(50, 50, 40)

  describe('A white circle on a gray background.')
end

--function mousePressed() 
--ellipse(mouseX, mouseY, 20, 20)
--end