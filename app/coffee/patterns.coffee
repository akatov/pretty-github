patterns =
  # arithmetic
  '++': [/^\+\+/, '&#x29fa;'] # ⧺
  # arrows
  '->': [/-&gt;$/, '&rarr;'] # →
  '->>': [/-&gt;&gt;$/, '&rarr;'] # → # TODO!
  '<-': [/&lt;-$/, '&larr;'] # ←
  '=>': [/\=&gt;$/, '&rArr;'] # ⇒
  # ordering
  '<<': [/&lt;&lt;$/, '&#x226a;'] # ≪
  '>>': [/&gt;&gt;$/, '&#x226b;'] # ≫
  '>>>': [/&gt;&gt;&gt;$/, '&#x22d9;'] # ⋙
  '<<<': [/&lt;&lt;&lt;$/, '&#x22d9;'] # ⋘
  '<=>': [/^&lt;=&gt;$/, '&#x2A8B;'] # ⪋
  '>=': [/^&gt;=$/, '&ge;'] # ≥
  '<=': [/^&lt;=$/, '&le;'] # ≤
  # equality
  ':=': [/^:=$/, '&#x2254;'] # ≔
  '!=': [/^!=$/, '&ne;'] # ≠
  '==': [/\=\=$/, '&#x2a75;'] # ⩵
  '!==': [/^!==$/, '&ne;&ne;'] # ≠≠
  '===': [/^===$/, '&#x2a76;'] # ⩶
  '=~': [/^=\~$/, '&#x2245;'] # ≅
  '!~': [/^!\~$/, '&#x2247;'] # ≇
  # function
  function: [/^function/, '&lambda;'] # λ
  lambda: [/^lambda$/, '&lambda;'] # λ
  # logic
  '&&': [/^&amp;&amp;$/, '&and;'] # ∧
  '||': [/^\|\|$/, '&or;'] # ∨
  '!': [/^!$/, '&not;'] # ¬
  and: [/^and$/, '&and;'] # ∧
  or: [/^or$/, '&or;'] # ∨
  not: [/^not$/, '&not;'] # ¬
  # constants
  nil: [/^nil$/, '&empty;'] # ∅
  null: [/^null$/, '&empty;'] # ∅
  'undefined': [/^undefined$/, '&#x22A5;'] # ⊥
  # punctuation
  '...': [/^(\)?)\.\.\.(\(?)$/, '&#x2026;'] # …
  '..': [/^(\)?)\.\.(\(?)$/, '&#x2025;'] # ‥
  '::': [/\:\:/, '&#x2237;'] # ∷
  # sets
  in: [/^in$/, '&isin;'] # ∈

# converts a list of names to a list of pattern/glyph pairs
names = (ps) -> _.map(ps, (p) -> patterns[p])

# groups shared amongst many languages
common =
  bitshift: names ['>>>', '<<', '>>']
  equality: names ['==', '!=']
  equality_triple: names ['===', '!==']
  logic_symbols: names ['&&', '||', '!']
  logic_words: names ['and', 'or', 'not']
  ordering: names ['>=', '<=']
