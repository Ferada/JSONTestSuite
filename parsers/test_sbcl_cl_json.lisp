#!/usr/local/bin/sbcl --script

;; TODO: /usr/bin/env and usual loading of ~/.sbclrc

(load "~/.sbclrc")

(asdf:load-system '#:cl-json)

(cl-json:decode-json-from-source (pathname (second sb-ext:*posix-argv*)))

(sb-ext:exit :code 0)
