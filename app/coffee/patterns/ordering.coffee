patterns['ordering'] =
  default:
    'o': (src) -> src
      .replace(/^&gt;=$/, (m) -> tooltip('&ge;', m) ) # ≥
      .replace(/^&lt;=$/, (m) -> tooltip('&le;', m) ) # ≤
