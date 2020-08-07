(ns main.repl
  (:require [clojure.browser.repl :as repl]))

(enable-console-print!)
(println "main.repl loading...")
(repl/connect "http://localhost:9000/repl")
(println "main.repl loaded!")
