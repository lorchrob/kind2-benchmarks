(set-option :print-success true)
;; Success 

(set-option :produce-models true)
;; Success 

(set-logic QF_LIA)
;; Success 

;; [Base/Step] Setting up system [main], k = 1. 

;; Actlit for initial predicate: [%actlit_19]. 

(declare-fun %actlit_19 () Bool)
;; Success 

;; Declaring system's svars at [0]. 

(declare-fun main.usr.x@0 () Int)
;; Success 

(declare-fun main.usr.y@0 () Int)
;; Success 

(declare-fun main.res.init_flag@0 () Bool)
;; Success 

(declare-fun main.res.glocal_1@0 () Bool)
;; Success 

;; Conditional initial predicate. 

(assert
 (=>
 %actlit_19
 (and
  (= main.usr.y@0 (+ main.usr.x@0 1))
  (= main.res.glocal_1@0 (> main.usr.y@0 main.usr.x@0))
  main.res.init_flag@0)))
;; Success 

;; Asserting invariants at [0]. 

(assert main.res.glocal_1@0)
;; Success 

(assert (= (- main.usr.x@0 main.usr.y@0) (- 1)))
;; Success 

(assert (= 1 (- main.usr.y@0 main.usr.x@0)))
;; Success 

(assert (= main.usr.y@0 (+ main.usr.x@0 1)))
;; Success 

(assert (=> (>= main.usr.x@0 0) (>= main.usr.y@0 0)))
;; Success 

(assert (= 1 (- (- main.usr.x@0 main.usr.y@0))))
;; Success 

(assert (= (- main.usr.y@0) (- (+ main.usr.x@0 1))))
;; Success 

(assert (= (- 1) (- (- main.usr.y@0 main.usr.x@0))))
;; Success 

;; Declaring svars at [1]. 

(declare-fun main.usr.x@1 () Int)
;; Success 

(declare-fun main.usr.y@1 () Int)
;; Success 

(declare-fun main.res.init_flag@1 () Bool)
;; Success 

(declare-fun main.res.glocal_1@1 () Bool)
;; Success 

;; Asserting transition relation at [1]. 

(assert
 (and
 (= main.usr.y@1 (+ main.usr.x@1 1))
 (= main.res.glocal_1@1 (> main.usr.y@1 main.usr.x@1))
 (not main.res.init_flag@1)))
;; Success 

;; Asserting invariants at [1]. 

(assert main.res.glocal_1@1)
;; Success 

(assert (= (- main.usr.x@1 main.usr.y@1) (- 1)))
;; Success 

(assert (= 1 (- main.usr.y@1 main.usr.x@1)))
;; Success 

(assert (= main.usr.y@1 (+ main.usr.x@1 1)))
;; Success 

(assert (=> (>= main.usr.x@1 0) (>= main.usr.y@1 0)))
;; Success 

(assert (= 1 (- (- main.usr.x@1 main.usr.y@1))))
;; Success 

(assert (= (- main.usr.y@1) (- (+ main.usr.x@1 1))))
;; Success 

(assert (= (- 1) (- (- main.usr.y@1 main.usr.x@1))))
;; Success 

;; Querying base with actlit [%actlit_20] (0 candidates). 

(declare-fun %actlit_20 () Bool)
;; Success 

(assert (=> %actlit_20 (not true)))
;; Success 

(check-sat-assuming (%actlit_19 %actlit_20))
;; Unsat 

(assert (not %actlit_20))
;; Success 

;; Querying base with actlit [%actlit_21] (0 candidates). 

(declare-fun %actlit_21 () Bool)
;; Success 

(assert (=> %actlit_21 (not true)))
;; Success 

(check-sat-assuming (%actlit_19 %actlit_21))
;; Unsat 

(assert (not %actlit_21))
;; Success 

;; Querying base with actlit [%actlit_22] (0 candidates). 

(declare-fun %actlit_22 () Bool)
;; Success 

(assert (=> %actlit_22 (not true)))
;; Success 

(check-sat-assuming (%actlit_19 %actlit_22))
;; Unsat 

(assert (not %actlit_22))
;; Success 

;; Querying base with actlit [%actlit_23] (0 candidates). 

(declare-fun %actlit_23 () Bool)
;; Success 

(assert (=> %actlit_23 (not true)))
;; Success 

(check-sat-assuming (%actlit_19 %actlit_23))
;; Unsat 

(assert (not %actlit_23))
;; Success 

