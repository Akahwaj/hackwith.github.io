#!/usr/bin/env bash
# install.sh - Set up the local development environment for hackwith.github.io

set -e

echo "==> Checking for Ruby..."
if ! command -v ruby &>/dev/null; then
  echo "ERROR: Ruby is not installed. Please install Ruby 2.1 or later."
  exit 1
fi

echo "==> Checking for Bundler..."
if ! command -v bundle &>/dev/null; then
  echo "==> Installing Bundler..."
  gem install bundler
fi

echo "==> Installing gem dependencies..."
bundle install

echo ""
echo "Installation complete!"
echo "Run 'bundle exec jekyll serve' to start the local development server."
