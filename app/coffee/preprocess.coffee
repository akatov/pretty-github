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
