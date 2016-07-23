# cost : String -> Number
# Given a pizza topping, return the cost of the pizza with that topping (Pepperoni: $10.50, Cheese: $9.00, Chiccken: $11.25 Broccoli: $10.25 )

examples: 
  cost("pepperoni") is 10.50
  cost("cheese") is 9.00
  cost("chicken") is 11.25
  cost("broccoli") is 10.25
end

fun cost(topping):
  ask:
    | string-equal(topping, "pepperoni") then: 10.50
    | string-equal(topping, "cheese") then: 9.00
    | string-equal(topping, "chicken") then: 11.25
    | string-equal(topping, "broccoli") then: 10.25
    | otherwise: 0.00
  end
end