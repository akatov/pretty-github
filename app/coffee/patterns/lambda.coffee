patterns['lambda'] =
  nb:
    nb: (src) -> src
      .replace(/^lambda$/, (m) -> tooltip('&lambda;', m) ) # λ
