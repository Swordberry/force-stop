# Force Stop

A tiny Android / Fire TV utility for clearing background app clutter with one press. It keeps the interface deliberately plain: a black screen with a white stop hand, no panels, and short toast feedback.

> [!WARNING]
> **Requires a rooted Fire Stick with Magisk.** Force Stop runs `am force-stop` through `su` and needs Magisk to grant root access to `com.local.forcestop`. Without root, the app will not force-stop anything — it is not a general-purpose app killer for unrooted devices.

## Behavior

- Force-stops running user-installed apps in the background.
- Leaves core launcher, settings, System UI, and itself on a built-in safelist.
- Shows `Force stopping apps...`, then `Force stopped N apps`.
- Uses no network access and collects no data.
- Requires root / Magisk permission to perform the force-stop operation.

Package: `com.local.forcestop`  
Version: `1.5` (versionCode `6`)

## Repository contents

The signed APK is published on the Releases page. The `reference/` directory contains decompiled smali and resources from the released build for inspection; it is not a clean rebuild source tree.
