patterns['logic_symbols'] =
  default:
    'o': (src) -> src
      .replace(/^&amp;&amp;$/, (m) -> tooltip('&and;', m) ) # ∧
      .replace(/^\|\|$/, (m) -> tooltip('&or;', m) ) # ∨
      .replace(/^!$/, (m) -> tooltip('&not;', m) ) # ¬
