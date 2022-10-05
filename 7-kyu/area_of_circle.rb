def circle_area r
  return false if r.instance_of?(String)
  return false if r <= 0
  circlearea = 3.14159265*r**2
  circlearea.round(2)
end
