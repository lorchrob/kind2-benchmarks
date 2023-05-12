(set-option :print-success true)
;; Success 

(set-option :produce-models true)
;; Success 

(set-logic QF_UF)
;; Success 

;; [Base/Step] Setting up system [main], k = 1. 

;; Actlit for initial predicate: [%actlit_9]. 

(declare-fun %actlit_9 () Bool)
;; Success 

;; Declaring system's svars at [0]. 

(declare-fun main.usr.y@0 () Bool)
;; Success 

(declare-fun main.res.init_flag@0 () Bool)
;; Success 

;; Conditional initial predicate. 

(assert (=> %actlit_9 (and (= main.usr.y@0 true) main.res.init_flag@0)))
;; Success 

;; Asserting invariants at [0]. 

(assert main.usr.y@0)
;; Success 

;; Declaring svars at [1]. 

(declare-fun main.usr.y@1 () Bool)
;; Success 

(declare-fun main.res.init_flag@1 () Bool)
;; Success 

;; Asserting transition relation at [1]. 

(assert (and (= main.usr.y@1 true) (not main.res.init_flag@1)))
;; Success 

;; Asserting invariants at [1]. 

(assert main.usr.y@1)
;; Success 

;; Querying base with actlit [%actlit_10] (2 candidates). 

(declare-fun %actlit_10 () Bool)
;; Success 

(assert
 (=>
 %actlit_10
 (not (and (= main.res.init_flag@1 main.usr.y@1) main.res.init_flag@1))))
;; Success 

(check-sat-assuming (%actlit_9 %actlit_10))
;; Sat 

(get-value
 (main.res.init_flag@1 main.usr.y@1 main.res.init_flag@0 main.usr.y@0))
;; ((main.res.init_flag@1 false) 
;;     (main.usr.y@1 true) 
;;     (main.res.init_flag@0 true) 
;;     (main.usr.y@0 true)) 

(assert (not %actlit_10))
;; Success 

;; Querying base with actlit [%actlit_11] (1 candidates). 

(declare-fun %actlit_11 () Bool)
;; Success 

(assert (=> %actlit_11 (not main.usr.y@1)))
;; Success 

(check-sat-assuming (%actlit_9 %actlit_11))
;; Unsat 

(assert (not %actlit_11))
;; Success 

;; Querying base with actlit [%actlit_12] (0 candidates). 

(declare-fun %actlit_12 () Bool)
;; Success 

(assert (=> %actlit_12 (not true)))
;; Success 

(check-sat-assuming (%actlit_9 %actlit_12))
;; Unsat 

(assert (not %actlit_12))
;; Success 

;; Querying base with actlit [%actlit_13] (0 candidates). 

(declare-fun %actlit_13 () Bool)
;; Success 

(assert (=> %actlit_13 (not true)))
;; Success 

(check-sat-assuming (%actlit_9 %actlit_13))
;; Unsat 

(assert (not %actlit_13))
;; Success 

;; Querying base with actlit [%actlit_14] (0 candidates). 

(declare-fun %actlit_14 () Bool)
;; Success 

(assert (=> %actlit_14 (not true)))
;; Success 

(check-sat-assuming (%actlit_9 %actlit_14))
;; Unsat 

(assert (not %actlit_14))
;; Success 

;; Querying base with actlit [%actlit_15] (0 candidates). 

(declare-fun %actlit_15 () Bool)
;; Success 

(assert (=> %actlit_15 (not true)))
;; Success 

(check-sat-assuming (%actlit_9 %actlit_15))
;; Unsat 

(assert (not %actlit_15))
;; Success 

;; Switching to step mode. 

;; Deactivating actlit for initial predicate. 

(assert (not %actlit_9))
;; Success 

;; Declaring svars at [2]. 

(declare-fun main.usr.y@2 () Bool)
;; Success 

(declare-fun main.res.init_flag@2 () Bool)
;; Success 

;; Asserting transition relation at [2]. 

(assert (and (= main.usr.y@2 true) (not main.res.init_flag@2)))
;; Success 

;; Asserting invariants at [2]. 

(assert main.usr.y@2)
;; Success 

;; Querying step with actlit [%actlit_16] (0 candidates). 

(declare-fun %actlit_16 () Bool)
;; Success 

(assert (=> %actlit_16 (not true)))
;; Success 

(check-sat-assuming (%actlit_16))
;; Unsat 

;; Deactivating actlit for check. 

(assert (not %actlit_16))
;; Success 

;; Querying step with actlit [%actlit_17] (0 candidates). 

(declare-fun %actlit_17 () Bool)
;; Success 

(assert (=> %actlit_17 (not true)))
;; Success 

(check-sat-assuming (%actlit_17))
;; Unsat 

;; Deactivating actlit for check. 

(assert (not %actlit_17))
;; Success 

(exit)
;; NoResponse 

