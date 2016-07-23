include image

##################
# BOOTSTRAP REVIEW
##################

AGE = 14
A-NUMBER = 0.6
SPEED = -90

CLASS = "Bootstrap"
PHRASE = "Coding is fun!"
A-STRING = "2500"

SHAPE = triangle(40, "outline", "red")
OUTLINE = star(80, "solid", "green")
SQUARE = rectangle(50, 50, "solid", "blue")

BOOL = true

# double: Number -> Number
# Given a number, multiply by 2 to double it
examples:
  double(5) is 2 * 5
  double(7) is 2 * 7
end

fun double(n):
  2 * n
end