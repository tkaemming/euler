(defn evenly-divisible [denominator numerator] (= (mod numerator denominator) 0))
(println (apply + (filter #(or (evenly-divisible 3 %) (evenly-divisible 5 %)) (range 1 1000))))
