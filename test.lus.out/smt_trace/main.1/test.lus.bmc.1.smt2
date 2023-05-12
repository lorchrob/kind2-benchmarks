(set-option :print-success true)
;; Success 

(set-option :produce-models true)
;; Success 

(set-logic QF_UF)
;; Success 

(declare-fun main.usr.y@0 () Bool)
;; Success 

(declare-fun main.res.init_flag@0 () Bool)
;; Success 

(assert (and (= main.usr.y@0 true) main.res.init_flag@0))
;; Success 

;; Initial state satisfiability check. 

(check-sat)
;; Sat 

;; 0 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_1 () Bool)
;; Success 

(assert (=> %fresh_actlit_1 (not main.usr.y@0)))
;; Success 

;; Looking for falsification at 0. 

(check-sat-assuming (%fresh_actlit_1))
;; Unsat 

(assert (not %fresh_actlit_1))
;; Success 

(declare-fun main.usr.y@1 () Bool)
;; Success 

(declare-fun main.res.init_flag@1 () Bool)
;; Success 

(assert (and (= main.usr.y@1 true) (not main.res.init_flag@1)))
;; Success 

(assert main.usr.y@0)
;; Success 

;; 1 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_2 () Bool)
;; Success 

(assert (=> %fresh_actlit_2 (not main.usr.y@1)))
;; Success 

;; Looking for falsification at 1. 

(check-sat-assuming (%fresh_actlit_2))
;; Unsat 

(assert (not %fresh_actlit_2))
;; Success 

(declare-fun main.usr.y@2 () Bool)
;; Success 

(declare-fun main.res.init_flag@2 () Bool)
;; Success 

(assert (and (= main.usr.y@2 true) (not main.res.init_flag@2)))
;; Success 

(assert main.usr.y@1)
;; Success 

;; 2 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_3 () Bool)
;; Success 

(assert (=> %fresh_actlit_3 (not main.usr.y@2)))
;; Success 

;; Looking for falsification at 2. 

(check-sat-assuming (%fresh_actlit_3))
;; Unsat 

(assert (not %fresh_actlit_3))
;; Success 

(declare-fun main.usr.y@3 () Bool)
;; Success 

(declare-fun main.res.init_flag@3 () Bool)
;; Success 

(assert (and (= main.usr.y@3 true) (not main.res.init_flag@3)))
;; Success 

(assert main.usr.y@2)
;; Success 

;; 3 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_4 () Bool)
;; Success 

(assert (=> %fresh_actlit_4 (not main.usr.y@3)))
;; Success 

;; Looking for falsification at 3. 

(check-sat-assuming (%fresh_actlit_4))
;; Unsat 

(assert (not %fresh_actlit_4))
;; Success 

(declare-fun main.usr.y@4 () Bool)
;; Success 

(declare-fun main.res.init_flag@4 () Bool)
;; Success 

(assert (and (= main.usr.y@4 true) (not main.res.init_flag@4)))
;; Success 

(assert main.usr.y@3)
;; Success 

;; 4 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_5 () Bool)
;; Success 

(assert (=> %fresh_actlit_5 (not main.usr.y@4)))
;; Success 

;; Looking for falsification at 4. 

(check-sat-assuming (%fresh_actlit_5))
;; Unsat 

(assert (not %fresh_actlit_5))
;; Success 

(declare-fun main.usr.y@5 () Bool)
;; Success 

(declare-fun main.res.init_flag@5 () Bool)
;; Success 

(assert (and (= main.usr.y@5 true) (not main.res.init_flag@5)))
;; Success 

(assert main.usr.y@4)
;; Success 

;; 5 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_6 () Bool)
;; Success 

(assert (=> %fresh_actlit_6 (not main.usr.y@5)))
;; Success 

;; Looking for falsification at 5. 

(check-sat-assuming (%fresh_actlit_6))
;; Unsat 

(assert (not %fresh_actlit_6))
;; Success 

(declare-fun main.usr.y@6 () Bool)
;; Success 

(declare-fun main.res.init_flag@6 () Bool)
;; Success 

(assert (and (= main.usr.y@6 true) (not main.res.init_flag@6)))
;; Success 

