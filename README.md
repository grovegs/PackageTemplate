# GroveGames.PackageTemplate

[![Build Status](https://github.com/grovegs/PackageTemplate/actions/workflows/release.yml/badge.svg)](https://github.com/grovegs/PackageTemplate/actions/workflows/release.yml)
[![Latest Release](https://img.shields.io/github/v/release/grovegs/PackageTemplate)](https://github.com/grovegs/PackageTemplate/releases/latest)
[![NuGet](https://img.shields.io/nuget/v/GroveGames.PackageTemplate)](https://www.nuget.org/packages/GroveGames.PackageTemplate)

A versatile .NET template for creating NuGet packages with Unity and Godot platform integrations.

## Installation

```bash
dotnet new install GroveGames.PackageTemplate
```

## Create a New Package

```bash
dotnet new package -na "Logger" -au "Grove Games" -g "grovegs" -de "High-performance logging library" -ta "logger;logging"
```

## Parameters

| Parameter  | Required | Default | Description                                             |
| ---------- | -------- | ------- | ------------------------------------------------------- |
| `-na`      | Yes      | -       | Name of the package                                     |
| `-au`      | Yes      | -       | Author of the package                                   |
| `-g`       | Yes      | -       | GitHub username                                         |
| `-de`      | No       | -       | Package description                                     |
| `-ta`      | No       | -       | Semicolon-separated tags                                |

## Generated Structure

```plaintext
MyPackage/
├── .github/
│   ├── workflows/
│   │   ├── format.yml
│   │   ├── release.yml
│   │   └── tests.yml
│   ├── CODEOWNERS
│   └── dependabot.yml
├── .vscode/
│   └── settings.json
├── src/
│   ├── Author.MyPackage/
│   │   ├── Polyfills/
│   │   └── *.csproj
│   ├── Author.MyPackage.Unity/
│   │   └── Packages/com.author.mypackage/
│   └── Author.MyPackage.Godot/
│       └── addons/Author.MyPackage/
├── tests/
│   └── Author.MyPackage.Tests/
├── sandbox/
│   ├── ConsoleApplication/
│   ├── DotnetBenchmark/
│   ├── UnityApplication/
│   └── GodotApplication/
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

- **Multi-platform**: .NET Core (NuGet), Unity, and Godot support included
- **Multi-targeting**: `net10.0`, `net9.0`, `net8.0`, and `netstandard2.1`
- **Native AOT**: Full AOT compatibility for .NET 8.0+
- **Modern C#**: Comprehensive .editorconfig with detailed code style rules
- **Polyfills**: Backward compatibility layer for netstandard2.1
- **CI/CD**: Reusable GitHub workflows from `grovegs/workflows`
- **Testing**: Sandbox applications for each platform (Console, Benchmark, Unity, Godot)
- **AI-Ready**: CLAUDE.md for AI-assisted development
- **Modern tooling**: .slnx solution format and Unity C# 10 support

## License

MIT License - see [LICENSE](LICENSE) for details.
