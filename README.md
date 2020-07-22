# Run Pascal script action
![GitHub release (latest SemVer including pre-releases)](https://img.shields.io/github/v/release/fabasoad/pascal-action?include_prereleases) ![CI (latest)](https://github.com/fabasoad/pascal-action/workflows/CI%20(latest)/badge.svg) ![CI (main)](https://github.com/fabasoad/pascal-action/workflows/CI%20(main)/badge.svg) ![YAML Lint](https://github.com/fabasoad/pascal-action/workflows/YAML%20Lint/badge.svg) ![Dockerfile Lint](https://github.com/fabasoad/pascal-action/workflows/Dockerfile%20Lint/badge.svg) ![Shell Lint](https://github.com/fabasoad/pascal-action/workflows/Shell%20Lint/badge.svg)

This action runs Pascal script.

## Inputs
| Name | Required | Description             | Default | Possible values |
|------|----------|-------------------------|---------|-----------------|
| path | Yes      | Path to the script file |         | &lt;Path&gt;    |

## Outputs
| Name   | Required | Description               |
|--------|----------|---------------------------|
| result | Yes      | Result of script running. |

## Example usage

### Workflow configuration

```yaml
name: Pascal

on: push

jobs:
  pascal:
    name: Run Pascal script
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - uses: fabasoad/pascal-action@v1.0.0
        id: pascal
        with:
          path: './HelloWorld.pas'
      - name: Print result
        run: echo "${{ steps.pascal.outputs.result }}"
```

### Result
![Result](https://raw.githubusercontent.com/fabasoad/pascal-action/main/screenshot.png)