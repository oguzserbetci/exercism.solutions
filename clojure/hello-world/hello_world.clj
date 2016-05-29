(ns hello-world)

(defn hello
  ([] "Hello, World!")
  ([input]
  (cond
    (= input "Alice") "Hello, Alice!"
    (= input "Bob") "Hello, Bob!"
    )))
