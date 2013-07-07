preprocess =
  haskell: [
    [ /<span class="p">\]`<\/span>/g
    , '<span class="p">]</span><span class="p">`</span>' ]
    [ /<span class="p">`\[<\/span>/g
    , '<span class="p">`</span><span class="p">[</span>' ]
    [ /<span class="p">`<\/span><span class="n">elem<\/span><span class="p">`<\/span>/g
    , '<span class="n">`elem`</span>' ]
    [ /<span class="p">`<\/span><span class="n">intersect<\/span><span class="p">`<\/span>/g
    , '<span class="n">`intersect`</span>' ]
    [ /<span class="p">`<\/span><span class="n">union<\/span><span class="p">`<\/span>/g
    , '<span class="n">`union`</span>']
  ]
  ruby : [
    [ /<span class="p">:<\/span><span class="ss">:/g
    , '<span class="o">::</span><span class="ss">' ]
    [ /<span class="o">\.<\/span><span class="n">\.<\/span><span class="o">\.<\/span>/g
    , '<span class="o">...</span>' ]
    [ /<span class="o">\.<\/span><span class="n">\./g
    , '<span class="o">..</span><span class="n">' ]
    [ /!<\/span><span class="o">=<\/span>/g
    , '</span><span class="o">!=</span>'
    ]
  ]
