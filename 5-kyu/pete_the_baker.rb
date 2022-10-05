# Pete likes to bake some cakes. He has some recipes and ingredients. Unfortunately he is not good in maths. Can you help him to find out, how many cakes he could bake considering his recipes?
# Write a function cakes(), which takes the recipe (object) and the available ingredients (also an object) and returns the maximum number of cakes Pete can bake (integer). For simplicity there are no units for the amounts (e.g. 1 lb of flour or 200 g of sugar are simply 1 or 200). Ingredients that are not present in the objects, can be considered as 0.



# 🧑🏻‍💻 I created an array that for each ingredients check how many recipes I can make
# Then I return the smallest number of this array


def cakes(recipe, available)
  array = []
  r = recipe
  a = available
  r.each do |k, v|
    return 0 if a[k.to_s].nil?
    array.append(a[k.to_s]/v)
  end
  array.min()
end
