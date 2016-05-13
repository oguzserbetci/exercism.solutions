(ns word-count
  (:require [clojure.string :as str]))

(defn record-word-count [memo word]
  (assoc memo word (inc (memo word 0))))

(defn word-count [words-to-count]
  (reduce record-word-count {}
    (str/split
      (str/replace
        (str/lower-case words-to-count) #"(?:\W+)" " ") #"\s")))
