	.text
	.p2align	2                               // -- Begin function maybe_enqueue_incoming_job
	.type	maybe_enqueue_incoming_job,@function
maybe_enqueue_incoming_job:             // @maybe_enqueue_incoming_job
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	str	x8, [sp]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	bl	enqueue_incoming_job
	b	.LBB0_3
.LBB0_2:
	adrp	x8, STATE_WANT_DATA
	ldr	w8, [x8, :lo12:STATE_WANT_DATA]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	maybe_enqueue_incoming_job, .Lfunc_end0-maybe_enqueue_incoming_job
                                        // -- End function
	.type	STATE_WANT_DATA,@object         // @STATE_WANT_DATA
	.bss
	.globl	STATE_WANT_DATA
	.p2align	2
STATE_WANT_DATA:
	.word	0                               // 0x0
	.size	STATE_WANT_DATA, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_enqueue_incoming_job
	.addrsig_sym enqueue_incoming_job
	.addrsig_sym STATE_WANT_DATA