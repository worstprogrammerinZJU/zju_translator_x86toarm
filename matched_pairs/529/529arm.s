	.text
	.globl	load_data_blocking              // -- Begin function load_data_blocking
	.p2align	2
	.type	load_data_blocking,@function
load_data_blocking:                     // @load_data_blocking
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w8, w0
	stur	w8, [x29, #-4]
	mov	w0, #1
	mov	w1, #4
	bl	calloc
	str	x0, [sp]
	ldr	x9, [sp]
	ldur	w8, [x29, #-4]
	str	w8, [x9]
	ldr	x0, [sp]
	bl	load_thread
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	load_data_blocking, .Lfunc_end0-load_data_blocking
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym load_thread