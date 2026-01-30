# GroveGames.PackageTemplate

[![Build Status](https://github.com/grovegs/PackageTemplate/actions/workflows/release.yml/badge.svg)](https://github.com/grovegs/PackageTemplate/actions/workflows/release.yml)
[![Latest Release](https://img.shields.io/github/v/release/grovegs/PackageTemplate)](https://github.com/grovegs/PackageTemplate/releases/latest)
[![NuGet](https://img.shields.io/nuget/v/GroveGames.PackageTemplate)](https://www.nuget.org/packages/GroveGames.PackageTemplate)

A versatile .NET template for creating NuGet packages with optional Unity and Godot platform integrations.

## Installation

```bash
dotnet new install GroveGames.PackageTemplate
```

## Create a New Package

### Core + Unity + Godot (Full)

```bash
dotnet new package -na "Logger" -au "Grove Games" -g "grovegs" -de "High-performance logging library" -ta "logger;logging" --includeUnity --includeGodot
```

### Core + Unity Only

```bash
dotnet new package -na "ObjectPool" -au "Grove Games" -g "grovegs" -de "Object pooling library" --includeUnity
```

### Core + Godot Only

```bash
dotnet new package -na "BehaviourTree" -au "Grove Games" -g "grovegs" -de "Behaviour tree framework" --includeGodot
```

### Unity Only (No NuGet)

```bash
dotnet new package -na "UnityTools" -au "Grove Games" -g "grovegs" -de "Unity utilities" --includeCore false --includeUnity
```

### Godot Only (No NuGet)

```bash
dotnet new package -na "GodotTools" -au "Grove Games" -g "grovegs" -de "Godot utilities" --includeCore false --includeGodot
```

## Parameters

| Parameter | Required | Default | Description |
|-----------|----------|---------|-------------|
| `-na` | Yes | - | Name of the package |
| `-au` | Yes | - | Author of the package |
| `-g` | Yes | - | GitHub username |
| `-de` | No | - | Package description |
| `-ta` | No | - | Semicolon-separated tags |
| `--includeCore` | No | `true` | Include .NET core library with NuGet package |
| `--includeUnity` | No | `false` | Include Unity package integration |
| `--includeGodot` | No | `false` | Include Godot addon integration |

## Generated Structure

```plaintext
MyPackage/
├── .github/
│   ├── workflows/
│   │   ├── format.yml
│   │   ├── release.yml
│   │   └── tests.yml          # Only with --includeCore
│   ├── CODEOWNERS
│   └── dependabot.yml
├── .vscode/
│   └── settings.json
├── src/
│   ├── Author.MyPackage/      # Only with --includeCore
│   │   ├── Polyfills/
│   │   └── *.csproj
│   ├── Author.MyPackage.Unity/    # Only with --includeUnity
│   │   └── Packages/com.author.mypackage/
│   └── Author.MyPackage.Godot/    # Only with --includeGodot
│       └── addons/Author.MyPackage/
├── tests/                     # Only with --includeCore
│   └── Author.MyPackage.Tests/
├── sandbox/
│   ├── ConsoleApplication/    # Only with --includeCore
│   ├── DotnetBenchmark/       # Only with --includeCore
│   ├── UnityApplication/      # Only with --includeUnity
│   └── GodotApplication/      # Only with --includeGodot
├── .editorconfig
├── .gitattributes
├── .gitignore
├── CLAUDE.md
├── Directory.Build.props
├── global.json
├── Icon.png
├── LICENSE
├── README.md
└── MyPackage.slnx
```

## Features

- Multi-targeting: `net10.0` + `netstandard2.1` for Unity/Godot compatibility
- Native AOT support for .NET 10.0
- Polyfills for backward compatibility with netstandard2.1
- Reusable GitHub workflows from `grovegs/workflows`
- Sandbox applications for testing each platform
- CLAUDE.md for AI-assisted development
- slnx solution format
- Pre-configured `csc.rsp` for Unity C# 10 support

## License

MIT License - see [LICENSE](LICENSE) for details.
