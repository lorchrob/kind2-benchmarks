(set-option :print-success true)
;; Success 

(set-option :produce-models true)
;; Success 

(set-logic QF_UF)
;; Success 

;; [Pruning] Setting up system [main]. 

(declare-fun main.usr.y@0 () Bool)
;; Success 

(declare-fun main.res.init_flag@0 () Bool)
;; Success 

(declare-fun main.usr.y@1 () Bool)
;; Success 

(declare-fun main.res.init_flag@1 () Bool)
;; Success 

;; Asserting invariants at [0]. 

;; Asserting invariants at [1]. 

;; Asserting transition relation. 

(assert (and (= main.usr.y@1 true) (not main.res.init_flag@1)))
;; Success 

;; Querying pruning with actlit [%fresh_actlit_1] (4 candidates). 

(declare-fun %fresh_actlit_1 () Bool)
;; Success 

(assert
 (=>
 %fresh_actlit_1
 (not
  (and
   (= (not main.res.init_flag@1) main.usr.y@0)
   (= main.usr.y@1 main.usr.y@0)
   (= (not main.usr.y@1) (not main.usr.y@0))
   (= main.res.init_flag@1 (not main.usr.y@0))))))
;; Success 

(define-fun __gv_bool_0 () Bool (= (not main.res.init_flag@1) main.usr.y@0))
;; Success 

(define-fun __gv_bool_1 () Bool (= main.usr.y@1 main.usr.y@0))
;; Success 

(define-fun __gv_bool_2 () Bool (= (not main.usr.y@1) (not main.usr.y@0)))
;; Success 

(define-fun __gv_bool_3 () Bool (= main.res.init_flag@1 (not main.usr.y@0)))
;; Success 

(check-sat-assuming (%fresh_actlit_1))
;; Sat 

(get-value (__gv_bool_0 __gv_bool_1 __gv_bool_2 __gv_bool_3))
;; ((__gv_bool_0 false) 
;;     (__gv_bool_1 false) 
;;     (__gv_bool_2 false) 
;;     (__gv_bool_3 false)) 

;; Deactivating actlit for previous check. 

(assert (not %fresh_actlit_1))
;; Success 

;; Querying pruning with actlit [%fresh_actlit_2] (0 candidates). 

(declare-fun %fresh_actlit_2 () Bool)
;; Success 

(assert (=> %fresh_actlit_2 (not true)))
;; Success 

(check-sat-assuming (%fresh_actlit_2))
;; Unsat 

;; Deactivating actlit for previous check. 

(assert (not %fresh_actlit_2))
;; Success 

;; |===| Done. 

(assert (= (not main.res.init_flag@1) main.usr.y@0))
;; Success 

(assert (= main.usr.y@1 main.usr.y@0))
;; Success 

(assert (= (not main.usr.y@1) (not main.usr.y@0)))
;; Success 

(assert (= main.res.init_flag@1 (not main.usr.y@0)))
;; Success 

;; Querying pruning with actlit [%fresh_actlit_3] (0 candidates). 

(declare-fun %fresh_actlit_3 () Bool)
;; Success 

(assert (=> %fresh_actlit_3 (not true)))
;; Success 

(check-sat-assuming (%fresh_actlit_3))
;; Unsat 

;; Deactivating actlit for previous check. 

(assert (not %fresh_actlit_3))
;; Success 

;; |===| Done. 

(assert main.usr.y@0)
;; Success 

;; Querying pruning with actlit [%fresh_actlit_4] (0 candidates). 

(declare-fun %fresh_actlit_4 () Bool)
;; Success 

(assert (=> %fresh_actlit_4 (not true)))
;; Success 

(check-sat-assuming (%fresh_actlit_4))
;; Unsat 

;; Deactivating actlit for previous check. 

(assert (not %fresh_actlit_4))
;; Success 

;; |===| Done. 

;; Querying pruning with actlit [%fresh_actlit_5] (0 candidates). 

(declare-fun %fresh_actlit_5 () Bool)
;; Success 

(assert (=> %fresh_actlit_5 (not true)))
;; Success 

(check-sat-assuming (%fresh_actlit_5))
;; Unsat 

;; Deactivating actlit for previous check. 

(assert (not %fresh_actlit_5))
;; Success 

;; |===| Done. 

(exit)
;; NoResponse 

