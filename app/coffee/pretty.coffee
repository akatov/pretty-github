language_substitutions =
  'coffeescript':
    'k': (src) -> src
      .replace(/^in$/, (m) -> '&isin;')
      .replace(/^for$/, (m) -> '&forall;')
    'kc': (src) -> src
      .replace(/^null$/, (m) -> '&empty;')
      .replace(/^undefined$/, (m) -> '&#x22A5;')
    'nf': (src) -> src
      .replace(/-&gt;$/, (m) -> '&rarr;')
      .replace(/\=&gt;$/, (m) -> '&rArr;')
    'o': (src) -> src
      .replace(/\=&gt;$/, (m) -> '&rArr;')
      .replace(/^and$/, (m) -> '&and;')
      .replace(/^or$/, (m) -> '&or;')
      .replace(/^not$/, (m) -> '&not;')
      .replace(/^&gt;=$/, (m) -> '&ge;')
      .replace(/^&lt;=$/, (m) -> '&le;')
      .replace(/^!=$/, (m) -> '&ne;')
      .replace(/^==$/, (m) -> '&#x2a75;')
      .replace(/^\+\+==$/, (m) -> '&#x29fa;==')
      .replace(/^\+\+$/, (m) -> '&#x29fa;')
      .replace(/&lt;&lt;$/, (m) -> '&#x226a;')
      .replace(/&gt;&gt;&gt;$/, (m) -> '&#x22d9;')
      .replace(/&gt;&gt;$/, (m) -> '&#x226b;')
      .replace(/\:\:/, '&#x2237;')
    'p': (src) -> src
      .replace(/^(\)?)\.\.(\(?)$/, (m, a, b) -> a + '&#x2025;' + b)
      .replace(/^(\)?)\.\.\.(\(?)$/, (m, a, b) -> a + '&#x2026;' + b)

$ ->
  console.log 'ohai'
  setTimeout () ->
    for language, replace_patterns of language_substitutions
      lang_selector = ".type-#{language} pre"
      console.log lang_selector
      source = $ lang_selector
      console.log source
      if source.length > 0
        for selector, replace_function of replace_patterns
          $("#{lang_selector} span.#{selector}").html (i, src) ->
            replace_function src
  , 500
