(defn sum [coll] (apply + coll))
(defn divides-evenly [numerator denominator] (= 0 (mod numerator denominator)))
(defn predicate [num] (some true? (map #(divides-evenly num %) [3 5])))
(sum (filter predicate (range 1000)))
