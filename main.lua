require("L5")

SwampPic = loadImage("assets/Swamp2.jpg")

function setup()
  size(800, 500)
  --The background code is just from a previous version
  background(180,180,210)
  imageMode(CENTER)
  image(SwampPic,width/2,height/2,width)
end

function draw()
  --Background
  image(SwampPic,width/2,height/2,width)

  --This is the red effect for the fire
  stroke(200,0)
  strokeWeight(0.01)
  fill(200,100,100,60)
  bezier(-10,325,-50,-200,100,250,400,270)
  bezier(-10,325,-10,-300,100,250,400,250)

  --This is the orange effect in the fire
  fill(200,100,40,60)
  bezier(-10,315,-50,-120,80,22,390,270)


  --These are the shapes for the plane
  fill(70,70,100)
  triangle(330,100,380,95,365,105)
  quad(367,110,361,110,346,78,350,78)
  triangle(330,75,360,73,350,81)



-- This for loop repeats my bezier a few times to create a smoke effect 
      for x=10,140,20 do
        fill(240,210)
        bezier(360- (x * .1),120,330,68,370 - x,300,320 - x * 1.1,255 - x * .3)
      end
end





