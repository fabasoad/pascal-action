<!-- markdownlint-disable-file MD013 -->

# Run Pascal script action

[![Stand With Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraine.svg)](https://stand-with-ukraine.pp.ua)
![GitHub release](https://img.shields.io/github/v/release/fabasoad/pascal-action?include_prereleases)
![functional-tests](https://github.com/fabasoad/pascal-action/actions/workflows/functional-tests.yml/badge.svg)
![security](https://github.com/fabasoad/pascal-action/actions/workflows/security.yml/badge.svg)
![linting](https://github.com/fabasoad/pascal-action/actions/workflows/linting.yml/badge.svg)

This action runs Pascal script.

## Prerequisites

None.

## Inputs

```yaml
- uses: fabasoad/pascal-action@v1
  with:
    # (Required) Path to the script file.
    path: ./HelloWorld.pas
```

## Outputs

<!-- prettier-ignore-start -->
| Name   | Required | Description               |
|--------|----------|---------------------------|
| result | Yes      | Result of script running. |
<!-- prettier-ignore-end -->

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
          path: "./HelloWorld.pas"
      - name: Print result
        run: echo "${{ steps.pascal.outputs.result }}"
```

### Result

```shell
Run echo "Hello World!"
Hello World!
```

## Contributions

![Alt](https://repobeats.axiom.co/api/embed/c243117fc32fc6c2d68502024a4bb56e0d1f792d.svg "Repobeats analytics image")
