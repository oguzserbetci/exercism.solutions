(ns word-count)


(defn record-word-count [memo word]
  (assoc memo word (inc (memo word 0))))

(defn word-count [words-to-count]
  (reduce record-word-count {} (clojure.string/split (clojure.string/replace (clojure.string/lower-case words-to-count) ":" "") #"\s")))

