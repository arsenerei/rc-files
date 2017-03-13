;; NB: *print-lenth* and *print-level* affect set-env! in Boot
;; https://github.com/boot-clj/boot/issues/586
(task-options!
  repl {:eval '(do (set! *print-length* 20)
                   (set! *print-level* 5))})
