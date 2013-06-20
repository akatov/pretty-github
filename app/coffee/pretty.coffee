group_active = (language, group) -> true # for now

$ ->
  setTimeout () ->
    for language, groups of mapping
      lang_selector = ".type-#{language} pre"
      source = $ lang_selector
      if source.length > 0
        for group, sels_pats of groups
          if group_active language, group
            for selector, pats of sels_pats
              for pat in pats
                [pattern, glyph] = pat
                $("#{lang_selector} span.#{selector}").html (i, src) ->
                  src.replace pattern, (match, a, b) ->
                    ret = "<span title=\"#{match}\">#{glyph}</span>"
                    if (typeof a == 'string') && (typeof b == 'string')
                      "#{a}#{ret}#{b}"
                    else
                      ret
  , 500
