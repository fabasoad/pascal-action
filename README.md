<!-- markdownlint-disable-file MD013 -->

# Run Pascal script action

[![Stand With Ukraine](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraine.svg)](https://stand-with-ukraine.pp.ua)
![GitHub release](https://img.shields.io/github/v/release/fabasoad/pascal-action?include_prereleases)
![functional-tests-local](https://github.com/fabasoad/pascal-action/actions/workflows/functional-tests-local.yml/badge.svg)
![functional-tests-remote](https://github.com/fabasoad/pascal-action/actions/workflows/functional-tests-remote.yml/badge.svg)
![pre-commit](https://github.com/fabasoad/pascal-action/actions/workflows/pre-commit.yml/badge.svg)

This action runs Pascal script.

## Inputs

<!-- prettier-ignore-start -->
| Name | Required | Description             | Possible values |
|------|----------|-------------------------|-----------------|
| path | Yes      | Path to the script file | _&lt;Path&gt;_  |
<!-- prettier-ignore-end -->

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
