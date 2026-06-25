# Agora Voice SDK iOS Wrapper

iOS framework and demo app for experimenting with Agora real-time voice integration behind a small Swift wrapper.

The repo separates the SDK-facing code from the demo app so the integration surface can be inspected without digging through view-controller code.

## What This Project Shows

- `AgoraVoiceSdk` framework target.
- `AgoraManager` as the SDK integration boundary.
- `DemoVoice` UIKit app for manual testing.
- CocoaPods dependency setup for Agora.
- A basic test target for framework-level expansion.

## Main Modules

| Path | Responsibility |
| --- | --- |
| `AgoraVoiceSdk/AgoraVoiceSdk/AgoraManager.swift` | Voice SDK wrapper boundary |
| `AgoraVoiceSdk/DemoVoice` | Demo iOS application |
| `AgoraVoiceSdk/Podfile` | Agora SDK dependency setup |
| `AgoraVoiceSdk/AgoraVoiceSdkTests` | Framework test target |

## Running

```sh
cd AgoraVoiceSdk
pod install
open AgoraVoiceSdk.xcworkspace
```

Select the `DemoVoice` app target or the framework scheme from Xcode.

## Technical Notes

- Keep Agora token/channel handling outside view controllers.
- Treat `AgoraManager` as the seam for mocking voice-session behavior in tests.
- Do not commit production Agora credentials or temporary tokens to the repo.
- For production use, token generation should live on a trusted backend.

## Author

Dambert Muñoz

Email: [dmsantillana2705@gmail.com](mailto:dmsantillana2705@gmail.com)
