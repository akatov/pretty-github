language_substitutions['coffeescript'] =
  'k': (src) -> src
    .replace(/^in$/, (m) -> tooltip('&isin;', m) ) # ∈
    .replace(/^for$/, (m) -> tooltip('&forall;', m) ) # ∀
  'kc': (src) -> src
    .replace(/^null$/, (m) -> tooltip('&empty;', m) ) # ∅
    .replace(/^undefined$/, (m) -> tooltip('&#x22A5;', m) ) # ⊥
  'o': (src) -> src
    .replace(/^and$/, (m) -> tooltip('&and;', m) ) # ∧
    .replace(/^or$/, (m) -> tooltip('&or;', m) ) # ∨
    .replace(/^not$/, (m) -> tooltip('&not;', m) ) # ¬
