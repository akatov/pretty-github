patterns['arrows'] =
  default:
    'nf': (src) -> src
      .replace(/-&gt;$/, (m) -> tooltip('&rarr;', m) ) # →
      .replace(/\=&gt;$/, (m) -> tooltip('&rArr;', m) ) # ⇒
    'o': (src) -> src
      .replace(/\=&gt;$/, (m) -> tooltip('&rArr;', m) ) # ⇒
