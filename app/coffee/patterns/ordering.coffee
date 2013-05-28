patterns['ordering'] =
  default:
    'o': (src) -> src
      .replace(/^&gt;=$/, (m) -> tooltip('&ge;', m) ) # ≥
      .replace(/^&lt;=$/, (m) -> tooltip('&le;', m) ) # ≤
  comparison:
    o: (src) -> src
      .replace(/^&lt;=&gt;$/, (m) -> tooltip('&#x2A8B;', m) ) # ⪋ # todo: check this
