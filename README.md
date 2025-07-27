# Homebrew Tap for vietcgi Projects

This repository contains Homebrew formulas for projects by vietcgi.

## Installation

First, add this tap to your Homebrew installation:

```bash
brew tap vietcgi/tap
```

Then install the desired package:

```bash
brew install netwatch
```

## Available Formulas

### netwatch

A modern network traffic monitor for Unix systems, inspired by nload but written in Rust.

```bash
brew install netwatch
```

**Usage:**
```bash
# Monitor default interface
netwatch

# Monitor specific interface
netwatch eth0

# List available interfaces
netwatch --list

# High performance mode for heavy traffic
netwatch --high-perf
```

## Development

To update formulas in this tap, modify the `.rb` files in the `Formula/` directory and commit the changes.

## Links

- [netwatch GitHub Repository](https://github.com/vietcgi/netwatch)
- [Main Homebrew Documentation](https://docs.brew.sh/)