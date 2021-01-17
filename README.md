# Run Pascal script action

![GitHub release (latest SemVer including pre-releases)](https://img.shields.io/github/v/release/fabasoad/pascal-action?include_prereleases) ![CI (latest)](https://github.com/fabasoad/pascal-action/workflows/CI%20(latest)/badge.svg) ![Functional tests](https://github.com/fabasoad/pascal-action/workflows/Functional%20tests/badge.svg) ![Security tests](https://github.com/fabasoad/pascal-action/workflows/Security%20tests/badge.svg) ![Lint](https://github.com/fabasoad/pascal-action/workflows/Lint/badge.svg)

This action runs Pascal script.

## Inputs

| Name | Required | Description             | Possible values |
|------|----------|-------------------------|-----------------|
| path | Yes      | Path to the script file | _&lt;Path&gt;_  |

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
      - uses: actions/checkout@main
      - uses: fabasoad/pascal-action@main
        id: pascal
        with:
          path: './HelloWorld.pas'
      - name: Print result
        run: echo "${{ steps.pascal.outputs.result }}"
```

### Result

```shell
Run echo "Hello World!"
Hello World!
```
