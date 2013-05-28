languages = [
  'coffeescript'
  'javascript'
]

$ ->
  setTimeout () ->
    for language in languages
      lang_selector = ".type-#{language} pre"
      source = $ lang_selector
      if source.length > 0
        for pattern_type, display_types of mapping[language]
          for dt in display_types
            for selector, replace_function of patterns[pattern_type][dt]
              $("#{lang_selector} span.#{selector}").html (i, src) ->
                replace_function src
  , 500
