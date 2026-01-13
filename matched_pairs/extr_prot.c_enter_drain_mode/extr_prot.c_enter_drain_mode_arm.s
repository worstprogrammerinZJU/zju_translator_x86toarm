	.text
	.globl	enter_drain_mode                // -- Begin function enter_drain_mode
	.p2align	2
	.type	enter_drain_mode,@function
enter_drain_mode:                       // @enter_drain_mode
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	UNUSED_PARAMETER
	adrp	x9, drain_mode
	mov	w8, #1
	str	w8, [x9, :lo12:drain_mode]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	enter_drain_mode, .Lfunc_end0-enter_drain_mode
                                        // -- End function
	.type	drain_mode,@object              // @drain_mode
	.bss
	.globl	drain_mode
	.p2align	2
drain_mode:
	.word	0                               // 0x0
	.size	drain_mode, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym UNUSED_PARAMETER
	.addrsig_sym drain_mode