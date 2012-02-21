(println (letfn [(divides-evenly [denominator numerator] (= 0 (mod numerator denominator)))]
    (let [predicate #(or (divides-evenly 5 %) (divides-evenly 3 %))
          sum #(apply + %)]
    (sum (filter predicate (range 1 1000))))))
