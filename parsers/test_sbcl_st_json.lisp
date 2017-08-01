#!/usr/local/bin/sbcl --script

;; TODO: /usr/bin/env and usual loading of ~/.sbclrc

(load "~/.sbclrc")

(asdf:load-system '#:st-json)

(with-open-file (stream (pathname (second sb-ext:*posix-argv*)))
  (st-json:read-json stream))

(sb-ext:exit :code 0)
