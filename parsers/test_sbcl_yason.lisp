#!/usr/local/bin/sbcl --script

;; TODO: /usr/bin/env and usual loading of ~/.sbclrc

(load "~/.sbclrc")

(asdf:load-system '#:yason)

(yason:parse (pathname (second sb-ext:*posix-argv*)))

(sb-ext:exit :code 0)
