	.text
	.globl	decContextSetStatus             // -- Begin function decContextSetStatus
	.p2align	2
	.type	decContextSetStatus,@function
decContextSetStatus:                    // @decContextSetStatus
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w10, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #4]
	and	w8, w8, w9
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, SIGFPE
	ldr	w0, [x8, :lo12:SIGFPE]
	bl	raise
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	decContextSetStatus, .Lfunc_end0-decContextSetStatus
                                        // -- End function
	.type	SIGFPE,@object                  // @SIGFPE
	.bss
	.globl	SIGFPE
	.p2align	2
SIGFPE:
	.word	0                               // 0x0
	.size	SIGFPE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym raise
	.addrsig_sym SIGFPE