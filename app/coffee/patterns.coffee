patterns =
  arithmetic: (src) -> src
    .replace(/^\+\+/, (m) -> tooltip('&#x29fa;', m) ) # ⧺
  arrows_single: (src) -> src
    .replace(/-&gt;$/, (m) -> tooltip('&rarr;', m) ) # →
  arrows_double: (src) -> src
    .replace(/\=&gt;$/, (m) -> tooltip('&rArr;', m) ) # ⇒
  bitshift_double: (src) -> src
    .replace(/&lt;&lt;$/, (m) -> tooltip('&#x226a;', m) ) # ≪
    .replace(/&gt;&gt;$/, (m) -> tooltip('&#x226b;', m) ) # ≫
  bitshift_triple: (src) -> src
    .replace(/&gt;&gt;&gt;$/, (m) -> tooltip('&#x22d9;', m) ) # ⋙
  comparison: (src) -> src
    .replace(/^&lt;=&gt;$/, (m) -> tooltip('&#x2A8B;', m) ) # ⪋
  equality: (src) -> src
    .replace(/^!=$/, (m) -> tooltip('&ne;', m) ) # ≠
    .replace(/\=\=$/, (m) -> tooltip('&#x2a75;', m) ) # ⩵
  equality_triple: (src) -> src
    # how to deal with the following special case?
    # .replace(/^!==$/, (m) -> tooltip('&ne;', m) ) # ≠ 
    .replace(/^===$/, (m) -> tooltip('&#x2a76;', m) ) # ⩶
  equality_approximately: (src) -> src
    .replace(/^=\~$/, (m) -> tooltip('&#x2245;', m) ) # ≅
    .replace(/^!\~$/, (m) -> tooltip('&#x2247;', m) ) # ≇
  function: (src) -> src
    .replace(/^function/, (m) -> tooltip('&lambda;', m) ) # λ
  lambda: (src) -> src
    .replace(/^lambda$/, (m) -> tooltip('&lambda;', m) ) # λ
  logic_symbols: (src) -> src
    .replace(/^&amp;&amp;$/, (m) -> tooltip('&and;', m) ) # ∧
    .replace(/^\|\|$/, (m) -> tooltip('&or;', m) ) # ∨
    .replace(/^!$/, (m) -> tooltip('&not;', m) ) # ¬
  logic_words: (src) -> src
    .replace(/^and$/, (m) -> tooltip('&and;', m) ) # ∧
    .replace(/^or$/, (m) -> tooltip('&or;', m) ) # ∨
    .replace(/^not$/, (m) -> tooltip('&not;', m) ) # ¬
  nil: (src) -> src
    .replace(/^nil$/, (m) -> tooltip('&empty;', m) ) # ∅
  null: (src) -> src
    .replace(/^null$/, (m) -> tooltip('&empty;', m) ) # ∅
  ordering: (src) -> src
    .replace(/^&gt;=$/, (m) -> tooltip('&ge;', m) ) # ≥
    .replace(/^&lt;=$/, (m) -> tooltip('&le;', m) ) # ≤
  punctuation_dots: (src) -> src
    .replace(/^(\)?)\.\.\.(\(?)$/, (m, a, b) -> a + tooltip('&#x2026;', m) + b) # …
    .replace(/^(\)?)\.\.(\(?)$/, (m, a, b) -> a + tooltip('&#x2025;', m) + b) # ‥
  punctuation_colons: (src) -> src
    .replace(/\:\:/, (m) -> tooltip('&#x2237;', m) ) # ∷
  sets_in: (src) -> src
    .replace(/^in$/, (m) -> tooltip('&isin;', m) ) # ∈
  undefined: (src) -> src
    .replace(/^undefined$/, (m) -> tooltip('&#x22A5;', m) ) # ⊥
