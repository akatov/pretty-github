patterns['nil'] =
  null:
    'kc': (src) -> src
      .replace(/^null$/, (m) -> tooltip('&empty;', m) ) # ∅
