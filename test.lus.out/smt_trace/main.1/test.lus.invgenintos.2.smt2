(set-option :print-success true)
;; Success 

(set-option :produce-models true)
;; Success 

(set-logic QF_LIA)
;; Success 

;; [Base/Step] Setting up system [main], k = 0. 

;; Actlit for initial predicate: [%actlit_0]. 

(declare-fun %actlit_0 () Bool)
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
 %actlit_0
 (and
  (= main.usr.y@0 (+ main.usr.x@0 1))
  (= main.res.glocal_1@0 (> main.usr.y@0 main.usr.x@0))
  main.res.init_flag@0)))
;; Success 

;; Asserting invariants at [0]. 

;; Querying base with actlit [%actlit_1] (14 candidates). 

(declare-fun %actlit_1 () Bool)
;; Success 

(assert
 (=>
 %actlit_1
 (not
  (and
   (= (- (- main.usr.y@0 main.usr.x@0)) (- (+ main.usr.y@0 main.usr.x@0)))
   (= (- (- main.usr.x@0 main.usr.y@0)) (- (- main.usr.y@0 main.usr.x@0)))
   (= (- (+ main.usr.x@0 1)) (- (- main.usr.x@0 main.usr.y@0)))
   (= (- main.usr.y@0) (- (+ main.usr.x@0 1)))
   (= (- main.usr.x@0) (- main.usr.y@0))
   (= (- 1) (- main.usr.x@0))
   (= (+ main.usr.y@0 main.usr.x@0) (- 1))
   (= (- main.usr.y@0 main.usr.x@0) (+ main.usr.y@0 main.usr.x@0))
   (= (- main.usr.x@0 main.usr.y@0) (- main.usr.y@0 main.usr.x@0))
   (= (+ main.usr.x@0 1) (- main.usr.x@0 main.usr.y@0))
   (= main.usr.y@0 (+ main.usr.x@0 1))
   (= main.usr.x@0 main.usr.y@0)
   (= 1 main.usr.x@0)
   (= 0 1)))))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_1))
;; Sat 

(get-value
 (main.res.glocal_1@0 main.res.init_flag@0 main.usr.y@0 main.usr.x@0))
;; ((main.res.glocal_1@0 true) 
;;     (main.res.init_flag@0 true) 
;;     (main.usr.y@0 0) 
;;     (main.usr.x@0 (- 1))) 

(assert (not %actlit_1))
;; Success 

;; Querying base with actlit [%actlit_2] (4 candidates). 

(declare-fun %actlit_2 () Bool)
;; Success 

(assert
 (=>
 %actlit_2
 (not
  (and
   (= (- main.usr.y@0) (- (+ main.usr.x@0 1)))
   (= (+ main.usr.x@0 1) (- main.usr.y@0))
   (= main.usr.y@0 (+ main.usr.x@0 1))
   (= 0 main.usr.y@0)))))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_2))
;; Sat 

(get-value
 (main.res.glocal_1@0 main.res.init_flag@0 main.usr.y@0 main.usr.x@0))
;; ((main.res.glocal_1@0 true) 
;;     (main.res.init_flag@0 true) 
;;     (main.usr.y@0 (- 1)) 
;;     (main.usr.x@0 (- 2))) 

(assert (not %actlit_2))
;; Success 

;; Querying base with actlit [%actlit_3] (0 candidates). 

(declare-fun %actlit_3 () Bool)
;; Success 

(assert (=> %actlit_3 (not true)))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_3))
;; Unsat 

(assert (not %actlit_3))
;; Success 

;; Querying base with actlit [%actlit_4] (2 candidates). 

(declare-fun %actlit_4 () Bool)
;; Success 

(assert
 (=>
 %actlit_4
 (not
  (and
   (= (- main.usr.y@0 main.usr.x@0) (- (- main.usr.x@0 main.usr.y@0)))
   (= 1 (- main.usr.y@0 main.usr.x@0))))))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_4))
;; Unsat 

(assert (not %actlit_4))
;; Success 

;; Querying base with actlit [%actlit_5] (0 candidates). 

(declare-fun %actlit_5 () Bool)
;; Success 

(assert (=> %actlit_5 (not true)))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_5))
;; Unsat 

(assert (not %actlit_5))
;; Success 

;; Querying base with actlit [%actlit_6] (1 candidates). 

