languages = [
  'javascript'
  'ruby'
  'coffeescript'
]

group_active = (language, group) -> true # for now

log = (o...) -> console.log '[[pretty]]  ', o...

$ ->
  setTimeout () ->
    for language in languages
      log 'language', language
      lang_selector = ".type-#{language} pre"
      source = $ lang_selector
      if source.length > 0
        for group, sels_pats of mapping[language]
          log 'group, sels_pats:', group, sels_pats
          if group_active language, group
            log 'group active'
            for selector, pats of sels_pats
              log 'selector, pats:', selector, pats
              for pat in pats
                log 'pat', pat
                [pattern, glyph] = pat
                log 'pattern, glyph:', pattern, glyph
                $("#{lang_selector} span.#{selector}").html (i, src) ->
                  log 'i, src:', i, src
                  src.replace pattern, (match, a, b) ->
                    log 'match, a, b:', match, a, b
                    ret = "<span title=\"#{match}\">#{glyph}</span>"
                    if (typeof a == 'string') && (typeof b == 'string')
                      "#{a}#{ret}#{b}"
                    else
                      ret
  , 500
