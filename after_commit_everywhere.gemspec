# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "after_commit_everywhere/version"

Gem::Specification.new do |spec|
  spec.name          = "after_commit_everywhere"
  spec.version       = AfterCommitEverywhere::VERSION
  spec.authors       = ["Andrey Novikov"]
  spec.email         = ["envek@envek.name"]

  spec.summary       = <<~MSG.strip
    Executes code after database commit wherever you want in your application
  MSG

  spec.description = <<~MSG.strip
    Brings before_commit, after_commit, and after_rollback transactional \
    callbacks outside of your ActiveRecord models.
  MSG
  spec.homepage      = "https://github.com/Envek/after_commit_everywhere"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(\.|gemfiles/|bin/|spec/|tmp/|Appraisals|Gemfile|Rakefile)})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/Envek/after_commit_everywhere/blob/master/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"] = "https://github.com/Envek/after_commit_everywhere/issues"

  spec.add_dependency "activerecord", ">= 4.2"
  spec.add_dependency "activesupport"
  spec.add_development_dependency "appraisal"
end
