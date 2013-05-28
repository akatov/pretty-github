patterns['bitshift'] =
  default:
    'o': (src) -> src
      .replace(/&lt;&lt;$/, (m) -> tooltip('&#x226a;', m) ) # ≪
      .replace(/&gt;&gt;&gt;$/, (m) -> tooltip('&#x22d9;', m) ) # ⋙
      .replace(/&gt;&gt;$/, (m) -> tooltip('&#x226b;', m) ) # ≫
