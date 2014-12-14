# Dart 1.3.6 for Homebrew

This is the official [Dart][] tap for [homebrew][].

Mac users can use these formulae to easily install and update Dart SDK and
Dartium. Both dev and stable channels are supported.

## Initial setup

If you don't have homebrew, install it from their [homepage][homebrew].

Then, add this tap:

```
brew tap sestegra/dart
```

## Installing

To install the Dart SDK:

```
brew install dart136
```

Tip: Once installed, homebrew will print the path to the Dart SDK. Use this path to configure Dart support
in your IDE (like WebStorm).

For web developers, we highly recommend Dartium from dart-lang/dart:

```
brew tap dart-lang/dart
brew install dartium
brew linkapps
```

## Selecting active version

To switch from latest Dart version to Dart 1.3.6
```
brew unlink dart && brew link dart136
```
To switch from Dart 1.3.6 to latest Dart version
```
brew unlink dar136t && brew link dart
```

## Updating

Simply run:

```
brew update
brew upgrade dartium
```

[homebrew]: http://brew.sh/
[dart]: https://www.dartlang.org
