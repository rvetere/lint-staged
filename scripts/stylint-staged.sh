#!/bin/bash

executable=$(npm bin)/staged-files
linter_name="stylint"
linter_path=$(npm bin)/stylint
lint_extensions="**/*.@(css|scss|less|styl)"

if [[ -f "${linter_path}" ]]; then
  echo "Running ${linter_name} on git staged files: ${lint_extensions}"
  ${executable} "${lint_extensions}" -- ${linter_path}
else
  echo "Could not find ${linter_name} at ${linter_path}. Is it installed?"
  echo ""
  echo "Try running:"
  echo "npm install --save-dev ${linter_name}"
fi
