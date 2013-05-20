$ ->
  setTimeout () ->
    for language, replace_patterns of language_substitutions
      if language == 'global'
        lang_selector = ".file pre"
      else
        lang_selector = ".type-#{language} pre"
      # console.log lang_selector
      source = $ lang_selector
      # console.log source
      if source.length > 0
        for selector, replace_function of replace_patterns
          $("#{lang_selector} span.#{selector}").html (i, src) ->
            replace_function src
  , 500