(assert main.usr.y@5)
;; Success 

;; 6 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_7 () Bool)
;; Success 

(assert (=> %fresh_actlit_7 (not main.usr.y@6)))
;; Success 

;; Looking for falsification at 6. 

(check-sat-assuming (%fresh_actlit_7))
;; Unsat 

(assert (not %fresh_actlit_7))
;; Success 

(declare-fun main.usr.y@7 () Bool)
;; Success 

(declare-fun main.res.init_flag@7 () Bool)
;; Success 

(assert (and (= main.usr.y@7 true) (not main.res.init_flag@7)))
;; Success 

(assert main.usr.y@6)
;; Success 

;; 7 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_8 () Bool)
;; Success 

(assert (=> %fresh_actlit_8 (not main.usr.y@7)))
;; Success 

;; Looking for falsification at 7. 

(check-sat-assuming (%fresh_actlit_8))
;; Unsat 

(assert (not %fresh_actlit_8))
;; Success 

(declare-fun main.usr.y@8 () Bool)
;; Success 

(declare-fun main.res.init_flag@8 () Bool)
;; Success 

(assert (and (= main.usr.y@8 true) (not main.res.init_flag@8)))
;; Success 

(assert main.usr.y@7)
;; Success 

;; 8 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_9 () Bool)
;; Success 

(assert (=> %fresh_actlit_9 (not main.usr.y@8)))
;; Success 

;; Looking for falsification at 8. 

(check-sat-assuming (%fresh_actlit_9))
;; Unsat 

(assert (not %fresh_actlit_9))
;; Success 

(declare-fun main.usr.y@9 () Bool)
;; Success 

(declare-fun main.res.init_flag@9 () Bool)
;; Success 

(assert (and (= main.usr.y@9 true) (not main.res.init_flag@9)))
;; Success 

(assert main.usr.y@8)
;; Success 

;; 9 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_10 () Bool)
;; Success 

(assert (=> %fresh_actlit_10 (not main.usr.y@9)))
;; Success 

;; Looking for falsification at 9. 

(check-sat-assuming (%fresh_actlit_10))
;; Unsat 

(assert (not %fresh_actlit_10))
;; Success 

(declare-fun main.usr.y@10 () Bool)
;; Success 

(declare-fun main.res.init_flag@10 () Bool)
;; Success 

(assert (and (= main.usr.y@10 true) (not main.res.init_flag@10)))
;; Success 

(assert main.usr.y@9)
;; Success 

;; 10 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_11 () Bool)
;; Success 

(assert (=> %fresh_actlit_11 (not main.usr.y@10)))
;; Success 

;; Looking for falsification at 10. 

(check-sat-assuming (%fresh_actlit_11))
;; Unsat 

(assert (not %fresh_actlit_11))
;; Success 

(declare-fun main.usr.y@11 () Bool)
;; Success 

(declare-fun main.res.init_flag@11 () Bool)
;; Success 

(assert (and (= main.usr.y@11 true) (not main.res.init_flag@11)))
;; Success 

(assert main.usr.y@10)
;; Success 

;; 11 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_12 () Bool)
;; Success 

(assert (=> %fresh_actlit_12 (not main.usr.y@11)))
;; Success 

;; Looking for falsification at 11. 

(check-sat-assuming (%fresh_actlit_12))
;; Unsat 

(assert (not %fresh_actlit_12))
;; Success 

(declare-fun main.usr.y@12 () Bool)
;; Success 

(declare-fun main.res.init_flag@12 () Bool)
;; Success 

(assert (and (= main.usr.y@12 true) (not main.res.init_flag@12)))
;; Success 

(assert main.usr.y@11)
;; Success 

;; 12 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_13 () Bool)
;; Success 

(assert (=> %fresh_actlit_13 (not main.usr.y@12)))
;; Success 

;; Looking for falsification at 12. 

(check-sat-assuming (%fresh_actlit_13))
;; Unsat 

(assert (not %fresh_actlit_13))
;; Success 

(declare-fun main.usr.y@13 () Bool)
;; Success 

(declare-fun main.res.init_flag@13 () Bool)
;; Success 

