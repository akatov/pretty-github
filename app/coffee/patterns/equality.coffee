patterns['equality'] =
  default:
    'o': (src) -> src
      .replace(/^!=$/, (m) -> tooltip('&ne;', m) ) # ≠
      .replace(/^==$/, (m) -> tooltip('&#x2a75;', m) ) # ⩵
  triple:
    'o': (src) -> src
      .replace(/^!==$/, (m) -> tooltip('&ne;', m) ) # ≠
      .replace(/^===$/, (m) -> tooltip('&#x2a76;', m) ) # ⩶
