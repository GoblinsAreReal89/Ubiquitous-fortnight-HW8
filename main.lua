require("L5")

width = 1920 * .6
height = 1080 * .6
heightThird = height * .33333
heightSixth = height / 6
widthThird = width * .333333
widthSixth = width / 6
OnePercentHeight = height / 100
OnePercentWidth = width / 100

XCenterLeft = widthSixth
XCenter = width / 2
XCenterRight = widthThird + widthThird + widthSixth

YTop =  heightSixth
YCenter = height / 2
YBottom = heightThird + heightThird + heightSixth


VanishingPointY = heightThird + heightSixth
VanishingPointX = widthSixth + (OnePercentWidth * 10)




function setup()
  size(1920 * .6 , 1080 * .6)

  -- Set the program title
  windowTitle("Basic sketch")

  describe('Draws a yellow background')


end

function draw()

    Whatever = color(120, 200, 200) 
    
    BottomReactive = color(210 - (mouseX/width * 110), 200 - (mouseX/width * 95 ), 200 - (mouseX/width * 80))
    SeaReactive = color(100 - (mouseX/width * 70), 160 - (mouseX/width * 50 ), 160 - (mouseX/width * 20))
    SunBasic = color(250, 240, 130)
    SunAdvanced = color(250 - (mouseX/width * 245), 250 - (mouseX/width * 270), 220 - (mouseX/width * 150))
    Building = color(180 - (mouseX/width * 120), 150 - (mouseX/width * 100 ), 120 - (mouseX/width * 30))
    Night = 0
  background(SunAdvanced)


  fill(SeaReactive)
  rect(XCenter ,YBottom - height * .02, width, heightThird * 1.2)


  fill(BottomReactive)
  rect(XCenterLeft + width * 0.2 ,YBottom + height * .02, width *.85, heightThird * .95)
  




sunpointLeft = mouseX - width *.03
sunpointRight = mouseX + width *.03
sunpointTop = mouseY - width *.03
sunpointBottom = mouseY + width *.03
sunsharpness = 150 -  (140 *(mouseX/width))

  noStroke()

if (mouseX/width) < .6 then 
  Night = 0
  fill(SunBasic)
    circle(mouseX,mouseY,width * .1)
triangle(sunpointLeft, sunpointTop, sunpointRight, sunpointTop, mouseX, mouseY - sunsharpness)
triangle(sunpointLeft, sunpointTop, sunpointLeft, sunpointBottom, mouseX - sunsharpness, mouseY)
triangle(sunpointLeft, sunpointBottom, sunpointRight, sunpointBottom, mouseX, mouseY + sunsharpness)
triangle(sunpointRight, sunpointBottom, sunpointRight, sunpointTop, mouseX + sunsharpness, mouseY)
else
  Night = 1
  fill(230, 245, 255)
    circle(mouseX,mouseY,width * .1)


end

  
if (mouseX/width) < .6 then 
  fill(0,0,0,0)
else
  fill(SunAdvanced)
end
  circle(mouseX - width * .01, mouseY - height * .05, mouseX * .15)





  rectMode(CENTER)
  noStroke()
  fill(Building)
  rect(widthSixth * .45, heightThird * 2.18 - (OnePercentHeight * 5), widthThird * .26, heightSixth * 1.15)

  rect(widthSixth * .7, heightThird * 2.1 - (OnePercentHeight * 5), widthThird * .2, heightSixth * 1.9)

  rect(widthSixth, heightThird * 1.8, widthThird * .20, heightSixth * 2.4)

  rect(widthSixth * .1, heightThird * 1.8, widthThird * .20, heightSixth * 1.9)

  rect(widthSixth * 1.6, heightThird * 2 - (OnePercentHeight * 9), widthThird * .18, heightSixth * 1.9)

  rect(widthSixth * 1.8, heightThird * 2 - (OnePercentHeight * 5), widthThird * .22, heightSixth * 1.9)

  rect(widthThird * 1.2, heightThird * 2 - (OnePercentHeight * 3), widthThird * .20, heightSixth * 1.2)

  rect(widthThird * 1.7, heightThird * 2.15, widthThird * .16, heightSixth * .5)

  rect(widthThird * 1.5, heightThird * 1.8 - (OnePercentHeight * 5), widthThird * .22, heightSixth * 2.2)

  rect(widthThird * 2.2, heightThird * 2.1 - (OnePercentHeight * 5), widthThird * .22, heightSixth * 1.8)

  rect(widthThird *2, heightThird * 2, widthThird * .22, heightSixth * 1)
  
  rect(widthThird *1.3, heightThird * 2, widthThird * .22, heightSixth * 1.1)



  

  fill(Building)
  rect(width * .6, height * .42, width * .15, height * .7)


end