(assert (and (= main.usr.y@13 true) (not main.res.init_flag@13)))
;; Success 

(assert main.usr.y@12)
;; Success 

;; 13 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_14 () Bool)
;; Success 

(assert (=> %fresh_actlit_14 (not main.usr.y@13)))
;; Success 

;; Looking for falsification at 13. 

(check-sat-assuming (%fresh_actlit_14))
;; Unsat 

(assert (not %fresh_actlit_14))
;; Success 

(declare-fun main.usr.y@14 () Bool)
;; Success 

(declare-fun main.res.init_flag@14 () Bool)
;; Success 

(assert (and (= main.usr.y@14 true) (not main.res.init_flag@14)))
;; Success 

(assert main.usr.y@13)
;; Success 

;; 14 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_15 () Bool)
;; Success 

(assert (=> %fresh_actlit_15 (not main.usr.y@14)))
;; Success 

;; Looking for falsification at 14. 

(check-sat-assuming (%fresh_actlit_15))
;; Unsat 

(assert (not %fresh_actlit_15))
;; Success 

(declare-fun main.usr.y@15 () Bool)
;; Success 

(declare-fun main.res.init_flag@15 () Bool)
;; Success 

(assert (and (= main.usr.y@15 true) (not main.res.init_flag@15)))
;; Success 

(assert main.usr.y@14)
;; Success 

;; 15 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_16 () Bool)
;; Success 

(assert (=> %fresh_actlit_16 (not main.usr.y@15)))
;; Success 

;; Looking for falsification at 15. 

(check-sat-assuming (%fresh_actlit_16))
;; Unsat 

(assert (not %fresh_actlit_16))
;; Success 

(declare-fun main.usr.y@16 () Bool)
;; Success 

(declare-fun main.res.init_flag@16 () Bool)
;; Success 

(assert (and (= main.usr.y@16 true) (not main.res.init_flag@16)))
;; Success 

(assert main.usr.y@15)
;; Success 

;; 16 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_17 () Bool)
;; Success 

(assert (=> %fresh_actlit_17 (not main.usr.y@16)))
;; Success 

;; Looking for falsification at 16. 

(check-sat-assuming (%fresh_actlit_17))
;; Unsat 

(assert (not %fresh_actlit_17))
;; Success 

(declare-fun main.usr.y@17 () Bool)
;; Success 

(declare-fun main.res.init_flag@17 () Bool)
;; Success 

(assert (and (= main.usr.y@17 true) (not main.res.init_flag@17)))
;; Success 

(assert main.usr.y@16)
;; Success 

;; 17 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_18 () Bool)
;; Success 

(assert (=> %fresh_actlit_18 (not main.usr.y@17)))
;; Success 

;; Looking for falsification at 17. 

(check-sat-assuming (%fresh_actlit_18))
;; Unsat 

(assert (not %fresh_actlit_18))
;; Success 

(declare-fun main.usr.y@18 () Bool)
;; Success 

(declare-fun main.res.init_flag@18 () Bool)
;; Success 

(assert (and (= main.usr.y@18 true) (not main.res.init_flag@18)))
;; Success 

(assert main.usr.y@17)
;; Success 

;; 18 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_19 () Bool)
;; Success 

(assert (=> %fresh_actlit_19 (not main.usr.y@18)))
;; Success 

;; Looking for falsification at 18. 

(check-sat-assuming (%fresh_actlit_19))
;; Unsat 

(assert (not %fresh_actlit_19))
;; Success 

(declare-fun main.usr.y@19 () Bool)
;; Success 

(declare-fun main.res.init_flag@19 () Bool)
;; Success 

(assert (and (= main.usr.y@19 true) (not main.res.init_flag@19)))
;; Success 

(assert main.usr.y@18)
;; Success 

;; 19 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_20 () Bool)
;; Success 

(assert (=> %fresh_actlit_20 (not main.usr.y@19)))
;; Success 

;; Looking for falsification at 19. 

(check-sat-assuming (%fresh_actlit_20))
;; Unsat 

(assert (not %fresh_actlit_20))
;; Success 

(declare-fun main.usr.y@20 () Bool)
;; Success 

