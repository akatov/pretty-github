patterns['arithmetic'] =
  default:
    'o': (src) -> src
      # .replace(/^\+\+==$/, (m) -> tooltip('&#x29fa;==', m) ) # ⧺== # TODO: make this part of the pre-processor!
      .replace(/^\+\+$/, (m) -> tooltip('&#x29fa;', m) ) # ⧺
