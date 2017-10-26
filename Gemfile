# frozen_string_literal: true
source "https://rubygems.org"
gem "xcode-install"
gem "cocoapods"
gem "fastlane"
gem "fastlane-plugin-versioning", "0.2.7"
gem "badge"
gem "watchbuild"
gem "graphicsmagick"
gem "synx"
gem 'slather'

plugins_path = File.join(File.dirname(__FILE__), 'fastlane', 'Pluginfile')
eval_gemfile(plugins_path) if File.exist?(plugins_path)