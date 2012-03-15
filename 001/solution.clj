(defn sum [coll] (apply + coll))
(defn divides-evenly [numerator denominator] (= 0 (mod numerator denominator)))
(letfn [(predicate [num]
          (some true? (map #(divides-evenly num %) [3 5])))]
  (println (sum (filter predicate (range 1000)))))