(declare-fun main.res.init_flag@20 () Bool)
;; Success 

(assert (and (= main.usr.y@20 true) (not main.res.init_flag@20)))
;; Success 

(assert main.usr.y@19)
;; Success 

;; 20 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_21 () Bool)
;; Success 

(assert (=> %fresh_actlit_21 (not main.usr.y@20)))
;; Success 

;; Looking for falsification at 20. 

(check-sat-assuming (%fresh_actlit_21))
;; Unsat 

(assert (not %fresh_actlit_21))
;; Success 

(declare-fun main.usr.y@21 () Bool)
;; Success 

(declare-fun main.res.init_flag@21 () Bool)
;; Success 

(assert (and (= main.usr.y@21 true) (not main.res.init_flag@21)))
;; Success 

(assert main.usr.y@20)
;; Success 

;; 21 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_22 () Bool)
;; Success 

(assert (=> %fresh_actlit_22 (not main.usr.y@21)))
;; Success 

;; Looking for falsification at 21. 

(check-sat-assuming (%fresh_actlit_22))
;; Unsat 

(assert (not %fresh_actlit_22))
;; Success 

(declare-fun main.usr.y@22 () Bool)
;; Success 

(declare-fun main.res.init_flag@22 () Bool)
;; Success 

(assert (and (= main.usr.y@22 true) (not main.res.init_flag@22)))
;; Success 

(assert main.usr.y@21)
;; Success 

;; 22 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_23 () Bool)
;; Success 

(assert (=> %fresh_actlit_23 (not main.usr.y@22)))
;; Success 

;; Looking for falsification at 22. 

(check-sat-assuming (%fresh_actlit_23))
;; Unsat 

(assert (not %fresh_actlit_23))
;; Success 

(declare-fun main.usr.y@23 () Bool)
;; Success 

(declare-fun main.res.init_flag@23 () Bool)
;; Success 

(assert (and (= main.usr.y@23 true) (not main.res.init_flag@23)))
;; Success 

(assert main.usr.y@22)
;; Success 

;; 23 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_24 () Bool)
;; Success 

(assert (=> %fresh_actlit_24 (not main.usr.y@23)))
;; Success 

;; Looking for falsification at 23. 

(check-sat-assuming (%fresh_actlit_24))
;; Unsat 

(assert (not %fresh_actlit_24))
;; Success 

(declare-fun main.usr.y@24 () Bool)
;; Success 

(declare-fun main.res.init_flag@24 () Bool)
;; Success 

(assert (and (= main.usr.y@24 true) (not main.res.init_flag@24)))
;; Success 

(assert main.usr.y@23)
;; Success 

;; 24 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_25 () Bool)
;; Success 

(assert (=> %fresh_actlit_25 (not main.usr.y@24)))
;; Success 

;; Looking for falsification at 24. 

(check-sat-assuming (%fresh_actlit_25))
;; Unsat 

(assert (not %fresh_actlit_25))
;; Success 

(declare-fun main.usr.y@25 () Bool)
;; Success 

(declare-fun main.res.init_flag@25 () Bool)
;; Success 

(assert (and (= main.usr.y@25 true) (not main.res.init_flag@25)))
;; Success 

(assert main.usr.y@24)
;; Success 

;; 25 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_26 () Bool)
;; Success 

(assert (=> %fresh_actlit_26 (not main.usr.y@25)))
;; Success 

;; Looking for falsification at 25. 

(check-sat-assuming (%fresh_actlit_26))
;; Unsat 

(assert (not %fresh_actlit_26))
;; Success 

(declare-fun main.usr.y@26 () Bool)
;; Success 

(declare-fun main.res.init_flag@26 () Bool)
;; Success 

(assert (and (= main.usr.y@26 true) (not main.res.init_flag@26)))
;; Success 

(assert main.usr.y@25)
;; Success 

;; 26 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_27 () Bool)
;; Success 

(assert (=> %fresh_actlit_27 (not main.usr.y@26)))
;; Success 

;; Looking for falsification at 26. 

(check-sat-assuming (%fresh_actlit_27))
;; Unsat 

