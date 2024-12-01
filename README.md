# profile.d-nvm

A plugin for [profile.d](https://github.com/jakubro/profile.d) that integrates [nvm](https://github.com/nvm-sh/nvm) -
Node Version Manager, a tool for managing multiple Node.js versions.

## Features

- Automatically installs and configures nvm
- Keeps nvm up-to-date with the latest version
- Loads nvm automatically in your shell
- Provides bash completion for nvm commands
- Maintains persistent NVM_DIR environment variable

## Installation

1. Add the following line to your `~/.profiledrc`:

```bash
PLUGINS=(
  # ... your other plugins ...
  https://github.com/jakubro/profile.d-nvm
)
```

2. Run the installation commands:

```bash
profile.d-install
. ~/.bashrc
```

## Usage

Once installed, you can use nvm to manage your Node.js installations:

```bash
# List available Node.js versions
nvm ls-remote

# Install a specific version
nvm install 18.0.0

# Use a specific version
nvm use 18.0.0

# Set default Node.js version
nvm alias default 18.0.0

# Run a command with a specific version
nvm exec 18.0.0 node --version
```

## How It Works

The plugin:

1. Installs nvm in `~/.nvm` during the installation phase
2. Updates nvm to the latest version when running `profile.d-install`
3. Sets up the NVM_DIR environment variable
4. Loads nvm and its bash completion on shell initialization

## Contributing

If you would like to contribute to this project, please feel free to submit a pull request or open an issue for
discussion.

## License

MIT License - see the [LICENSE](LICENSE) file for details.
