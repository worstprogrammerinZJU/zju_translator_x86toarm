	.text
	.p2align	2                               // -- Begin function process_queue
	.type	process_queue,@function
process_queue:                          // @process_queue
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, global_stat
	add	x8, x8, :lo12:global_stat
	str	x8, [sp]                        // 8-byte Folded Spill
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	bl	nanoseconds
	stur	w0, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w0, [x29, #-12]
	bl	next_awaited_job
	stur	x0, [x29, #-8]
	cbz	x0, .LBB0_7
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	add	x0, x8, #8
	ldur	x8, [x29, #-8]
	ldr	w1, [x8, #16]
	bl	heapremove
	adrp	x9, ready_ct
	ldr	w8, [x9, :lo12:ready_ct]
	subs	w8, w8, #1
	str	w8, [x9, :lo12:ready_ct]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	adrp	x9, URGENT_THRESHOLD
	ldr	x9, [x9, :lo12:URGENT_THRESHOLD]
	subs	x8, x8, x9
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	w8, [x9, #4]
	subs	w8, w8, #1
	str	w8, [x9, #4]
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldr	w8, [x9, #4]
	subs	w8, w8, #1
	str	w8, [x9, #4]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	bl	ms_take
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarnx
	b	.LBB0_1
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x9, global_stat
	ldr	w8, [x9, :lo12:global_stat]
	add	w8, w8, #1
	str	w8, [x9, :lo12:global_stat]
	ldr	x0, [sp, #8]
	bl	remove_waiting_conn
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-8]
	bl	conn_reserve_job
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-8]
	adrp	x8, MSG_RESERVED
	ldr	w2, [x8, :lo12:MSG_RESERVED]
	bl	reply_job
	b	.LBB0_1
.LBB0_7:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	process_queue, .Lfunc_end0-process_queue
                                        // -- End function
	.type	ready_ct,@object                // @ready_ct
	.bss
	.globl	ready_ct
	.p2align	2
ready_ct:
	.word	0                               // 0x0
	.size	ready_ct, 4
	.type	URGENT_THRESHOLD,@object        // @URGENT_THRESHOLD
	.globl	URGENT_THRESHOLD
	.p2align	3
URGENT_THRESHOLD:
	.xword	0                               // 0x0
	.size	URGENT_THRESHOLD, 8
	.type	global_stat,@object             // @global_stat
	.globl	global_stat
	.p2align	2
global_stat:
	.zero	8
	.size	global_stat, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"waiting_conns is empty"
	.size	.L.str, 23
	.type	MSG_RESERVED,@object            // @MSG_RESERVED
	.bss
	.globl	MSG_RESERVED
	.p2align	2
MSG_RESERVED:
	.word	0                               // 0x0
	.size	MSG_RESERVED, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym process_queue
	.addrsig_sym nanoseconds
	.addrsig_sym next_awaited_job
	.addrsig_sym heapremove
	.addrsig_sym ms_take
	.addrsig_sym twarnx
	.addrsig_sym remove_waiting_conn
	.addrsig_sym conn_reserve_job
	.addrsig_sym reply_job
	.addrsig_sym ready_ct
	.addrsig_sym URGENT_THRESHOLD
	.addrsig_sym global_stat
	.addrsig_sym MSG_RESERVED