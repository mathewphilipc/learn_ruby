#some auxiliary quantities for legibility
def ftoc(fTemp)
  cTemp = (fTemp - 32.0)*5.0/9.0
  return cTemp
end

def ctof(cTemp)
  fTemp = (cTemp)*9.0/5.0 + 32.0
  return fTemp
end

