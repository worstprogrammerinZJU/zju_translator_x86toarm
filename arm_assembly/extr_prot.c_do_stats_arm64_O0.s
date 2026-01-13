	.text
	.p2align	2                               // -- Begin function do_stats
	.type	do_stats,@function
do_stats:                               // @do_stats
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x2, [sp, #8]
	mov	x0, xzr
	mov	w1, wzr
	blr	x8
	add	w8, w0, #16
	str	w8, [sp]
	ldr	w0, [sp]
	bl	allocate_job
	ldur	x8, [x29, #-8]
	str	x0, [x8, #8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	adrp	x8, MSG_OUT_OF_MEMORY
	ldr	w1, [x8, :lo12:MSG_OUT_OF_MEMORY]
	bl	reply_serr
	b	.LBB0_5
.LBB0_2:
	adrp	x8, Copy
	ldr	w8, [x8, :lo12:Copy]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	str	w8, [x9, #4]
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	ldr	x0, [x9, #8]
	ldr	w1, [sp]
	ldr	x2, [sp, #8]
	blr	x8
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	str	w8, [x9]
	ldr	w8, [sp, #4]
	ldr	w9, [sp]
	subs	w8, w8, w9
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	adrp	x8, MSG_INTERNAL_ERROR
	ldr	w1, [x8, :lo12:MSG_INTERNAL_ERROR]
	bl	reply_serr
	b	.LBB0_5
.LBB0_4:
	ldur	x8, [x29, #-8]
	str	xzr, [x8]
	ldur	x0, [x29, #-8]
	adrp	x8, STATE_SEND_JOB
	ldr	w1, [x8, :lo12:STATE_SEND_JOB]
	ldr	w8, [sp, #4]
	subs	w3, w8, #2
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	reply_line
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	do_stats, .Lfunc_end0-do_stats
                                        // -- End function
	.type	MSG_OUT_OF_MEMORY,@object       // @MSG_OUT_OF_MEMORY
	.bss
	.globl	MSG_OUT_OF_MEMORY
	.p2align	2
MSG_OUT_OF_MEMORY:
	.word	0                               // 0x0
	.size	MSG_OUT_OF_MEMORY, 4
	.type	Copy,@object                    // @Copy
	.globl	Copy
	.p2align	2
Copy:
	.word	0                               // 0x0
	.size	Copy, 4
	.type	MSG_INTERNAL_ERROR,@object      // @MSG_INTERNAL_ERROR
	.globl	MSG_INTERNAL_ERROR
	.p2align	2
MSG_INTERNAL_ERROR:
	.word	0                               // 0x0
	.size	MSG_INTERNAL_ERROR, 4
	.type	STATE_SEND_JOB,@object          // @STATE_SEND_JOB
	.globl	STATE_SEND_JOB
	.p2align	2
STATE_SEND_JOB:
	.word	0                               // 0x0
	.size	STATE_SEND_JOB, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"OK %d\r\n"
	.size	.L.str, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym do_stats
	.addrsig_sym allocate_job
	.addrsig_sym reply_serr
	.addrsig_sym reply_line
	.addrsig_sym MSG_OUT_OF_MEMORY
	.addrsig_sym Copy
	.addrsig_sym MSG_INTERNAL_ERROR
	.addrsig_sym STATE_SEND_JOB