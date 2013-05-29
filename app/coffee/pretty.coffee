languages = [
  'javascript'
  'ruby'
  'coffeescript'
]

$ ->
  setTimeout () ->
    for language in languages
      lang_selector = ".type-#{language} pre"
      source = $ lang_selector
      if source.length > 0
        for pattern_type, selectors of mapping[language]
          for selector in selectors
            $("#{lang_selector} span.#{selector}").html (i, src) ->
              patterns[pattern_type](src)
  , 500
