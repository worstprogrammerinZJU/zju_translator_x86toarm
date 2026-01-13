	.text
	.globl	remove_waiting_conn             // -- Begin function remove_waiting_conn
	.p2align	2
	.type	remove_waiting_conn,@function
remove_waiting_conn:                    // @remove_waiting_conn
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	conn_waiting
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_6
.LBB0_2:
	adrp	x8, CONN_TYPE_WAITING
	ldr	w10, [x8, :lo12:CONN_TYPE_WAITING]
	ldur	x9, [x29, #-8]
	ldr	w8, [x9, #16]
	bic	w8, w8, w10
	str	w8, [x9, #16]
	adrp	x9, global_stat
	ldr	w8, [x9, :lo12:global_stat]
	subs	w8, w8, #1
	str	w8, [x9, :lo12:global_stat]
	str	xzr, [sp, #16]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.hs	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #16]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #8]
	ldr	x9, [sp, #8]
	ldr	w8, [x9, #4]
	subs	w8, w8, #1
	str	w8, [x9, #4]
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-8]
	bl	ms_remove
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	.LBB0_3
.LBB0_6:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	remove_waiting_conn, .Lfunc_end0-remove_waiting_conn
                                        // -- End function
	.type	CONN_TYPE_WAITING,@object       // @CONN_TYPE_WAITING
	.bss
	.globl	CONN_TYPE_WAITING
	.p2align	2
CONN_TYPE_WAITING:
	.word	0                               // 0x0
	.size	CONN_TYPE_WAITING, 4
	.type	global_stat,@object             // @global_stat
	.globl	global_stat
	.p2align	2
global_stat:
	.zero	4
	.size	global_stat, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym conn_waiting
	.addrsig_sym ms_remove
	.addrsig_sym CONN_TYPE_WAITING
	.addrsig_sym global_stat