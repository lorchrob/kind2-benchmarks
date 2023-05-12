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

;; Asserting invariants at [0]. 

;; Querying pruning with actlit [%fresh_actlit_1] (2 candidates). 

(declare-fun %fresh_actlit_1 () Bool)
;; Success 

(assert (=> %fresh_actlit_1 (not (and main.usr.y@0 main.usr.y@0))))
;; Success 

(check-sat-assuming (%fresh_actlit_1))
;; Sat 

(get-value (main.usr.y@0 main.usr.y@0))
;; ((main.usr.y@0 false) (main.usr.y@0 false)) 

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

(assert main.usr.y@0)
;; Success 

(assert main.usr.y@0)
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