(declare-fun %actlit_6 () Bool)
;; Success 

(assert (=> %actlit_6 (not (= main.usr.y@0 (+ main.usr.x@0 1)))))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_6))
;; Unsat 

(assert (not %actlit_6))
;; Success 

;; Querying base with actlit [%actlit_7] (2 candidates). 

(declare-fun %actlit_7 () Bool)
;; Success 

(assert
 (=>
 %actlit_7
 (not
  (and
   (= (- 1) (- (- main.usr.y@0 main.usr.x@0)))
   (= (- main.usr.x@0 main.usr.y@0) (- 1))))))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_7))
;; Unsat 

(assert (not %actlit_7))
;; Success 

;; Querying base with actlit [%actlit_8] (0 candidates). 

(declare-fun %actlit_8 () Bool)
;; Success 

(assert (=> %actlit_8 (not true)))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_8))
;; Unsat 

(assert (not %actlit_8))
;; Success 

;; Querying base with actlit [%actlit_9] (0 candidates). 

(declare-fun %actlit_9 () Bool)
;; Success 

(assert (=> %actlit_9 (not true)))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_9))
;; Unsat 

(assert (not %actlit_9))
;; Success 

;; Querying base with actlit [%actlit_10] (1 candidates). 

(declare-fun %actlit_10 () Bool)
;; Success 

(assert (=> %actlit_10 (not (= (- main.usr.y@0) (- (+ main.usr.x@0 1))))))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_10))
;; Unsat 

(assert (not %actlit_10))
;; Success 

;; Querying base with actlit [%actlit_11] (0 candidates). 

(declare-fun %actlit_11 () Bool)
;; Success 

(assert (=> %actlit_11 (not true)))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_11))
;; Unsat 

(assert (not %actlit_11))
;; Success 

;; Querying base with actlit [%actlit_12] (8 candidates). 

(declare-fun %actlit_12 () Bool)
;; Success 

(assert
 (=>
 %actlit_12
 (not
  (and
   (<= main.usr.x@0 (- main.usr.x@0 main.usr.y@0))
   (<= main.usr.y@0 0)
   (<= (+ main.usr.y@0 main.usr.x@0) main.usr.x@0)
   (<= (- main.usr.y@0) 1)
   (<= (- main.usr.x@0) (- (+ main.usr.y@0 main.usr.x@0)))
   (<= (- main.usr.x@0 main.usr.y@0) main.usr.y@0)
   (<= 1 (- main.usr.x@0))
   (<= 0 (- main.usr.y@0))))))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_12))
;; Sat 

(get-value
 (main.res.glocal_1@0 main.res.init_flag@0 main.usr.y@0 main.usr.x@0))
;; ((main.res.glocal_1@0 true) 
;;     (main.res.init_flag@0 true) 
;;     (main.usr.y@0 (- 2)) 
;;     (main.usr.x@0 (- 3))) 

(assert (not %actlit_12))
;; Success 

;; Querying base with actlit [%actlit_13] (10 candidates). 

(declare-fun %actlit_13 () Bool)
;; Success 

(assert
 (=>
 %actlit_13
 (not
  (and
   (<= main.usr.x@0 (- main.usr.x@0 main.usr.y@0))
   (<= main.usr.x@0 main.usr.y@0)
   (<= main.usr.y@0 0)
   (<= (+ main.usr.y@0 main.usr.x@0) main.usr.x@0)
   (<= (- main.usr.y@0) (- main.usr.x@0))
   (<= (- main.usr.x@0) (- (+ main.usr.y@0 main.usr.x@0)))
   (<= (- main.usr.x@0 main.usr.y@0) 0)
   (<= 1 (- main.usr.x@0))
   (<= 0 (- main.usr.y@0))
   (<= 0 1)))))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_13))
;; Sat 

(get-value
 (main.res.glocal_1@0 main.res.init_flag@0 main.usr.y@0 main.usr.x@0))
;; ((main.res.glocal_1@0 true) 
;;     (main.res.init_flag@0 true) 
;;     (main.usr.y@0 1) 
;;     (main.usr.x@0 0)) 

(assert (not %actlit_13))
;; Success 

;; Querying base with actlit [%actlit_14] (11 candidates). 

(declare-fun %actlit_14 () Bool)
;; Success 

