# DreamCatcher downloads

DreamCatcher is a local-first writing app for Linux, with offline AI through Ollama.

This repository holds release downloads only. The source code is private.

## Download (v0.2.0)

- AppImage: [DreamCatcher_0.2.0_amd64.AppImage](https://github.com/MontarxDev/DreamCatcher-releases/releases/latest/download/DreamCatcher_0.2.0_amd64.AppImage)
- Debian/Ubuntu/Mint package (.deb): coming soon on the [releases page](https://github.com/MontarxDev/DreamCatcher-releases/releases/latest)
- Checksums: [SHA256SUMS](https://github.com/MontarxDev/DreamCatcher-releases/releases/latest/download/SHA256SUMS)
- Signatures: [AppImage.minisig](https://github.com/MontarxDev/DreamCatcher-releases/releases/latest/download/DreamCatcher_0.2.0_amd64.AppImage.minisig), [SHA256SUMS.minisig](https://github.com/MontarxDev/DreamCatcher-releases/releases/latest/download/SHA256SUMS.minisig) · public key: [minisign.pub](minisign.pub)

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

## Verify your download

Every release file is signed with the DreamCatcher release key ([minisign.pub](minisign.pub)):

```
RWTTrK4Sb8jW9O8sAYqUL8TRqlE3W41qXqdESN9Kmh3xl78Pk43GvPk5
```

Install minisign (`sudo apt install minisign`), download the files you want plus `SHA256SUMS`, `SHA256SUMS.minisig` and the matching `.minisig` files from the release, then run:

```bash
# 1. Check the checksum list is genuine
minisign -Vm SHA256SUMS -P RWTTrK4Sb8jW9O8sAYqUL8TRqlE3W41qXqdESN9Kmh3xl78Pk43GvPk5

# 2. Check your download matches it
sha256sum -c SHA256SUMS --ignore-missing

# 3. (Optional) Check the file's own signature
minisign -Vm DreamCatcher_0.2.0_amd64.AppImage -P RWTTrK4Sb8jW9O8sAYqUL8TRqlE3W41qXqdESN9Kmh3xl78Pk43GvPk5
```

Each command should print `Signature and comment signature verified` or `OK`. If any check fails, don't run the file.

| File | SHA-256 |
|---|---|
| DreamCatcher_0.2.0_amd64.AppImage | `d5fdbc67fd053c5f0af023286f1fc532319ec91ea3be47809a74d9962edfc55e` |

## Update feed

The app checks `https://github.com/MontarxDev/DreamCatcher-releases/releases/latest/download/latest.json`. It only shows that a new version exists; it never downloads or installs anything by itself.

## License

Proprietary. All rights reserved. See [LICENSE](LICENSE).
