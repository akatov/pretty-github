patterns['nil'] =
  null:
    'kc': (src) -> src
      .replace(/^null$/, (m) -> tooltip('&empty;', m) ) # ∅
  nil:
    'kp': (src) -> src
      .replace(/^nil$/, (m) -> tooltip('&empty;', m) ) # ∅
