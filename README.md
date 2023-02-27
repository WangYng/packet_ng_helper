# packet_ng_helper

The [packet_ng](https://github.com/mcxiaoke/packer-ng-plugin) Api for Flutter.

## Install Started

1. Add this to your **pubspec.yaml** file:

```yaml
dependencies:
  packet_ng_helper: ^0.0.2
```

2. Install it

```bash
$ flutter packages get
```

## Normal usage

```dart
final marketName = await PacketNgHelper.getMarketName();
```

## Feature
- [x] get market name
