(use-modules (guix packages)
             (guix build-system gnu)
             (guix licenses)
             (guix gexp)
             (gnu packages base))

(define-public dumb-package
  (package
    (name "dumb-package")
    (version "0.1")
    (source (local-file "hello.c"))
    (build-system gnu-build-system)
    (arguments
     '(#:tests? #f  ; No tests
       #:phases
       (modify-phases %standard-phases
         (delete 'configure)
         (replace 'build
           (lambda _
             (invoke "gcc" "-o" "dumb-package" "hello.c")))
         (replace 'install
           (lambda* (#:key outputs #:allow-other-keys)
             (let ((bin (string-append (assoc-ref outputs "out") "/bin")))
               (mkdir-p bin)
               (install-file "dumb-package" bin)))))))
    (home-page "")
    (synopsis "A dumb package for testing")
    (description "This is a dumb package that just prints Hello.")
    (license public-domain)))

dumb-package
