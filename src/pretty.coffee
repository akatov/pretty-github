group_active = (language, group) -> true # for now

$ ->
  setTimeout () ->
    for language, groups of mapping
      lang_selector = ".type-#{language} pre"
      source = $ lang_selector
      if source.length > 0
        # pre-process
        for substitution in (preprocess[language] ? [])
          $("#{lang_selector}").html (i, src) ->
            src.replace substitution[0], substitution[1]
        # replace patterns
        for group, sels_pats of groups
          if group_active language, group
            for selector, pats of sels_pats
              for pat in pats
                [pattern, glyph] = pat
                $("#{lang_selector} span.#{selector}").fakeReplace (src) ->
                  src.replace pattern, (match, a, b) ->
                    ret = "<span title=\"#{match}\">#{glyph}</span>"
                    if (typeof a == 'string') && (typeof b == 'string')
                      "#{a}#{ret}#{b}"
                    else
                      ret
  , 500
