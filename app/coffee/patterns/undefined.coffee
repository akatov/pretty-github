patterns['undefined'] =
  default:
    'kc': (src) -> src
      .replace(/^undefined$/, (m) -> tooltip('&#x22A5;', m) ) # ⊥

# TODO: preprocess 'void 0' for javascript
