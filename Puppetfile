# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen",      "3.0.1"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "autoconf",   "1.0.0"
github "dnsmasq",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "1.2.5"
github "homebrew",   "1.4.1"
github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.2.9"
github "openssl",    "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.3.0"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"

github "python",         "1.1.1"
#github "vim",      "1.0.6", :repo => "davidbanham/puppet-vim"
github "osx",      "1.6.0"
github "zsh",      "1.0.0"
github "firefox",  "1.0.6"
github "java",        "1.1.0"
#github "googledrive", "1.0.2"
github "vagrant",     "2.0.6"
github "vlc",         "1.0.1"
github "statsd",      "1.0.2"
github "github_for_mac", "1.0.1"
#github "ctags",          "1.0.0"
github "mongodb",        "1.0.0"
github "dropbox",        "1.1.0"
#github "tmux",           "1.0.2"
#github "googleearth",    "1.0.0"
github "skype",          "1.0.2"
github "imagemagick",    "1.2.0"
github "gitx",           "1.2.0"
#github "skitch",         "1.0.0"
github "hipchat",        "1.0.2"
github "iterm2",         "1.0.2"
#github "alfred",         "1.0.2"
#github "fluid",          "1.0.0"
github "wget",           "1.0.0"
github "postgresql",     "1.0.0"
github "spotify",        "1.0.0"
github "redis",          "1.0.0"
github "xquartz",        "1.1.0"
github "qt",             "1.0.0"
#github "graphviz",       "1.0.0"
#github "evernote",       "1.0.1", :repo => "jasonamyers/puppet-evernote"
github "sysctl",         "1.0.0"
github "pkgconfig",      "1.0.0"
github "swig",           "1.0.0"
github "pcre",           "1.0.0"
github "heroku",         "2.0.0"

github "ohmyzsh", "1.0.0", :repo => "samjsharpe/puppet-ohmyzsh"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.
