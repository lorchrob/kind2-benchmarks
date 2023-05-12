(set-option :print-success true)
;; Success 

(set-option :produce-models true)
;; Success 

(set-logic QF_UF)
;; Success 

;; [Base/Step] Setting up system [main], k = 1. 

;; Actlit for initial predicate: [%actlit_0]. 

(declare-fun %actlit_0 () Bool)
;; Success 

;; Declaring system's svars at [0]. 

(declare-fun main.usr.y@0 () Bool)
;; Success 

(declare-fun main.res.init_flag@0 () Bool)
;; Success 

;; Conditional initial predicate. 

(assert (=> %actlit_0 (and (= main.usr.y@0 true) main.res.init_flag@0)))
;; Success 

;; Asserting invariants at [0]. 

;; Declaring svars at [1]. 

(declare-fun main.usr.y@1 () Bool)
;; Success 

(declare-fun main.res.init_flag@1 () Bool)
;; Success 

;; Asserting transition relation at [1]. 

(assert (and (= main.usr.y@1 true) (not main.res.init_flag@1)))
;; Success 

;; Asserting invariants at [1]. 

;; Querying base with actlit [%actlit_1] (9 candidates). 

(declare-fun %actlit_1 () Bool)
;; Success 

(assert
 (=>
 %actlit_1
 (not
  (and
   (= (not main.res.init_flag@0) (not main.usr.y@0))
   (= main.usr.y@0 (not main.res.init_flag@0))
   (= main.res.init_flag@0 main.usr.y@0)
   (= (not main.usr.y@1) main.res.init_flag@0)
   (= (not main.res.init_flag@1) (not main.usr.y@1))
   (= main.usr.y@1 (not main.res.init_flag@1))
   (= main.res.init_flag@1 main.usr.y@1)
   main.res.init_flag@1
   (not true)))))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_1))
;; Sat 

(get-value
 (main.res.init_flag@1 main.usr.y@1 main.res.init_flag@0 main.usr.y@0))
;; ((main.res.init_flag@1 false) 
;;     (main.usr.y@1 true) 
;;     (main.res.init_flag@0 true) 
;;     (main.usr.y@0 true)) 

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
   (= main.res.init_flag@0 main.usr.y@0)
   (= (not main.res.init_flag@1) main.res.init_flag@0)
   (= main.usr.y@1 (not main.res.init_flag@1))
   main.usr.y@1))))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_2))
;; Unsat 

(assert (not %actlit_2))
;; Success 

;; Querying base with actlit [%actlit_3] (4 candidates). 

(declare-fun %actlit_3 () Bool)
;; Success 

(assert
 (=>
 %actlit_3
 (not
  (and
   (= (not main.res.init_flag@0) (not main.usr.y@0))
   (= (not main.usr.y@1) (not main.res.init_flag@0))
   (= main.res.init_flag@1 (not main.usr.y@1))
   (not main.res.init_flag@1)))))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_3))
;; Unsat 

(assert (not %actlit_3))
;; Success 

;; Querying base with actlit [%actlit_4] (0 candidates). 

(declare-fun %actlit_4 () Bool)
;; Success 

(assert (=> %actlit_4 (not true)))
;; Success 

(check-sat-assuming (%actlit_0 %actlit_4))
;; Unsat 

(assert (not %actlit_4))
;; Success 

;; Switching to step mode. 

;; Deactivating actlit for initial predicate. 

(assert (not %actlit_0))
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

;; Querying step with actlit [%actlit_5] (8 candidates). 

(declare-fun %actlit_5 () Bool)
;; Success 

(assert (=> %actlit_5 (= main.res.init_flag@1 (not main.res.init_flag@0))))
;; Success 

(assert (=> %actlit_5 (= main.res.init_flag@1 (not main.usr.y@0))))
;; Success 

(assert (=> %actlit_5 (= (not main.usr.y@1) (not main.res.init_flag@0))))
;; Success 

(assert (=> %actlit_5 (= (not main.usr.y@1) (not main.usr.y@0))))
;; Success 

(assert (=> %actlit_5 (= main.usr.y@1 main.res.init_flag@0)))
;; Success 

(assert (=> %actlit_5 (= main.usr.y@1 main.usr.y@0)))
;; Success 

(assert (=> %actlit_5 (= (not main.res.init_flag@1) main.res.init_flag@0)))
;; Success 

(assert (=> %actlit_5 (= (not main.res.init_flag@1) main.usr.y@0)))
;; Success 

(assert
 (=>
 %actlit_5
 (not
  (and
   (= main.res.init_flag@2 (not main.res.init_flag@1))
   (= main.res.init_flag@2 (not main.usr.y@1))
   (= (not main.usr.y@2) (not main.res.init_flag@1))
   (= (not main.usr.y@2) (not main.usr.y@1))
   (= main.usr.y@2 main.res.init_flag@1)
   (= main.usr.y@2 main.usr.y@1)
   (= (not main.res.init_flag@2) main.res.init_flag@1)
   (= (not main.res.init_flag@2) main.usr.y@1)))))
;; Success 

(define-fun
 __gv_bool_0
 ()
 Bool
 (= main.res.init_flag@2 (not main.res.init_flag@1)))
;; Success 

(define-fun __gv_bool_1 () Bool (= main.res.init_flag@2 (not main.usr.y@1)))
;; Success 

(define-fun
 __gv_bool_2
 ()
 Bool
 (= (not main.usr.y@2) (not main.res.init_flag@1)))
;; Success 

(define-fun __gv_bool_3 () Bool (= (not main.usr.y@2) (not main.usr.y@1)))
;; Success 

(define-fun __gv_bool_4 () Bool (= main.usr.y@2 main.res.init_flag@1))
;; Success 

