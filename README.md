# DreamCatcher downloads

DreamCatcher is a local-first writing app for Linux, with offline AI through Ollama.

This repository holds release downloads only. The source code is private.

## Download (v0.2.0)

- AppImage: [DreamCatcher_0.2.0_amd64.AppImage](https://github.com/MontarxDev/DreamCatcher-releases/releases/latest/download/DreamCatcher_0.2.0_amd64.AppImage)
- Debian/Ubuntu/Mint package (.deb): coming soon on the [releases page](https://github.com/MontarxDev/DreamCatcher-releases/releases/latest)
- Checksums: [SHA256SUMS](https://github.com/MontarxDev/DreamCatcher-releases/releases/latest/download/SHA256SUMS)

All releases: https://github.com/MontarxDev/DreamCatcher-releases/releases

## Install on Linux

### AppImage (any distro)

```bash
chmod +x DreamCatcher_0.2.0_amd64.AppImage
./DreamCatcher_0.2.0_amd64.AppImage
```

If it won't start, install FUSE 2 (`sudo apt install libfuse2t64` on Ubuntu 24.04 / Mint 22, `libfuse2` on older releases).

### .deb (Debian, Ubuntu, Linux Mint)

```bash
sudo apt install ./DreamCatcher_0.2.0_amd64.deb
```

## Verify the download

```bash
sha256sum -c SHA256SUMS --ignore-missing
```

| File | SHA-256 |
|---|---|
| DreamCatcher_0.2.0_amd64.AppImage | `d5fdbc67fd053c5f0af023286f1fc532319ec91ea3be47809a74d9962edfc55e` |

## Update feed

The app checks `https://github.com/MontarxDev/DreamCatcher-releases/releases/latest/download/latest.json`. It only shows that a new version exists; it never downloads or installs anything by itself.

## License

Proprietary. All rights reserved. See [LICENSE](LICENSE).