(assert (not %fresh_actlit_27))
;; Success 

(declare-fun main.usr.y@27 () Bool)
;; Success 

(declare-fun main.res.init_flag@27 () Bool)
;; Success 

(assert (and (= main.usr.y@27 true) (not main.res.init_flag@27)))
;; Success 

(assert main.usr.y@26)
;; Success 

;; 27 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_28 () Bool)
;; Success 

(assert (=> %fresh_actlit_28 (not main.usr.y@27)))
;; Success 

;; Looking for falsification at 27. 

(check-sat-assuming (%fresh_actlit_28))
;; Unsat 

(assert (not %fresh_actlit_28))
;; Success 

(declare-fun main.usr.y@28 () Bool)
;; Success 

(declare-fun main.res.init_flag@28 () Bool)
;; Success 

(assert (and (= main.usr.y@28 true) (not main.res.init_flag@28)))
;; Success 

(assert main.usr.y@27)
;; Success 

;; 28 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_29 () Bool)
;; Success 

(assert (=> %fresh_actlit_29 (not main.usr.y@28)))
;; Success 

;; Looking for falsification at 28. 

(check-sat-assuming (%fresh_actlit_29))
;; Unsat 

(assert (not %fresh_actlit_29))
;; Success 

(declare-fun main.usr.y@29 () Bool)
;; Success 

(declare-fun main.res.init_flag@29 () Bool)
;; Success 

(assert (and (= main.usr.y@29 true) (not main.res.init_flag@29)))
;; Success 

(assert main.usr.y@28)
;; Success 

;; 29 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_30 () Bool)
;; Success 

(assert (=> %fresh_actlit_30 (not main.usr.y@29)))
;; Success 

;; Looking for falsification at 29. 

(check-sat-assuming (%fresh_actlit_30))
;; Unsat 

(assert (not %fresh_actlit_30))
;; Success 

(declare-fun main.usr.y@30 () Bool)
;; Success 

(declare-fun main.res.init_flag@30 () Bool)
;; Success 

(assert (and (= main.usr.y@30 true) (not main.res.init_flag@30)))
;; Success 

(assert main.usr.y@29)
;; Success 

;; 30 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_31 () Bool)
;; Success 

(assert (=> %fresh_actlit_31 (not main.usr.y@30)))
;; Success 

;; Looking for falsification at 30. 

(check-sat-assuming (%fresh_actlit_31))
;; Unsat 

(assert (not %fresh_actlit_31))
;; Success 

(declare-fun main.usr.y@31 () Bool)
;; Success 

(declare-fun main.res.init_flag@31 () Bool)
;; Success 

(assert (and (= main.usr.y@31 true) (not main.res.init_flag@31)))
;; Success 

(assert main.usr.y@30)
;; Success 

;; 31 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_32 () Bool)
;; Success 

(assert (=> %fresh_actlit_32 (not main.usr.y@31)))
;; Success 

;; Looking for falsification at 31. 

(check-sat-assuming (%fresh_actlit_32))
;; Unsat 

(assert (not %fresh_actlit_32))
;; Success 

(declare-fun main.usr.y@32 () Bool)
;; Success 

(declare-fun main.res.init_flag@32 () Bool)
;; Success 

(assert (and (= main.usr.y@32 true) (not main.res.init_flag@32)))
;; Success 

(assert main.usr.y@31)
;; Success 

;; 32 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_33 () Bool)
;; Success 

(assert (=> %fresh_actlit_33 (not main.usr.y@32)))
;; Success 

;; Looking for falsification at 32. 

(check-sat-assuming (%fresh_actlit_33))
;; Unsat 

(assert (not %fresh_actlit_33))
;; Success 

(declare-fun main.usr.y@33 () Bool)
;; Success 

(declare-fun main.res.init_flag@33 () Bool)
;; Success 

(assert (and (= main.usr.y@33 true) (not main.res.init_flag@33)))
;; Success 

(assert main.usr.y@32)
;; Success 

;; 33 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_34 () Bool)
;; Success 

(assert (=> %fresh_actlit_34 (not main.usr.y@33)))
;; Success 

;; Looking for falsification at 33. 

