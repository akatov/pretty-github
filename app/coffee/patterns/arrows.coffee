patterns['arrows'] =
  single:
    nf: (src) -> src
      .replace(/-&gt;$/, (m) -> tooltip('&rarr;', m) ) # →
    o: (src) -> src
      .replace(/-&gt;$/, (m) -> tooltip('&rarr;', m) ) # →
  double:
    nf: (src) -> src
      .replace(/\=&gt;$/, (m) -> tooltip('&rArr;', m) ) # ⇒
    o: (src) -> src
      .replace(/\=&gt;$/, (m) -> tooltip('&rArr;', m) ) # ⇒
