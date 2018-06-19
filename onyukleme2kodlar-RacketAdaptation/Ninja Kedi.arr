# include the image and world libraries, so we can use them
include image 
include world

# The World is the x-coordinate of the dog and coin.
data World:
  | world(
      dogX  :: Number,
      coinX :: Number,
      catX  :: Number,
      catY  :: Number
      )
end

# Two sample worlds
worldA = world(0, 400, 320, 240)
worldB = world(200, 1000, 320, 75)

# Define a bunch of images that we can use later
BACKGROUND-IMG = image-url(
  "http://www.bootstrapworld.org/clipart/Curriculum/bg.jpg")
DOG-IMG = flip-horizontal(image-url(
    "http://www.bootstrapworld.org/clipart/Curriculum/dog.png"))
COIN-IMG = image-url(
  "http://www.bootstrapworld.org/clipart/Curriculum/coin.png")
NINJA-IMG = image-url(
  "http://www.bootstrapworld.org/clipart/Curriculum/ninja.png")
CLOUD-IMG = image-url(
  "http://www.bootstrapworld.org/clipart/Curriculum/clouds.png")

####################
# GRAPHICS FUNCTIONS
####################

# draw-world:  World -> Image
# Place DOG-IMG, CLOUD-IMG, COIN-IMG, and NINJA-IMG onto BACKGROUND-IMG at the right coordinates
fun draw-world(current-world):
  put-image(DOG-IMG,
    current-world.dogX, 400,
    put-image(CLOUD-IMG,
      500, 400,
      put-image(NINJA-IMG,
        current-world.catX, current-world.catY,
        put-image(COIN-IMG,
          current-world.coinX, 300,
          BACKGROUND-IMG))))
end


####################
# UPDATING FUNCTIONS
####################

# next-world : World -> World
# Add 10 dog's x-coordinate, subtract 5 from the coin's x
fun next-world(current-world):
  world(current-world.dogX + 10, current-world.coinX - 5, current-world.catX, current-world.catY)
end

#############
# KEY EVENTS:
#############

# keypress : World, String -> World
# Make cat respond to key events
examples:
  keypress(worldA, "up") is
  world(worldA.dogX, worldA.coinX, worldA.catX, worldA.catY + 10)
  keypress(worldB, "up") is
  world(worldB.dogX, worldB.coinX, worldB.catX, worldB.catY + 10)
end

fun keypress(current-world, key):
  ask:
    | string-equal(key, "up") then: 
      world(current-world.dogX, current-world.coinX, current-world.catX, current-world.catY + 10)
    | otherwise: current-world
  end
end

###################################
# big-bang using the START world
# on a tick-event, use next-world
# on a draw-event, use draw-world 
###################################

big-bang(worldA, 
  [list:
    on-tick(next-world)
    ,to-draw(draw-world)
    ,on-key(keypress)
  ])