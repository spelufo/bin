#!/bin/sh
exec clj -Sdeps '{:deps {org.clojure/clojurescript {:mvn/version "1.10.520"}}}' -m cljs.main "$@"
