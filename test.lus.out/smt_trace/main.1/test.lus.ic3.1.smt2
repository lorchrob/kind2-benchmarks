(set-option :print-success true)
;; Success 

(set-option :produce-models true)
;; Success 

(set-option :produce-unsat-assumptions true)
;; Success 

(set-logic QF_UF)
;; Success 

;; main: Declare state variables and define predicates 

(declare-fun main.usr.y@0 () Bool)
;; Success 

(declare-fun main.res.init_flag@0 () Bool)
;; Success 

(declare-fun main.usr.y@1 () Bool)
;; Success 

(declare-fun main.res.init_flag@1 () Bool)
;; Success 

(declare-fun __ic3_frame_0 () Bool)
;; Success 

;; main: Assert guarded initial state 

(assert (=> __ic3_frame_0 (and (= main.usr.y@0 true) main.res.init_flag@0)))
;; Success 

;; bmc_checks: Check for zero-step counterexample 

(declare-fun __ic3_clause_1_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_1_n0_0 (not main.usr.y@0)))
;; Success 

(check-sat-assuming (__ic3_frame_0 __ic3_clause_1_n0_0))
;; Unsat 

;; main: Assert unguarded transition relation 

(assert (and (= main.usr.y@1 true) (not main.res.init_flag@1)))
;; Success 

;; bmc_checks: Check for one-step counterexample 

(declare-fun __ic3_clause_2_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_2_n1_0 (not main.usr.y@1)))
;; Success 

(declare-fun __ic3_clause_2_p0 () Bool)
;; Success 

(assert (=> __ic3_clause_2_p0 main.usr.y@0))
;; Success 

(check-sat-assuming (__ic3_frame_0 __ic3_clause_2_p0 __ic3_clause_2_n1_0))
;; Unsat 

;; check_frames: frames k to 1 
;;  
;; Frame: 
;;  

;; check_frames: Does R_1 |= P hold? 

(declare-fun __ic3_clause_3_n0_0 () Bool)
;; Success 

(assert (=> __ic3_clause_3_n0_0 (not main.usr.y@0)))
;; Success 

(check-sat-assuming (__ic3_clause_3_n0_0))
;; Sat 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 0 

(declare-fun __ic3_check_frames_0 () Bool)
;; Success 

(assert (=> __ic3_check_frames_0 (not main.usr.y@1)))
;; Success 

(check-sat-assuming (__ic3_check_frames_0 __ic3_frame_0))
;; Unsat 

(assert (not __ic3_check_frames_0))
;; Success 

;; block: Check if all successors of frontier R_1 are safe. 

(declare-fun __ic3_clause_3_n1_0 () Bool)
;; Success 

(assert (=> __ic3_clause_3_n1_0 (not main.usr.y@1)))
;; Success 

(declare-fun __ic3_clause_3_p0 () Bool)
;; Success 

(assert (=> __ic3_clause_3_p0 main.usr.y@0))
;; Success 

(check-sat-assuming (__ic3_clause_3_p0 __ic3_clause_3_n1_0))
;; Unsat 

;; block: All successors of R_1 are safe. 

;; fwd_propagate: Checking forward propagation of clauses in frame 1. 

;; check_frames: Does R_1 |= P hold? 

(check-sat-assuming (__ic3_clause_3_n0_0))
;; Sat 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 1 

(declare-fun __ic3_check_frames_1 () Bool)
;; Success 

(assert (=> __ic3_check_frames_1 (not main.usr.y@1)))
;; Success 

(check-sat-assuming (__ic3_check_frames_1 __ic3_frame_0))
;; Unsat 

(assert (not __ic3_check_frames_1))
;; Success 

;; partition_fwd_prop: Checking for forward propagation of clause set 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for fwd_prop 0 

(declare-fun __ic3_fwd_prop_0 () Bool)
;; Success 

(assert (=> __ic3_fwd_prop_0 (not true)))
;; Success 

(check-sat-assuming (__ic3_clause_3_p0 __ic3_fwd_prop_0))
;; Unsat 

(assert (not __ic3_fwd_prop_0))
;; Success 

;; check_frames: Does R_1 |= P hold? 

(check-sat-assuming (__ic3_clause_3_n0_0))
;; Sat 

;; check_frames: Does R_0 & T |= R_1 hold? 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for check_frames 2 

(declare-fun __ic3_check_frames_2 () Bool)
;; Success 

(assert (=> __ic3_check_frames_2 (not main.usr.y@1)))
;; Success 

(check-sat-assuming (__ic3_check_frames_2 __ic3_frame_0))
;; Unsat 

(assert (not __ic3_check_frames_2))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n1 for ind_inv 0 

(declare-fun __ic3_ind_inv_0 () Bool)
;; Success 

(assert (=> __ic3_ind_inv_0 (not true)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal n0 for ind_inv 1 

(declare-fun __ic3_ind_inv_1 () Bool)
;; Success 

(assert (=> __ic3_ind_inv_1 (not true)))
;; Success 

;; create_and_assert_fresh_actlit: Assert activation literal p0 for ind_inv 2 

(declare-fun __ic3_ind_inv_2 () Bool)
;; Success 

(assert (=> __ic3_ind_inv_2 true))
;; Success 

(check-sat-assuming (__ic3_frame_0 __ic3_ind_inv_1))
;; Unsat 

(check-sat-assuming (__ic3_clause_3_p0 __ic3_ind_inv_2 __ic3_ind_inv_0))
;; Unsat 

(exit)
;; NoResponse 

