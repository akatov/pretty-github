mapping =
  ## popular languages
  javascript:
    arithmetic: o: names ['++']
    bitshift: o: common.bitshift
    equality: o: common.equality_triple.concat common.equality
    function: kd: names ['function']
    # logic: o: common.logic_symbols
    null: kc: common.null
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
  java:
    arithmetic: o: names ['++']
    bitshift: o: common.bitshift
    equality: o: common.equality
    null: kc: common.null
    ordering: o: common.ordering

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
    null: kc: common.null
    ordering: o: common.ordering
    punctuation:
      o: names ['::']
      p: names ['...', '..']
    sets: k: names ['in']
    'undefined': kc: names ['undefined']
  # 'common-lisp':
  # d:
  # dart:
  'emacs-lisp':
    arithmetic:
      nf: names ['sqrt']
      nb: names ['sqrt']
    ordering:
      nb: common.ordering
      nf: common.ordering
    logic:
      nf: [
        patterns['not']
        [/^( *)and( *)$/, '&Wedge;']
        [/^( *)or( *)$/, '&Vee;']
      ]
      k: [
        [/^( *)and( *)$/, '&Wedge;']
        [/^( *)or( *)$/, '&Vee;']
      ]
      nb: names ['not']
    sets: nf: [
      [/^intersection$/, '&cap;']
      [/^cl-intersection$/, '&cap;']
      [/^union$/, '&cup;']
      [/^cl-union$/, '&cup;']
    ]
    lambda:
      k: names ['lambda']
      nf: names ['lambda']
    nil: nv: names ['nil']
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
  haskell:
    arithmetic: n: [
      patterns['sqrt']
      [/^product$/, '&prod;']
      [/^sum/, '&sum;']
    ]
    arrows: ow: names ['<-', '->', '=>']
    equality: o:
      names(['==']).concat [[/^\/=$/, '&ne;']]
    logic: n: [
      patterns['not']
      [/^and$/, '&Wedge;']
      [/^or$/, '&Vee;']
    ]
    ordering: o: common.ordering
    unit: nb: [/^\(\)$/, '&empty;'] # ∅
    punctuation:
      o: [
        patterns['..']
        [/^\.$/, '&compfn;']
        [/^!!$/, '&#x203c;']
      ]
      ow: names ['::']
    lists:
      n: [
        [/^`elem`$/, '&in;']
        [/^`intersect`$/, '&cap;']
        [/^`union`$/, '&cup;']
      ]
      o: [
        patterns['++']
        # [/^\\\\$/, '&#x29f5;']
        [/^\\\\$/, '&setmn;']
      ]
    'undefined': n: names ['undefined']
  # lua:
  # ocaml:
  # prolog:
  # r:
  # scala:
  # scheme:
