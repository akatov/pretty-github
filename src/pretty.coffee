group_active = (language, group) -> true # for now

$ ->
  setTimeout () ->
    _.each mapping, (groups, language) ->
      replaceFunctions = {}
      lang_selector = ".type-#{language} pre"
      source = $ lang_selector
      if source.length > 0
        # pre-process
        _.each preprocess[language], (substitution) ->
          $("#{lang_selector}").html (i, src) ->
            src.replace substitution[0], substitution[1]
        # replace patterns
        _.each groups, (sels_pats, group) ->
          if group_active language, group
            _.each sels_pats, (pats, selector) ->
              _.each pats, (pat) ->
                [pattern, glyph] = pat
                replaceFunctions[selector] ||= []
                replaceFunctions[selector].push (src) ->
                  src.replace pattern, (match, a, b) ->
                    if (typeof a == 'string') && (typeof b == 'string')
                      "#{a}#{glyph}#{b}"
                    else
                      glyph
        newElements = []
        _.each replaceFunctions, (replaceFns, selector) ->
          $("#{lang_selector} span.#{selector}").each ->
            $t = $ @
            orig = $t.html()
            ret = _.compose(replaceFns...)(orig)
            return if ret == orig
            $r = $t.clone().html(ret).css($t.getStyleObject()).attr('title', orig).data('orig', $t).appendTo('#files .data')
            newElements.push($r)
            w = $r.width()
            $s = $('<span></span>').css('position', 'absolute').offset(top: -100000, left: -100000).html(orig)
            $t.html('')
            # make $t be the same width as the new element
            $t.css('margin-right', w)
            # and attach a new tag with the original contents
            # of $t in it but outside the flow
            $t.append($s)

        _.each newElements, ($el) ->
          $t = $el.data('orig')
          o = $t.offset()
          $el.css('position', 'relative').offset(o).show()
  , 500
