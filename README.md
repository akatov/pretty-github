[![Stories in Ready](https://badge.waffle.io/akatov/pretty-github.png?label=ready&title=Ready)](https://waffle.io/akatov/pretty-github)
# Pretty Github Chrome Extension

[![Dependency Status](https://img.shields.io/gemnasium/akatov/pretty-github.svg)](https://gemnasium.com/akatov/pretty-github)

A prettifier for source code on github, along the lines of
[pretty-mode](https://github.com/akatov/pretty-mode).

## Installation

This extension requires [node](https://github.com/joyent/node) v0.8 or later.

```bash
git clone git@github.com:akatov/pretty-github.git
cd pretty-github
npm install
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
ENV=prod grunt build
```

## Contributing

* Fork it
* Create your feature branch (`git checkout -b my-new-feature`)
* Commit your changes (`git commit -am 'Added some feature'`)
* Push to the branch (`git push origin my-new-feature`)
* Create new Pull Request
