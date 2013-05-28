patterns['logic_words'] =
  default:
    'o': (src) -> src
      .replace(/^and$/, (m) -> tooltip('&and;', m) ) # ∧
      .replace(/^or$/, (m) -> tooltip('&or;', m) ) # ∨
      .replace(/^not$/, (m) -> tooltip('&not;', m) ) # ¬