(assert
 (=>
 %actlit_14
 (not
  (and
   (<= main.usr.x@0 main.usr.y@0)
   (<= main.usr.x@0 0)
   (<= main.usr.y@0 1)
   (<= (+ main.usr.y@0 main.usr.x@0) main.usr.y@0)
   (<= (- main.usr.y@0) (- (+ main.usr.y@0 main.usr.x@0)))
   (<= (- main.usr.y@0) (- main.usr.x@0))
   (<= (- main.usr.x@0 main.usr.y@0) (- (+ main.usr.y@0 main.usr.x@0)))
   (<= (- main.usr.x@0 main.usr.y@0) (- main.usr.y@0))
   (<= (- main.usr.x@0 main.usr.y@0) 0)
   (<= 0 (- main.usr.x@0))
   (<= 0 1)))))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_14))
;; Sat 

(get-value
 (main.res.glocal_1@0 main.res.init_flag@0 main.usr.y@0 main.usr.x@0))
;; ((main.res.glocal_1@0 true) 
;;     (main.res.init_flag@0 true) 
;;     (main.usr.y@0 2) 
;;     (main.usr.x@0 1)) 

(assert (not %actlit_14))
;; Success 

;; Querying base with actlit [%actlit_15] (6 candidates). 

(declare-fun %actlit_15 () Bool)
;; Success 

(assert
 (=>
 %actlit_15
 (not
  (and
   (<= main.usr.x@0 main.usr.y@0)
   (<= main.usr.x@0 1)
   (<= (- main.usr.y@0) (- main.usr.x@0))
   (<= (- main.usr.x@0 main.usr.y@0) (- main.usr.x@0))
   (<= (- main.usr.x@0 main.usr.y@0) 0)
   (<= 0 1)))))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_15))
;; Sat 

(get-value
 (main.res.glocal_1@0 main.res.init_flag@0 main.usr.y@0 main.usr.x@0))
;; ((main.res.glocal_1@0 true) 
;;     (main.res.init_flag@0 true) 
;;     (main.usr.y@0 3) 
;;     (main.usr.x@0 2)) 

(assert (not %actlit_15))
;; Success 

;; Querying base with actlit [%actlit_16] (4 candidates). 

(declare-fun %actlit_16 () Bool)
;; Success 

(assert
 (=>
 %actlit_16
 (not
  (and
   (<= main.usr.x@0 main.usr.y@0)
   (<= (- main.usr.y@0) (- main.usr.x@0))
   (<= (- main.usr.x@0 main.usr.y@0) 0)
   (<= 0 1)))))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_16))
;; Unsat 

(assert (not %actlit_16))
;; Success 

;; Switching to step mode. 

;; Deactivating actlit for initial predicate. 

(assert (not %actlit_0))
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

;; Querying step with actlit [%actlit_17] (8 candidates). 

(declare-fun %actlit_17 () Bool)
;; Success 

(assert
 (=>
 %actlit_17
 (= (- main.usr.y@0 main.usr.x@0) (- (- main.usr.x@0 main.usr.y@0)))))
;; Success 

(assert (=> %actlit_17 (= 1 (- (- main.usr.x@0 main.usr.y@0)))))
;; Success 

(assert (=> %actlit_17 (= 1 (- main.usr.y@0 main.usr.x@0))))
;; Success 

(assert (=> %actlit_17 (= (- 1) (- (- main.usr.y@0 main.usr.x@0)))))
;; Success 

(assert
 (=>
 %actlit_17
 (= (- main.usr.x@0 main.usr.y@0) (- (- main.usr.y@0 main.usr.x@0)))))
;; Success 

(assert (=> %actlit_17 (= (- main.usr.x@0 main.usr.y@0) (- 1))))
;; Success 

(assert (=> %actlit_17 (= (- main.usr.y@0) (- (+ main.usr.x@0 1)))))
;; Success 

(assert (=> %actlit_17 (= main.usr.y@0 (+ main.usr.x@0 1))))
;; Success 

(assert
 (=>
 %actlit_17
 (not
  (and
   (= (- main.usr.y@1 main.usr.x@1) (- (- main.usr.x@1 main.usr.y@1)))
   (= 1 (- (- main.usr.x@1 main.usr.y@1)))
   (= 1 (- main.usr.y@1 main.usr.x@1))
   (= (- 1) (- (- main.usr.y@1 main.usr.x@1)))
   (= (- main.usr.x@1 main.usr.y@1) (- (- main.usr.y@1 main.usr.x@1)))
   (= (- main.usr.x@1 main.usr.y@1) (- 1))
   (= (- main.usr.y@1) (- (+ main.usr.x@1 1)))
   (= main.usr.y@1 (+ main.usr.x@1 1))))))
