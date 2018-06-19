include image

##################
# ÖNYÜKLEME TEKRAR
##################

YAŞ = 14
BİR-SAYI = 0.6
HIZ = -90

DERS = "Bootstrap"
CÜMLE = "Coding is fun!"
BİR-METİN = "2500"

ŞEKİL = triangle(40, "outline", "red")
ÇERÇEVE = star(80, "solid", "green")
KARE = rectangle(50, 50, "solid", "blue")

MANTIKSAL = true

# double: Number -> Number
# Given a number, multiply by 2 to double it
examples:
  double(5) is 2 * 5
  double(7) is 2 * 7
end

fun double(n):
  2 * n
end