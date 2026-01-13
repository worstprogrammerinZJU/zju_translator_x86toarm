	.text
	.globl	init_now                        // -- Begin function init_now
	.p2align	2
	.type	init_now,@function
init_now:                               // @init_now
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	x0, xzr
	bl	time
	mov	w8, w0
	sub	x0, x29, #4
	stur	w8, [x29, #-4]
	adrp	x1, now
	add	x1, x1, :lo12:now
	bl	localtime_r
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	init_now, .Lfunc_end0-init_now
                                        // -- End function
	.type	now,@object                     // @now
	.bss
	.globl	now
	.p2align	2
now:
	.word	0                               // 0x0
	.size	now, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym time
	.addrsig_sym localtime_r
	.addrsig_sym now