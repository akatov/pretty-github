language_substitutions['global'] =
  'nf': (src) -> src
    .replace(/-&gt;$/, (m) -> tooltip('&rarr;', m) ) # →
    .replace(/\=&gt;$/, (m) -> tooltip('&rArr;', m) ) # ⇒
  'o': (src) -> src
    .replace(/\=&gt;$/, (m) -> tooltip('&rArr;', m) ) # ⇒
    .replace(/^and$/, (m) -> tooltip('&and;', m) ) # ∧
    .replace(/^or$/, (m) -> tooltip('&or;', m) ) # ∨
    .replace(/^not$/, (m) -> tooltip('&not;', m) ) # ¬
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
    .replace(/\:\:/, (m) -> tooltip('&#x2237;', m) ) # ∷
  'p': (src) -> src
    .replace(/^(\)?)\.\.(\(?)$/, (m, a, b) -> a + tooltip('&#x2025;', m) + b) # ‥
    .replace(/^(\)?)\.\.\.(\(?)$/, (m, a, b) -> a + tooltip('&#x2026;', m) + b) # …