(define-fun __gv_bool_5 () Bool (= main.usr.y@2 main.usr.y@1))
;; Success 

(define-fun
 __gv_bool_6
 ()
 Bool
 (= (not main.res.init_flag@2) main.res.init_flag@1))
;; Success 

(define-fun __gv_bool_7 () Bool (= (not main.res.init_flag@2) main.usr.y@1))
;; Success 

(check-sat-assuming (%actlit_5))
;; Sat 

(get-value
 (__gv_bool_0
  __gv_bool_1
  __gv_bool_2
  __gv_bool_3
  __gv_bool_4
  __gv_bool_5
  __gv_bool_6
  __gv_bool_7))
;; ((__gv_bool_0 false) 
;;     (__gv_bool_1 true) 
;;     (__gv_bool_2 false) 
;;     (__gv_bool_3 true) 
;;     (__gv_bool_4 false) 
;;     (__gv_bool_5 true) 
;;     (__gv_bool_6 false) 
;;     (__gv_bool_7 true)) 

;; Deactivating actlit for check. 

(assert (not %actlit_5))
;; Success 

;; Querying step with actlit [%actlit_6] (4 candidates). 

(declare-fun %actlit_6 () Bool)
;; Success 

(assert (=> %actlit_6 (= (not main.res.init_flag@1) main.usr.y@0)))
;; Success 

(assert (=> %actlit_6 (= main.usr.y@1 main.usr.y@0)))
;; Success 

(assert (=> %actlit_6 (= (not main.usr.y@1) (not main.usr.y@0))))
;; Success 

(assert (=> %actlit_6 (= main.res.init_flag@1 (not main.usr.y@0))))
;; Success 

(assert
 (=>
 %actlit_6
 (not
  (and
   (= (not main.res.init_flag@2) main.usr.y@1)
   (= main.usr.y@2 main.usr.y@1)
   (= (not main.usr.y@2) (not main.usr.y@1))
   (= main.res.init_flag@2 (not main.usr.y@1))))))
;; Success 

(define-fun __gv_bool_8 () Bool (= (not main.res.init_flag@2) main.usr.y@1))
;; Success 

(define-fun __gv_bool_9 () Bool (= main.usr.y@2 main.usr.y@1))
;; Success 

(define-fun __gv_bool_10 () Bool (= (not main.usr.y@2) (not main.usr.y@1)))
;; Success 

(define-fun __gv_bool_11 () Bool (= main.res.init_flag@2 (not main.usr.y@1)))
;; Success 

(check-sat-assuming (%actlit_6))
;; Unsat 

;; Deactivating actlit for check. 

(assert (not %actlit_6))
;; Success 

(assert (= main.res.init_flag@1 (not main.usr.y@0)))
;; Success 

(assert (= main.res.init_flag@2 (not main.usr.y@1)))
;; Success 

(assert (= (not main.usr.y@1) (not main.usr.y@0)))
;; Success 

(assert (= (not main.usr.y@2) (not main.usr.y@1)))
;; Success 

(assert (= main.usr.y@1 main.usr.y@0))
;; Success 

(assert (= main.usr.y@2 main.usr.y@1))
;; Success 

(assert (= (not main.res.init_flag@1) main.usr.y@0))
;; Success 

(assert (= (not main.res.init_flag@2) main.usr.y@1))
;; Success 

;; Querying step with actlit [%actlit_7] (4 candidates). 

(declare-fun %actlit_7 () Bool)
;; Success 

(assert (=> %actlit_7 (= main.res.init_flag@1 (not main.res.init_flag@0))))
;; Success 

(assert (=> %actlit_7 (= (not main.usr.y@1) (not main.res.init_flag@0))))
;; Success 

(assert (=> %actlit_7 (= main.usr.y@1 main.res.init_flag@0)))
;; Success 

(assert (=> %actlit_7 (= (not main.res.init_flag@1) main.res.init_flag@0)))
;; Success 

(assert
 (=>
 %actlit_7
 (not
  (and
   (= main.res.init_flag@2 (not main.res.init_flag@1))
   (= (not main.usr.y@2) (not main.res.init_flag@1))
   (= main.usr.y@2 main.res.init_flag@1)
   (= (not main.res.init_flag@2) main.res.init_flag@1)))))
;; Success 

(define-fun
 __gv_bool_12
 ()
 Bool
 (= main.res.init_flag@2 (not main.res.init_flag@1)))
;; Success 

(define-fun
 __gv_bool_13
 ()
 Bool
 (= (not main.usr.y@2) (not main.res.init_flag@1)))
;; Success 

(define-fun __gv_bool_14 () Bool (= main.usr.y@2 main.res.init_flag@1))
;; Success 

(define-fun
 __gv_bool_15
 ()
 Bool
 (= (not main.res.init_flag@2) main.res.init_flag@1))
;; Success 

(check-sat-assuming (%actlit_7))
;; Sat 

(get-value (__gv_bool_12 __gv_bool_13 __gv_bool_14 __gv_bool_15))
;; ((__gv_bool_12 false) 
;;     (__gv_bool_13 false) 
;;     (__gv_bool_14 false) 
;;     (__gv_bool_15 false)) 

;; Deactivating actlit for check. 

(assert (not %actlit_7))
;; Success 

;; Querying step with actlit [%actlit_8] (0 candidates). 

(declare-fun %actlit_8 () Bool)
;; Success 

(assert (=> %actlit_8 (not true)))
;; Success 

(check-sat-assuming (%actlit_8))
;; Unsat 

;; Deactivating actlit for check. 

(assert (not %actlit_8))
;; Success 

(exit)
;; NoResponse 

