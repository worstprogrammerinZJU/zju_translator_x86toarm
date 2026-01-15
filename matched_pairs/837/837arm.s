	.text
	.globl	signalHandler                   // -- Begin function signalHandler
	.p2align	2
	.type	signalHandler,@function
signalHandler:                          // @signalHandler
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	adrp	x8, SIGFPE
	ldr	w0, [x8, :lo12:SIGFPE]
	adrp	x1, signalHandler
	add	x1, x1, :lo12:signalHandler
	bl	signal
	adrp	x8, preserve
	ldr	w0, [x8, :lo12:preserve]
	ldur	w1, [x29, #-4]
	bl	longjmp
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	signalHandler, .Lfunc_end0-signalHandler
                                        // -- End function
	.type	SIGFPE,@object                  // @SIGFPE
	.bss
	.globl	SIGFPE
	.p2align	2
SIGFPE:
	.word	0                               // 0x0
	.size	SIGFPE, 4
	.type	preserve,@object                // @preserve
	.globl	preserve
	.p2align	2
preserve:
	.word	0                               // 0x0
	.size	preserve, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym signalHandler
	.addrsig_sym signal
	.addrsig_sym longjmp
	.addrsig_sym SIGFPE
	.addrsig_sym preserve