;; Querying base with actlit [%actlit_24] (0 candidates). 

(declare-fun %actlit_24 () Bool)
;; Success 

(assert (=> %actlit_24 (not true)))
;; Success 

(check-sat-assuming (%actlit_19 %actlit_24))
;; Unsat 

(assert (not %actlit_24))
;; Success 

;; Querying base with actlit [%actlit_25] (0 candidates). 

(declare-fun %actlit_25 () Bool)
;; Success 

(assert (=> %actlit_25 (not true)))
;; Success 

(check-sat-assuming (%actlit_19 %actlit_25))
;; Unsat 

(assert (not %actlit_25))
;; Success 

;; Querying base with actlit [%actlit_26] (0 candidates). 

(declare-fun %actlit_26 () Bool)
;; Success 

(assert (=> %actlit_26 (not true)))
;; Success 

(check-sat-assuming (%actlit_19 %actlit_26))
;; Unsat 

(assert (not %actlit_26))
;; Success 

;; Querying base with actlit [%actlit_27] (0 candidates). 

(declare-fun %actlit_27 () Bool)
;; Success 

(assert (=> %actlit_27 (not true)))
;; Success 

(check-sat-assuming (%actlit_19 %actlit_27))
;; Unsat 

(assert (not %actlit_27))
;; Success 

;; Querying base with actlit [%actlit_28] (0 candidates). 

(declare-fun %actlit_28 () Bool)
;; Success 

(assert (=> %actlit_28 (not true)))
;; Success 

(check-sat-assuming (%actlit_19 %actlit_28))
;; Unsat 

(assert (not %actlit_28))
;; Success 

;; Querying base with actlit [%actlit_29] (4 candidates). 

(declare-fun %actlit_29 () Bool)
;; Success 

(assert
 (=>
 %actlit_29
 (not
  (and
   (<= main.usr.x@1 main.usr.y@1)
   (<= (- main.usr.y@1) (- main.usr.x@1))
   (<= (- main.usr.x@1 main.usr.y@1) 0)
   (<= 0 1)))))
;; Success 

(check-sat-assuming (%actlit_19 %actlit_29))
;; Unsat 

(assert (not %actlit_29))
;; Success 

;; Switching to step mode. 

;; Deactivating actlit for initial predicate. 

(assert (not %actlit_19))
;; Success 

;; Declaring svars at [2]. 

(declare-fun main.usr.x@2 () Int)
;; Success 

(declare-fun main.usr.y@2 () Int)
;; Success 

(declare-fun main.res.init_flag@2 () Bool)
;; Success 

(declare-fun main.res.glocal_1@2 () Bool)
;; Success 

;; Asserting transition relation at [2]. 

(assert
 (and
 (= main.usr.y@2 (+ main.usr.x@2 1))
 (= main.res.glocal_1@2 (> main.usr.y@2 main.usr.x@2))
 (not main.res.init_flag@2)))
;; Success 

;; Asserting invariants at [2]. 

(assert main.res.glocal_1@2)
;; Success 

(assert (= (- main.usr.x@2 main.usr.y@2) (- 1)))
;; Success 

(assert (= 1 (- main.usr.y@2 main.usr.x@2)))
;; Success 

(assert (= main.usr.y@2 (+ main.usr.x@2 1)))
;; Success 

(assert (=> (>= main.usr.x@2 0) (>= main.usr.y@2 0)))
;; Success 

(assert (= 1 (- (- main.usr.x@2 main.usr.y@2))))
;; Success 

(assert (= (- main.usr.y@2) (- (+ main.usr.x@2 1))))
;; Success 

(assert (= (- 1) (- (- main.usr.y@2 main.usr.x@2))))
;; Success 

;; Querying step with actlit [%actlit_30] (0 candidates). 

(declare-fun %actlit_30 () Bool)
;; Success 

(assert (=> %actlit_30 (not true)))
;; Success 

(check-sat-assuming (%actlit_30))
;; Unsat 

;; Deactivating actlit for check. 

(assert (not %actlit_30))
;; Success 

;; Querying step with actlit [%actlit_31] (0 candidates). 

(declare-fun %actlit_31 () Bool)
;; Success 

(assert (=> %actlit_31 (not true)))
;; Success 

(check-sat-assuming (%actlit_31))
;; Unsat 

;; Deactivating actlit for check. 

(assert (not %actlit_31))
;; Success 

(exit)
;; NoResponse 

