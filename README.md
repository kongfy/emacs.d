[![Build Status](https://travis-ci.org/purcell/emacs.d.png?branch=master)](https://travis-ci.org/purcell/emacs.d)

# A reasonable Emacs config

This is my emacs configuration tree, continually used and tweaked
since 2000, and it may be a good starting point for other Emacs
users, especially web developers. These days it's
somewhat geared towards OS X, but it is known to also work on Linux
and Windows.

Emacs itself comes with support for many programming languages. This
config adds improved defaults and extended support for the following, listed
in the approximate order of how much I use them, from most to least:

* Haskell / Purescript / Elm
* Ruby / Ruby on Rails
* CSS / LESS / SASS / SCSS
* Javascript / Typescript / Coffeescript
* HTML / HAML / Markdown / Textile / ERB
* Rust
* Python
* Clojure (with Cider and nRepl)
* Common Lisp (with Slime)
* PHP
* Erlang

In particular, there's a nice config for *autocompletion* with
[company](https://company-mode.github.io/), and
[flycheck](http://www.flycheck.org) is used to immediately highlight
syntax errors in Ruby, Python, Javascript, Haskell and a number of
other languages.

## Supported Emacs versions

The config should run on Emacs 24.4 or greater and is designed to
degrade smoothly - see the Travis build - but note that much newer
versions are required for an increasing number of key packages, so to
get full functionality you should use the latest Emacs version
available to you.

Some Windows users might need to follow
[these instructions](http://xn--9dbdkw.se/diary/how_to_enable_GnuTLS_for_Emacs_24_on_Windows/index.en.html)
to get TLS (ie. SSL) support included in their Emacs.

## Other requirements

To make the most of the programming language-specific support in this
config, further programs will likely be required, particularly those
that [flycheck](https://github.com/flycheck/flycheck) uses to provide
on-the-fly syntax checking.

## Installation

To install, clone this repo to `~/.emacs.d`, i.e. ensure that the
`init.el` contained in this repo ends up at `~/.emacs.d/init.el`:

```
git clone https://github.com/purcell/emacs.d.git ~/.emacs.d
```

Upon starting up Emacs for the first time, further third-party
packages will be automatically downloaded and installed. If you
encounter any errors at that stage, try restarting Emacs, and possibly
running `M-x package-refresh-contents` before doing so.



## Important note about `ido`

This config enables `ido-mode` completion in the minibuffer wherever
possible, which might confuse you when trying to open files using
<kbd>C-x C-f</kbd>, e.g. when you want to open a directory to use
`dired` -- if you get stuck, use <kbd>C-f</kbd> to drop into the
regular `find-file` prompt. (You might want to customize the
`ido-show-dot-for-dired` variable if this is an issue for you.)

## Updates

Update the config with `git pull`. You'll probably also want/need to update
the third-party packages regularly too:

<kbd>M-x package-list-packages</kbd>, then <kbd>U</kbd> followed by <kbd>x</kbd>.

You should usually restart Emacs after pulling changes or updating
packages so that they can take effect. Emacs should usually restore
your working buffers when you restart due to this configuration's use
of the `desktop` and `session` packages.

## Adding your own customization

To add your own customization, use <kbd>M-x customize</kbd> and/or
create a file `~/.emacs.d/lisp/init-local.el` which looks like this:

```el
... your code here ...

(provide 'init-local)
```

If you need initialisation code which executes earlier in the startup process,
you can also create an `~/.emacs.d/lisp/init-preload-local.el` file.

If you plan to customize things more extensively, you should probably
just fork the repo and hack away at the config to make it your own!

## Similar configs

You might also want to check out `emacs-starter-kit` and `prelude`.

## Support / issues

If you hit any problems, please first ensure that you are using the latest version
of this code, and that you have updated your packages to the most recent available
versions (see "Updates" above). If you still experience problems, go ahead and
[file an issue on the github project](https://github.com/purcell/emacs.d).

-Steve Purcell

<hr>

[💝 Support this project and my other Open Source work](https://www.patreon.com/sanityinc)

[💼 LinkedIn profile](https://uk.linkedin.com/in/stevepurcell)

[✍ sanityinc.com](http://www.sanityinc.com/)

[🐦 @sanityinc](https://twitter.com/sanityinc)

***
# Kongfy's Notes

Thanks for purcell's great job, which help me to customize my own emacs config much easier.

Based on that, this config was added some packages for my personal working requirments. All of these changes could be found at `~/.emacs.d/lisp/init-local.el`.

Below are the packages and required system tools, happy hacking!

## General customization
| Package       | Requirement   |
| ------------- | ------------- |
| yasnippet     | - |
| ecb           | - |

## C/C++ environment
| Package       | Requirement   |
| ------------- | ------------- |
| ggtags        | global |
| company-clang | Clang |
| company-c-headers | |

Every time before working on a new project, you get to set `company-clang-arguments`, `company-c-headers-path-system` and `flycheck-clang-include-path` properly first, one way to do this is putting a `.dir-locals.el` in your C/C++ project's root directory. If you don't know what pathes to use, searching list from `echo "" | g++ -v -x c++ -E -` might be a good start.

```el
;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Variables")

((nil (eval .
            (progn
              (setq company-clang-arguments
                    (mapcar (lambda (item) (concat "-I" item))
                            (split-string
                             "
/path/to/include1/
/path/to/include2/
")))
              (mapcar (lambda (item) (add-to-list 'company-c-headers-path-system item))
                      (split-string
                       "
/path/to/include1/
/path/to/include2/
"))
              (setq flycheck-clang-include-path
                    (split-string
                     "
/path/to/include1/
/path/to/include2/
"))))))
```

## Python environment
| Package       | Requirement   |
| ------------- | ------------- |
| [jedi](https://github.com/tkf/emacs-jedi) | - |
| company-jedi | - |

Tip for playing with virtualenv : Put a `.dir-locals.el` in the project's root directory with something like:

```el
((python-mode . ((python-shell-virtualenv-path . "/path/to/my/venv/"))))
```

## Go environment
| Package       | Requirement   |
| ------------- | ------------- |
| go-mode | godef |
| go-eldoc | - |
| company-go | gocode |
| flymake-go | - |
| [go-flymake](https://github.com/dougm/goflymake) | goflymake |

Don't forgot to append your `GOPATH` to `PATH` in order to make everything work!

## Tex environment
| Package       | Requirement   |
| ------------- | ------------- |
| auctex | xelatex |
