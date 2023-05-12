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

(declare-fun main.usr.y@1 () Bool)
;; Success 

(declare-fun main.res.init_flag@1 () Bool)
;; Success 

(declare-fun main.usr.y@2 () Bool)
;; Success 

(declare-fun main.res.init_flag@2 () Bool)
;; Success 

(assert (and (= main.usr.y@1 true) (not main.res.init_flag@1)))
;; Success 

(assert (and (= main.usr.y@2 true) (not main.res.init_flag@2)))
;; Success 

(declare-fun %fresh_actlit_1 () Bool)
;; Success 

(assert (=> %fresh_actlit_1 main.usr.y@0))
;; Success 

(assert (=> %fresh_actlit_1 main.usr.y@1))
;; Success 

(declare-fun %fresh_actlit_2 () Bool)
;; Success 

(assert (=> %fresh_actlit_2 (not main.usr.y@2)))
;; Success 

(check-sat-assuming (%fresh_actlit_2 %fresh_actlit_1))
;; Unsat 

(assert (not %fresh_actlit_2))
;; Success 

(exit)
;; NoResponse 

