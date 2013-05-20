language_substitutions['javascript'] =
  'k': (src) -> src
    .replace(/^in$/, (m) -> '&isin;')
  'kc': (src) -> src
    .replace(/^null$/, (m) -> '&empty;')
    .replace(/^undefined$/, (m) -> '&#x22A5;')
  'o': (src) -> src
    .replace(/^&gt;=$/, (m) -> '&ge;')
    .replace(/^&lt;=$/, (m) -> '&le;')
    .replace(/^!=$/, (m) -> '&ne;')
    .replace(/^===$/, (m) -> '&#x2a76;')
    .replace(/^==$/, (m) -> '&#x2a75;')
    .replace(/^\+\+==$/, (m) -> '&#x29fa;==')
    .replace(/^\+\+$/, (m) -> '&#x29fa;')
    .replace(/&lt;&lt;$/, (m) -> '&#x226a;')
    .replace(/&gt;&gt;&gt;$/, (m) -> '&#x22d9;')
    .replace(/&gt;&gt;$/, (m) -> '&#x226b;')
