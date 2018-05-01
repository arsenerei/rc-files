;; NB: *print-lenth* and *print-level* affect set-env! in Boot
;; https://github.com/boot-clj/boot/issues/586
;; (task-options!
;;   repl {:eval '(do (set! *print-length* 20)
;;                    (set! *print-level* 5))})

;; (set-env! :dependencies #(conj % '[com.billpiel/sayid "0.0.11"]))
;; (set-env! :dependencies #(conj % '[cheshire "5.0.0"]))
(set-env! :dependencies #(conj % '[criterium "0.4.4"]))
