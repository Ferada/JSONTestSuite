#!/usr/local/bin/sbcl --script

;; TODO: /usr/bin/env and usual loading of ~/.sbclrc

(load "~/.sbclrc")

(asdf:load-system '#:json-streams)

(with-open-file (stream (pathname (second sb-ext:*posix-argv*)))
  (json-streams:json-parse stream))

(sb-ext:exit :code 0)
