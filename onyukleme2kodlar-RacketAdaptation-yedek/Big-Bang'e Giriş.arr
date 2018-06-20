# include the image and world libraries, so we can use them
include image 
include world

# We want to keep track of the x-position of the dog, 
# which is just a Number. Here are some sample Numbers:
numberA = 0
numberB = 42

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

# draw-world : Number -> Image
# Place DANGER onto BACKGROUND at the right coordinates
fun draw-world(current-world):
  put-image(DOG-IMG, current-world, 400, BACKGROUND-IMG)
end

####################
# UPDATING FUNCTIONS
####################

# next-world : Number -> Number
# Add 10 dog's x-coordinate
fun next-world(current-world):
  current-world + 10
end

###################################
# big-bang using the START world
# on a tick-event, use next-world
# on a draw-event, use draw-world 
###################################

big-bang(numberA, 
  [list:
    #    on-tick(next-world)
    #    ,to-draw(draw-world)
  ])