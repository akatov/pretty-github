mapping =
  ## popular languages
  javascript:
    arithmetic: o: names ['++']
    bitshift: o: common.bitshift
    equality: o: common.equality_triple.concat common.equality.concat
    function: kd: names ['function']
    # logic: o: common.logic_symbols
    null: kc: names ['null']
    ordering: o: common.ordering
    sets: k: names ['in']
    'undefined': kc: names ['undefined']
  ruby:
    arrows: o: names ['->', '=>']
    bitshift: o: names ['>>', '<<']
    equality: o: names ['===', '==', '!=', '=~', '!~']
    lambda: nb: names ['lambda']
    # logic_symbols: o: common.logic_symbols
    logic: ow: common.logic_words
    nil: kp: names ['nil']
    ordering: o: (names ['<=>']).concat common.ordering
    punctuation: o: names ['...', '..', '::'] # TODO: fix this
  # java:
  #   arithmetic: ['o']
  #   bitshift_triple: ['o']
  #   bitshift_double: ['o']
  #   equality: ['o']
  #   null: ['o']
  #   ordering: ['o']

  # python:
  # shell:
  # php:
  # c:
  # 'c++':
  # perl:
  # 'objective-c':

  ## other languages
  # actionscript:
  # applescript:
  # 'c#':
  # clojure:
  coffeescript:
    arithmetic: o: names ['++']
    arrows:
      nf: names ['->', '=>']
      o: names ['=>']
    bitshift: o: common.bitshift
    equality: o: common.equality
    # logic_symbols: o: common.logic_symbols
    logic:
      o: common.logic_words
      ow: common.logic_words
    null: kc: names ['null']
    ordering: o: common.ordering
    punctuation:
      o: names ['::']
      p: names ['...', '..']
    sets: k: names ['in']
    'undefined': kc: names ['undefined']
  # 'common-lisp':
  # d:
  # dart:
  # 'emacs-lisp':
  # erlang:
  # 'f#':
  # fortran:
  go: # TODO!
    arithmetic: o: names ['++']
    arrows: o: names ['<-']
    bitshift_double: ['o']
    # logic_symbols:
    equality: o: ['==', '!=', ':=']
    ordering: o: common.ordering
    punctuation: o: names ['...']
    nil: kc: names ['nil']
  # groovy:
  # haskell:
  # lua:
  # ocaml:
  # prolog:
  # r:
  # scala:
  # scheme:
