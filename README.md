SafePass Command Line Interface (CLI) Specification
Overview

The SafePass CLI is a command-line interface designed to analyze SARIF files using specified rules for security assessments. It provides options to specify the input SARIF file, input rules file, and includes a help message for user guidance.
Usage

safe_pass [options]

Options

    -s, --sarif FILE: Specify the input SARIF file (.sarif)
    -r, --rules FILE: Specify the input rules file (.yml)
    -h, --help: Prints the help message

Example

# Analyze SARIF file using specified rules
```
ruby safe_pass -s input.sarif -r rules.yml
```

# Display help message
```
ruby safe_pass --help
```

Implementation Details
Class Structure

    SafePass::CLI: The main class for the command-line interface.
        self.start: The entry point for the CLI, parses command-line options, and invokes the Entry class.
        self.parse_cli: Parses command-line options using OptionParser and returns a hash of options.

Options

    :sarif_file (Type: String): Path to the input SARIF file.
    :rules_file (Type: String): Path to the input rules file in YAML format.

Usage Examples
# Start the SafePass CLI
```
ruby safe_pass -s sarif_file.sarif -r rules.yml
```

Dependencies

    Ruby 3.0

