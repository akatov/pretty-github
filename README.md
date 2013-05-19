# My Cool Chrome Extension

## Development

```bash
npm install
grunt build
open chrome://extensions/
```

Make sure `Developer mode` is active, click on `Load unpacked extension...`
and select the `build/dev` subdirectory of your current directory.

## Release

```bash
npm install
ENV=production grunt build
```
