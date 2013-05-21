language_substitutions['javascript'] =
  'k': (src) -> src
    .replace(/^in$/, (m) -> tooltip('&isin;', m) ) # ∈
  'kc': (src) -> src
    .replace(/^null$/, (m) -> tooltip('&empty;', m) ) # ∅
    .replace(/^undefined$/, (m) -> tooltip('&#x22A5;', m) ) # ⊥
  'nf': (src) -> src
    .replace(/-&gt;$/, (m) -> tooltip('&rarr;', m) ) # →
    .replace(/\=&gt;$/, (m) -> tooltip('&rArr;', m) ) # ⇒
  'o': (src) -> src
    .replace(/^&amp;&amp;$/, (m) -> tooltip('&and;', m) ) # ∧
    .replace(/^\|\|$/, (m) -> tooltip('&or;', m) ) # ∨
    .replace(/^!$/, (m) -> tooltip('&not;', m) ) # ¬
    .replace(/^&gt;=$/, (m) -> tooltip('&ge;', m) ) # ≥
    .replace(/^&lt;=$/, (m) -> tooltip('&le;', m) ) # ≤
    .replace(/^!=$/, (m) -> tooltip('&ne;', m) ) # ≠
    .replace(/^!==$/, (m) -> tooltip('&ne;', m) ) # ≠
    .replace(/^==$/, (m) -> tooltip('&#x2a75;', m) ) # ⩵
    .replace(/^===$/, (m) -> tooltip('&#x2a76;', m) ) # ⩶
    .replace(/^\+\+==$/, (m) -> tooltip('&#x29fa;==', m) ) # ⧺==
    .replace(/^\+\+$/, (m) -> tooltip('&#x29fa;', m) ) # ⧺
    .replace(/&lt;&lt;$/, (m) -> tooltip('&#x226a;', m) ) # ≪
    .replace(/&gt;&gt;&gt;$/, (m) -> tooltip('&#x22d9;', m) ) # ⋙
    .replace(/&gt;&gt;$/, (m) -> tooltip('&#x226b;', m) ) # ≫
  'p': (src) -> src
    .replace(/^(\)?)\.\.(\(?)$/, (m, a, b) -> a + tooltip('&#x2025;', m) + b) # ‥
    .replace(/^(\)?)\.\.\.(\(?)$/, (m, a, b) -> a + tooltip('&#x2026;', m) + b) # …
