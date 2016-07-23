include image

data Cake:
  | cake(
      flavor      :: String,
      color       :: String,
      message     :: String,
      layers      :: Number,
      is-iceCream :: Boolean)
end

cake1 = cake("Vanilla", "white", "Happy wedding!", 4, false)
cake2 = cake("Chocolate", "brown", "Happy birthday!", 8, false)
cake3 = cake("Vanilla", "pink", "Congratulations on the great  report card!", 4, false)
cake4 = cake("Red Velvet", "darkred", "Sheet cake!", 2, true)


#####################################
# change-flavor : Cake, String -> Cake
# Given a Cake and a flavor, return a new Cake that is the same as the original, but with the given flavor
fun change-flavor(a-cake, new-flavor):
  "fix me!"
end

#####################################
# will-melt : Cake, Number -> Boolean
# Given a Cake and a temperature, return true if the temp is greater than 32 degrees, AND the Cake is an ice cream cake
fun will-melt(a-cake, temp):
  "fix me!"
end


































########################################
# DON'T CHANGE ANYTHING BELOW THIS LINE!
########################################




# draw-layer : String -> Image
# draw a single later of the cake, using the right icing color
fun draw-layer(color):
  overlay(rectangle(4 * 80, 4 * 8, "solid", color),
    overlay-xy(
      overlay(
        ellipse(4 * 80, 4 * 40, "outline", "black"),
        ellipse(4 * 80, 4 * 40, "solid", color)),
      0, 2 * 12,
      overlay(
        ellipse(4 * 80, 4 * 40, "outline", "black"),
        ellipse(4 * 80, 4 * 40, "solid", color))
      )
    )
end

# wrap : String, Image, Number -> Image
# Consumes a string, an image, and the numbber of
# the lines remaining. Produces an image with a 30-char
# string on each line
fun wrap(s, img, lines):
  ask: 
    | lines == 0 then: img
    | otherwise:
      slice = num-min(30, string-length(s))
      next-line = string-append(string-substring(s, 0, slice), "\n")
      remaining = string-substring(s, slice, string-length(s))
      wrap(remaining, 
        above-align("center", img,
          text-font(next-line, 20, "black", "Arial", "swiss", 
            "italic", "bold", false)),
        lines - 1)
  end
end

# draw-cake : Cake -> Image
# Consumes a Cake, and produces an image using as many fields as possible
fun draw-cake(c):
  ask:
    | c.layers == 0 then:
      text("ERROR: a cake cannot have 0 layers!", 20, "red")
    | c.layers == 1 then:
      msg = if string-length(c.message) > 85: 
        string-append(string-substring(c.message,0,85), "...")
      else: c.message end
      put-image(
        wrap(msg, empty-scene(0,0), 3),
        160, 100,
        draw-layer(c.color))
    | otherwise:
      bottom = draw-layer(c.color)
      top    = draw-cake(cake(c.flavor, c.color, c.message, c.layers - 1, c.is-iceCream))
      overlay-xy(
        top,
        (image-width(top) / 2) - (image-width(bottom) / 2), c.layers * 2 * 12,
        bottom)
  end
end


layer = draw-layer("red")