patterns['sets'] =
  default:
    'k': (src) -> src
      .replace(/^in$/, (m) -> tooltip('&isin;', m) ) # ∈
