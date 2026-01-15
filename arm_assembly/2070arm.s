	.text
	.p2align	2                               // -- Begin function wait_for_job
	.type	wait_for_job,@function
wait_for_job:                           // @wait_for_job
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	adrp	x8, STATE_WAIT
	ldr	w8, [x8, :lo12:STATE_WAIT]
	ldr	x9, [sp, #8]
	str	w8, [x9, #4]
	ldr	x0, [sp, #8]
	bl	enqueue_waiting_conn
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	x0, [sp, #8]
	mov	w1, #104
	bl	epollq_add
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	wait_for_job, .Lfunc_end0-wait_for_job
                                        // -- End function
	.type	STATE_WAIT,@object              // @STATE_WAIT
	.bss
	.globl	STATE_WAIT
	.p2align	2
STATE_WAIT:
	.word	0                               // 0x0
	.size	STATE_WAIT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym wait_for_job
	.addrsig_sym enqueue_waiting_conn
	.addrsig_sym epollq_add
	.addrsig_sym STATE_WAIT