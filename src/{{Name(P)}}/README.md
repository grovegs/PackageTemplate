# {{Author(P)}}.{{Name(P)}}

[![Build Status](https://github.com/{{Github}}/{{Name(P)}}/actions/workflows/release.yml/badge.svg)](https://github.com/{{Github}}/{{Name(P)}}/actions/workflows/release.yml)
#if (includeCore)
[![Tests](https://github.com/{{Github}}/{{Name(P)}}/actions/workflows/tests.yml/badge.svg)](https://github.com/{{Github}}/{{Name(P)}}/actions/workflows/tests.yml)
[![NuGet](https://img.shields.io/nuget/v/{{Author(P)}}.{{Name(P)}})](https://www.nuget.org/packages/{{Author(P)}}.{{Name(P)}})
#endif
[![Latest Release](https://img.shields.io/github/v/release/{{Github}}/{{Name(P)}})](https://github.com/{{Github}}/{{Name(P)}}/releases/latest)

{{Description}}

## Features

- Feature 1
- Feature 2
- Feature 3

#if (includeCore)
## .NET

### Installation

```bash
dotnet add package {{Author(P)}}.{{Name(P)}}
```

### Usage

```csharp
using {{Author(P)}}.{{Name(P)}};

// Your code here
```
#endif

#if (includeUnity)
## Unity

### Installation

1. Install the core package via [NuGetForUnity](https://github.com/GlitchEnzo/NuGetForUnity):
   - Open Window > NuGet > Manage NuGet Packages
   - Search for `{{Author(P)}}.{{Name(P)}}` and install

2. Add the Unity package via Git URL:
   - Open Package Manager (Window > Package Manager)
   - Click "+" > "Add package from git URL"
   - Enter: `https://github.com/{{Github}}/{{Name(P)}}.git?path=src/{{Author(P)}}.{{Name(P)}}.Unity/Packages/com.{{Author(K)}}.{{Name(K)}}`

### Usage

```csharp
using {{Author(P)}}.{{Name(P)}}.Unity;

// Your code here
```
#endif

#if (includeGodot)
## Godot

### Installation

1. Install the NuGet package:
   ```bash
   dotnet add package {{Author(P)}}.{{Name(P)}}.Godot
   ```

2. Download the addon from the [latest release](https://github.com/{{Github}}/{{Name(P)}}/releases/latest) and extract to your project's `addons/` folder.

3. Enable the plugin in Project > Project Settings > Plugins.

### Usage

```csharp
using {{Author(P)}}.{{Name(P)}}.Godot;

// Your code here
```
#endif

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
