patterns['punctuation'] =
  default:
    'o': (src) -> src
      .replace(/\:\:/, (m) -> tooltip('&#x2237;', m) ) # ∷
    'p': (src) -> src
      # TODO: these don't work in ruby
      .replace(/^(\)?)\.\.(\(?)$/, (m, a, b) -> a + tooltip('&#x2025;', m) + b) # ‥
      .replace(/^(\)?)\.\.\.(\(?)$/, (m, a, b) -> a + tooltip('&#x2026;', m) + b) # …
