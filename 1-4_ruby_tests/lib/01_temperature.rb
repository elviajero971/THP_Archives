
def ftoc(tp_f)
  ((( tp_f.to_f - 32 ) * 5) / 9)
end

def ctof(tp_c)
  ((( tp_c.to_f * 9 ) / 5 ) + 32)
end