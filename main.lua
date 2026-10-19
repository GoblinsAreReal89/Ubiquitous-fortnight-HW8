require("L5")

FriendScreen = loadImage("assets/friendScreen.png")

function setup()
  size(600, 600)
  background(180,180,210)
  --loadImage("C:\users\benry\oneDrive\pictures\documents\gitHub\glowing-Rock-HW9\assets\friendScreen.png")
  imageMode(CENTER)

end

function draw()
  noTint()
  background(180,180,210)
  --noStroke()
  --circle(mouseX,mouseY,30)
  noTint()
  image(FriendScreen,mouseX,mouseY - 90,width/8)
  tint(60,60,150)
  image(FriendScreen,mouseX + 90 ,mouseY,width/8)
  tint(60,150,60)
  image(FriendScreen,mouseX,mouseY,width/8)
  tint(150,60,30)
  image(FriendScreen,mouseX - 90 ,mouseY,width/8)
  noTint()

end





