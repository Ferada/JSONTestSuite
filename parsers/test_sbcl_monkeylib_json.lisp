#!/usr/local/bin/sbcl --script

;; TODO: /usr/bin/env and usual loading of ~/.sbclrc

(load "~/.sbclrc")

(asdf:load-system '#:com.gigamonkeys.json)

(with-open-file (input (pathname (second sb-ext:*posix-argv*)))
  (com.gigamonkeys.json:parse-json
   (with-output-to-string (output)
     (loop
       with buffer = (make-string 64)
       for count = (read-sequence buffer input)
       until (eql count 0)
       do (write-sequence buffer output :end count)))))

(sb-ext:exit :code 0)
