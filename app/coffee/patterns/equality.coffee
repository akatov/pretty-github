patterns['equality'] =
  default:
    o: (src) -> src
      .replace(/^!=$/, (m) -> tooltip('&ne;', m) ) # ≠
      .replace(/^==$/, (m) -> tooltip('&#x2a75;', m) ) # ⩵
  triple:
    o: (src) -> src
      # .replace(/^!==$/, (m) -> tooltip('&ne;', m) ) # ≠ # how to deal with this special case?
      .replace(/^===$/, (m) -> tooltip('&#x2a76;', m) ) # ⩶
  approximately:
    o: (src) -> src
      .replace(/^=\~$/, (m) -> tooltip('&#x2245;', m) ) # ≅
      .replace(/^!\~$/, (m) -> tooltip('&#x2247;', m) ) # ≇
