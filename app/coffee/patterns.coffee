patterns =
  # arithmetic
  '++': [/^\+\+/, '&#x29fa;'] # ⧺
  # arrows
  '->': [/-&gt;$/, '&rarr;'] # →
  '->>': [/-&gt;&gt;$/, '&Rarr;'] # → # TODO!
  '<-': [/&lt;-$/, '&larr;'] # ←
  '<<-': [/&lt;-$/, '&Larr;'] # ←
  '=>': [/\=&gt;$/, '&rArr;'] # ⇒
  # ordering
  '<<': [/&lt;&lt;$/, '&Lt;'] # ≪
  '>>': [/&gt;&gt;$/, '&Gt;'] # ≫
  '>>>': [/&gt;&gt;&gt;$/, '&Gg;'] # ⋙
  '<<<': [/&lt;&lt;&lt;$/, '&Ll;'] # ⋘
  '<=>': [/^&lt;=&gt;$/, '&leg;'] # ⋚
  '>=': [/^&gt;=$/, '&ge;'] # ≥
  '<=': [/^&lt;=$/, '&le;'] # ≤
  # equality
  ':=': [/^:=$/, '&colone;'] # ≔
  '!=': [/^!=$/, '&ne;'] # ≠
  '==': [/\=\=$/, '&#x2a75;'] # ⩵
  '!==': [/^!==$/, '&ne;&ne;'] # ≠≠
  '===': [/^===$/, '&#x2a76;'] # ⩶
  '=~': [/^=\~$/, '&cong;'] # ≅
  '!~': [/^!\~$/, '&ncong;'] # ≇
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
  'undefined': [/^undefined$/, '&bottom;'] # ⊥
  # punctuation
  '...': [/^(\)?)\.\.\.(\(?)$/, '&hellip;'] # …
  '..': [/^(\)?)\.\.(\(?)$/, '&nldr;'] # ‥
  '::': [/\:\:/, '&Colon;'] # ∷
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
  null: names ['null']