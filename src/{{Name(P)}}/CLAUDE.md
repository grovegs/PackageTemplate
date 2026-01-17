# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

{{Author(P)}}.{{Name(P)}} is a .NET library{{Description}}.
#if (includeCore)
The library targets .NET 10.0 for modern features and netstandard2.1 for Unity/Godot compatibility.
#endif

## Project Structure

The repository contains the following project types:

#if (includeCore)
- **Core Library** (`src/{{Author(P)}}.{{Name(P)}}/`): The main .NET library targeting both `net10.0` and `netstandard2.1`
#endif
#if (includeGodot)
- **Godot Integration** (`src/{{Author(P)}}.{{Name(P)}}.Godot/`): Godot-specific implementations and plugin
#endif
#if (includeUnity)
- **Unity Integration** (`src/{{Author(P)}}.{{Name(P)}}.Unity/`): Unity-specific package structure
#endif

## Development Commands

### Building

```bash
dotnet build                           # Build all projects
dotnet build -c Release               # Release build
```

#if (includeCore)
### Testing

```bash
dotnet test                           # Run all tests
dotnet test tests/{{Author(P)}}.{{Name(P)}}.Tests/        # Core library tests
```
#endif

### Formatting

```bash
dotnet format                         # Format all code according to .editorconfig
dotnet format --verify-no-changes    # Check if code is properly formatted (CI/CD)
dotnet format whitespace             # Format whitespace only
dotnet format style                  # Apply code style fixes
```

#if (includeCore)
### Packaging

```bash
dotnet pack -c Release                # Create NuGet packages
```
#endif

## Code Style & Formatting

The project uses automated formatting via GitHub Actions and comprehensive configuration files:

- **EditorConfig** (`.editorconfig`): Core C# coding standards, 4-space indentation, naming conventions (private fields: `_camelCase`, static: `s_camelCase`, interfaces: `IPascalCase`)
- **VS Code Settings** (`.vscode/settings.json`): C# formatting and save actions

#if (includeCore)
### Target Frameworks & Features

- **Multi-targeting**: `net10.0` (with AOT support) and `netstandard2.1` (for Unity/Godot compatibility)
- **Nullable Reference Types**: Enabled across the project
- **AOT Compatibility**: The `net10.0` target includes AOT analyzers and trimming support
- **Polyfills via Extension Members**: Custom polyfills using C# 14 extension members in `Polyfills/` folder provide backward compatibility for netstandard2.1

## Testing Framework

- **Test Framework**: xUnit v3
- **Test Configuration**: Uses `xunit.runner.json` for xUnit configuration
#endif

## Build Configuration

Key build configurations:

#if (includeCore)
- **Multi-targeting**: Projects support both modern .NET and legacy .NET Standard
- **AOT Support**: Native AOT compilation enabled for `net10.0` target
#endif
- **Documentation**: XML documentation generation enabled for all projects
- **Package Properties**: Centralized in `Directory.Build.props`

## SDK Version

The project targets .NET 10.0 SDK (see `global.json`). When working with this codebase, ensure you have .NET 10.0 SDK installed.

## GitHub Workflows

The project uses reusable workflows from `grovegs/workflows`:

#if (includeCore)
- **Tests** (`tests.yml`): Runs on pushes/PRs to main/develop branches
#endif
- **Format** (`format.yml`): Validates code formatting
- **Release** (`release.yml`): Manual workflow for creating releases and publishing packages

## Development Sandbox

The `sandbox/` directory contains sample applications for testing and development:

#if (includeCore)
- **ConsoleApplication**: Basic .NET console app for testing core functionality
- **DotnetBenchmark**: Performance benchmarking application
#endif
#if (includeUnity)
- **UnityApplication**: Full Unity project for testing Unity integration
#endif
#if (includeGodot)
- **GodotApplication**: Godot project with the addon for testing Godot integration
#endif

#if (includeUnity)
### Unity Sandbox Setup

The Unity sandbox project uses a symlink to reference the Unity package locally:

- `Packages/com.{{Author(K)}}.{{Name(K)}}` → symlink to `src/{{Author(P)}}.{{Name(P)}}.Unity/Packages/com.{{Author(K)}}.{{Name(K)}}`
#if (includeCore)
- `Assets/Editor/PluginBuilder/` → separate assembly that auto-builds `{{Author(P)}}.{{Name(P)}}.dll` to `Assets/Plugins`

The PluginBuilder is in a separate assembly with no dependencies, allowing it to compile even when the Unity package has errors due to a missing DLL. On first Unity open, it builds the DLL automatically.
#endif
#endif

#if (includeGodot)
### Godot Sandbox Setup

The Godot sandbox project uses a symlink to reference the Godot addon locally:

- `addons/{{Author(P)}}.{{Name(P)}}` → symlink to `src/{{Author(P)}}.{{Name(P)}}.Godot/addons/{{Author(P)}}.{{Name(P)}}`
#endif

#if (includeCore)
## Key Dependencies

- **Microsoft.SourceLink.GitHub**: For source linking in packages

Note: Custom polyfill extensions in the `System` namespace provide backward compatibility for netstandard2.1.
#endif