;; Success 

(define-fun
 __gv_bool_0
 ()
 Bool
 (= (- main.usr.y@1 main.usr.x@1) (- (- main.usr.x@1 main.usr.y@1))))
;; Success 

(define-fun __gv_bool_1 () Bool (= 1 (- (- main.usr.x@1 main.usr.y@1))))
;; Success 

(define-fun __gv_bool_2 () Bool (= 1 (- main.usr.y@1 main.usr.x@1)))
;; Success 

(define-fun __gv_bool_3 () Bool (= (- 1) (- (- main.usr.y@1 main.usr.x@1))))
;; Success 

(define-fun
 __gv_bool_4
 ()
 Bool
 (= (- main.usr.x@1 main.usr.y@1) (- (- main.usr.y@1 main.usr.x@1))))
;; Success 

(define-fun __gv_bool_5 () Bool (= (- main.usr.x@1 main.usr.y@1) (- 1)))
;; Success 

(define-fun __gv_bool_6 () Bool (= (- main.usr.y@1) (- (+ main.usr.x@1 1))))
;; Success 

(define-fun __gv_bool_7 () Bool (= main.usr.y@1 (+ main.usr.x@1 1)))
;; Success 

(check-sat-assuming (%actlit_17))
;; Unsat 

;; Deactivating actlit for check. 

(assert (not %actlit_17))
;; Success 

(assert (= main.usr.y@0 (+ main.usr.x@0 1)))
;; Success 

(assert (= main.usr.y@1 (+ main.usr.x@1 1)))
;; Success 

(assert (= (- main.usr.y@0) (- (+ main.usr.x@0 1))))
;; Success 

(assert (= (- main.usr.y@1) (- (+ main.usr.x@1 1))))
;; Success 

(assert (= (- main.usr.x@0 main.usr.y@0) (- 1)))
;; Success 

(assert (= (- main.usr.x@1 main.usr.y@1) (- 1)))
;; Success 

(assert (= (- 1) (- (- main.usr.y@0 main.usr.x@0))))
;; Success 

(assert (= (- 1) (- (- main.usr.y@1 main.usr.x@1))))
;; Success 

(assert (= 1 (- main.usr.y@0 main.usr.x@0)))
;; Success 

(assert (= 1 (- main.usr.y@1 main.usr.x@1)))
;; Success 

(assert (= 1 (- (- main.usr.x@0 main.usr.y@0))))
;; Success 

(assert (= 1 (- (- main.usr.x@1 main.usr.y@1))))
;; Success 

;; Querying step with actlit [%actlit_18] (4 candidates). 

(declare-fun %actlit_18 () Bool)
;; Success 

(assert (=> %actlit_18 (<= 0 1)))
;; Success 

(assert (=> %actlit_18 (<= (- main.usr.x@0 main.usr.y@0) 0)))
;; Success 

(assert (=> %actlit_18 (<= (- main.usr.y@0) (- main.usr.x@0))))
;; Success 

(assert (=> %actlit_18 (<= main.usr.x@0 main.usr.y@0)))
;; Success 

(assert
 (=>
 %actlit_18
 (not
  (and
   (<= 0 1)
   (<= (- main.usr.x@1 main.usr.y@1) 0)
   (<= (- main.usr.y@1) (- main.usr.x@1))
   (<= main.usr.x@1 main.usr.y@1)))))
;; Success 

(define-fun __gv_bool_8 () Bool (<= 0 1))
;; Success 

(define-fun __gv_bool_9 () Bool (<= (- main.usr.x@1 main.usr.y@1) 0))
;; Success 

(define-fun __gv_bool_10 () Bool (<= (- main.usr.y@1) (- main.usr.x@1)))
;; Success 

(define-fun __gv_bool_11 () Bool (<= main.usr.x@1 main.usr.y@1))
;; Success 

(check-sat-assuming (%actlit_18))
;; Unsat 

;; Deactivating actlit for check. 

(assert (not %actlit_18))
;; Success 

(exit)
;; NoResponse 