(check-sat-assuming (%fresh_actlit_34))
;; Unsat 

(assert (not %fresh_actlit_34))
;; Success 

(declare-fun main.usr.y@34 () Bool)
;; Success 

(declare-fun main.res.init_flag@34 () Bool)
;; Success 

(assert (and (= main.usr.y@34 true) (not main.res.init_flag@34)))
;; Success 

(assert main.usr.y@33)
;; Success 

;; 34 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_35 () Bool)
;; Success 

(assert (=> %fresh_actlit_35 (not main.usr.y@34)))
;; Success 

;; Looking for falsification at 34. 

(check-sat-assuming (%fresh_actlit_35))
;; Unsat 

(assert (not %fresh_actlit_35))
;; Success 

(declare-fun main.usr.y@35 () Bool)
;; Success 

(declare-fun main.res.init_flag@35 () Bool)
;; Success 

(assert (and (= main.usr.y@35 true) (not main.res.init_flag@35)))
;; Success 

(assert main.usr.y@34)
;; Success 

;; 35 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_36 () Bool)
;; Success 

(assert (=> %fresh_actlit_36 (not main.usr.y@35)))
;; Success 

;; Looking for falsification at 35. 

(check-sat-assuming (%fresh_actlit_36))
;; Unsat 

(assert (not %fresh_actlit_36))
;; Success 

(declare-fun main.usr.y@36 () Bool)
;; Success 

(declare-fun main.res.init_flag@36 () Bool)
;; Success 

(assert (and (= main.usr.y@36 true) (not main.res.init_flag@36)))
;; Success 

(assert main.usr.y@35)
;; Success 

;; 36 unrolling satisfiability check. 

(check-sat)
;; Sat 

(declare-fun %fresh_actlit_37 () Bool)
;; Success 

(assert (=> %fresh_actlit_37 (not main.usr.y@36)))
;; Success 

;; Looking for falsification at 36. 

(check-sat-assuming (%fresh_actlit_37))
;; Unsat 

(assert (not %fresh_actlit_37))
;; Success 

(declare-fun main.usr.y@37 () Bool)
;; Success 

(declare-fun main.res.init_flag@37 () Bool)
;; Success 

(assert (and (= main.usr.y@37 true) (not main.res.init_flag@37)))
;; Success 

(assert main.usr.y@0)
;; Success 

(assert main.usr.y@1)
;; Success 

(assert main.usr.y@2)
;; Success 

(assert main.usr.y@3)
;; Success 

(assert main.usr.y@4)
;; Success 

(assert main.usr.y@5)
;; Success 

(assert main.usr.y@6)
;; Success 

(assert main.usr.y@7)
;; Success 

(assert main.usr.y@8)
;; Success 

(assert main.usr.y@9)
;; Success 

(assert main.usr.y@10)
;; Success 

(assert main.usr.y@11)
;; Success 

(assert main.usr.y@12)
;; Success 

(assert main.usr.y@13)
;; Success 

(assert main.usr.y@14)
;; Success 

(assert main.usr.y@15)
;; Success 

(assert main.usr.y@16)
;; Success 

(assert main.usr.y@17)
;; Success 

(assert main.usr.y@18)
;; Success 

(assert main.usr.y@19)
;; Success 

(assert main.usr.y@20)
;; Success 

(assert main.usr.y@21)
;; Success 

(assert main.usr.y@22)
;; Success 

(assert main.usr.y@23)
;; Success 

(assert main.usr.y@24)
;; Success 

(assert main.usr.y@25)
;; Success 

(assert main.usr.y@26)
;; Success 

(assert main.usr.y@27)
;; Success 

(assert main.usr.y@28)
;; Success 

(assert main.usr.y@29)
;; Success 

(assert main.usr.y@30)
;; Success 

(assert main.usr.y@31)
;; Success 

(assert main.usr.y@32)
;; Success 

(assert main.usr.y@33)
;; Success 

(assert main.usr.y@34)
;; Success 

(assert main.usr.y@35)
;; Success 

(assert main.usr.y@36)
;; Success 

(assert main.usr.y@37)
;; Success 

(exit)
;; NoResponse 

