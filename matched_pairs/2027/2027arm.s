	.text
	.p2align	2                               // -- Begin function conn_timeout
	.type	conn_timeout,@function
conn_timeout:                           // @conn_timeout
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
	ldur	x0, [x29, #-8]
	bl	conn_waiting
	cbz	x0, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	bl	conndeadlinesoon
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	mov	w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-8]
	bl	connsoonestjob
	str	x0, [sp, #24]
	cbz	x0, .LBB0_12
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	bl	nanoseconds
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	subs	x8, x8, x0
	b.lt	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_12
.LBB0_7:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_4 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #16]
	bl	job_copy
	ldur	x8, [x29, #-8]
	str	x0, [x8, #16]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_4 Depth=1
	adrp	x9, timeout_ct
	ldr	w8, [x9, :lo12:timeout_ct]
	add	w8, w8, #1
	str	w8, [x9, :lo12:timeout_ct]
	ldr	x9, [sp, #24]
	ldr	w8, [x9, #8]
	add	w8, w8, #1
	str	w8, [x9, #8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #8]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	bl	remove_this_reserved_job
	mov	w1, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	mov	w3, wzr
	mov	w2, w3
	bl	enqueue_job
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	b.ge	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_4 Depth=1
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #8]
	ldr	x1, [sp, #24]
	mov	w2, wzr
	bl	bury_job
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_4 Depth=1
	ldur	x0, [x29, #-8]
	bl	connsched
	b	.LBB0_4
.LBB0_12:
	ldur	w8, [x29, #-12]
	cbz	w8, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldur	x0, [x29, #-8]
	bl	remove_waiting_conn
	ldur	x0, [x29, #-8]
	adrp	x8, MSG_DEADLINE_SOON
	ldr	w1, [x8, :lo12:MSG_DEADLINE_SOON]
	bl	reply_msg
	b	.LBB0_18
.LBB0_14:
	ldur	x0, [x29, #-8]
	bl	conn_waiting
	cbz	x0, .LBB0_17
	b	.LBB0_15
.LBB0_15:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	tbnz	x8, #63, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	ldur	x9, [x29, #-8]
	mov	x8, #-1
	str	x8, [x9]
	ldur	x0, [x29, #-8]
	bl	remove_waiting_conn
	ldur	x0, [x29, #-8]
	adrp	x8, MSG_TIMED_OUT
	ldr	w1, [x8, :lo12:MSG_TIMED_OUT]
	bl	reply_msg
	b	.LBB0_17
.LBB0_17:
	b	.LBB0_18
.LBB0_18:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	conn_timeout, .Lfunc_end0-conn_timeout
                                        // -- End function
	.type	timeout_ct,@object              // @timeout_ct
	.bss
	.globl	timeout_ct
	.p2align	2
timeout_ct:
	.word	0                               // 0x0
	.size	timeout_ct, 4
	.type	MSG_DEADLINE_SOON,@object       // @MSG_DEADLINE_SOON
	.globl	MSG_DEADLINE_SOON
	.p2align	2
MSG_DEADLINE_SOON:
	.word	0                               // 0x0
	.size	MSG_DEADLINE_SOON, 4
	.type	MSG_TIMED_OUT,@object           // @MSG_TIMED_OUT
	.globl	MSG_TIMED_OUT
	.p2align	2
MSG_TIMED_OUT:
	.word	0                               // 0x0
	.size	MSG_TIMED_OUT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym conn_timeout
	.addrsig_sym conn_waiting
	.addrsig_sym conndeadlinesoon
	.addrsig_sym connsoonestjob
	.addrsig_sym nanoseconds
	.addrsig_sym job_copy
	.addrsig_sym enqueue_job
	.addrsig_sym remove_this_reserved_job
	.addrsig_sym bury_job
	.addrsig_sym connsched
	.addrsig_sym remove_waiting_conn
	.addrsig_sym reply_msg
	.addrsig_sym timeout_ct
	.addrsig_sym MSG_DEADLINE_SOON
	.addrsig_sym MSG_TIMED_OUT