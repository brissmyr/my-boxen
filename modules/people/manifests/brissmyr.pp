class people::brissmyr {

  notify { 'class people::brissmyr declared': }

  class { 'ruby::global': version => '2.0.0' }

#  ['vim-update-bundles', 'pry', 'pry-doc', 'pry-theme', 'pry-editline']:
  ruby::gem { "bundler for ${version}":
    gem     => 'bundler',
    ruby    => $version,
  }

  ruby::gem { "pry for ${version}":
    gem     => 'pry',
    ruby    => $version,
  }

  class { 'nodejs::global':
    version => 'v0.10'
  }

  include python
  #include vim
  include zsh
  include firefox
  include java
  #include googledrive
  include vagrant
  include vlc
  include statsd
  include github_for_mac
  #include ctags
  include mongodb
  include dropbox
  #include tmux
  #include googleearth
  include skype
  include imagemagick
  include gitx::dev
  #include skitch
  include hipchat
  include iterm2::stable
  #include alfred
  #include fluid
  include wget
  include postgresql
  include xquartz
  include qt

  postgresql::db { 'mydb': }

  include spotify
  include redis
  #include graphviz
#  include evernote
  include heroku
  heroku::plugin { 'accounts':
    source => 'ddollar/heroku-accounts'
  }
  include sysctl
  include pkgconfig
  include swig
  include pcre
  #osx::recovery_message { 'If this Mac is found, please call Joel, 0709-886607': }
  include osx::global::disable_key_press_and_hold
  include osx::global::disable_autocorrect
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::dock::autohide
  include osx::dock::dim_hidden_apps
  include osx::universal_access::ctrl_mod_zoom

  class { 'osx::global::key_repeat_delay':
    delay => 10
  }
  class { 'osx::global::key_repeat_rate':
    rate => 2
  }

  include ohmyzsh

  $home = "/Users/brissmyr"
  $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"

  repository { $dotfiles_dir:
    source => "brissmyr/dotfiles"
  }

  file { "${home}/.zshrc":
    ensure  => link,
    target  => "${dotfiles_dir}/.zshrc",
    require => Repository[$dotfiles_dir]
  }

  # FIXME more defaults for osx

  #$home     = "/Users/${::luser}"
  #$dotfiles ="${home}/.dotfiles"

  #repository { $dotfiles:
  #  source => 'tilljoel/dotfiles',
  #}

  # From: https://github.com/boxen/puppet-git/issues/6
  #Git::Config::Global <| title == 'core.excludesfile' |> {
   # value => "${dotfiles}/.gitignore_global"
 # }

}
