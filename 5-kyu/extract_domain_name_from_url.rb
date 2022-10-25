# Extract the domain name from a URL

# Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:

# * url = "http://github.com/carbonfive/raygun" -> domain name = "github"
# * url = "http://www.zombie-bites.com"         -> domain name = "zombie-bites"
# * url = "https://www.cnet.com"                -> domain name = cnet"

def domain_name(url)
  p url
  if /www/ !~ url && /http/ !~ url
    p url.split(".")
    return url.split(".")[0]
  end

  if /([a-z0-9]+-?[a-z0-9]+).[a-z]+\z/ =~ url && url.chars.count(".") == 1
    return $1
  end

  if /\A[a-z]+\W+([a-z0-9]+-?[a-z0-9]+).([a-z0-9]+-?[a-z0-9]+?)/ =~ url
    return $1 unless $1 == "www"
    return $2
  end
end
