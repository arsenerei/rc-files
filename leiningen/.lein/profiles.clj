{:user {:dependencies [[alembic "0.3.2"]
                       [criterium "0.4.3"]
                       [pjstadig/humane-test-output "0.6.0"]]
        :plugins [[cider/cider-nrepl "0.14.0"]
                  [com.billpiel/sayid "0.0.14"]
                  [refactor-nrepl "2.2.0"]
                  [lein-ancient "0.6.10"]
                  [refactor-nrepl "1.1.0"]]
        ;; This causes issues for alembic and I think the injections in general.
        ;; 
        ;; NB: When something goes wrong with unbalanced delimiters, check here
        ;; first!
        ; :repl-options {:init (do
        ;                        (set! *print-length* 20)
        ;                        (set! *print-level* 5))}
        :injections [(require '[alembic.still :refer [distill load-project]
                                              :rename {distill pull-dep!}])
                     (require '[criterium.core :refer [bench]])
                     (require 'pjstadig.humane-test-output)
                     (pjstadig.humane-test-output/activate!)]}}
