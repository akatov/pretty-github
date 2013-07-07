# Pretty Github Chrome Extension

[![Dependency Status](https://gemnasium.com/akatov/pretty-github.png)](https://gemnasium.com/akatov/pretty-github)
[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/akatov/pretty-github/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

A prettifier for source code on github, along the lines of
[pretty-mode-plus](https://github.com/akatov/pretty-mode-plus).

## Installation

This extension requires [node](https://github.com/joyent/node) v0.8 or later.

```bash
git clone git@github.com:akatov/pretty-github.git
cd pretty-github
npm install
bower install
```

## Development

```bash
grunt build
open chrome://extensions/
```

Make sure `Developer mode` is active, click on `Load unpacked extension...`
and select the `build/dev` subdirectory of your current directory.

## Release

```bash
npm install
ENV=prod grunt build
```

## Contributing

* Fork it
* Create your feature branch (`git checkout -b my-new-feature`)
* Commit your changes (`git commit -am 'Added some feature'`)
* Push to the branch (`git push origin my-new-feature`)
* Create new Pull Request
