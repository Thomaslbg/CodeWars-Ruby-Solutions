# Cat years, Dog years

# Kata Task
# I have a cat and a dog.

# I got them at the same time as kitten/puppy. That was humanYears years ago.

# Return their respective ages now as [humanYears,catYears,dogYears]

# NOTES:

# humanYears >= 1
# humanYears are whole numbers only
# Cat Years
# 15 cat years for first year
# +9 cat years for second year
# +4 cat years for each year after that
# Dog Years
# 15 dog years for first year
# +9 dog years for second year
# +5 dog years for each year after that



def human_years_cat_years_dog_years(hy)
  cy = 0
  cy += 15 if hy >= 1
  cy += 9 if hy >= 2
  dy = cy
  cy += (hy-2) * 4 if hy >= 3
  dy += (hy-2) * 5 if hy >= 3

  return [hy,cy,dy]
end
