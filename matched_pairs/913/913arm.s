	.text
	.globl	make_file_string                // -- Begin function make_file_string
	.p2align	2
	.type	make_file_string,@function
make_file_string:                       // @make_file_string
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	mov	w0, #1
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	mov	w1, #16
	bl	calloc
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	str	x0, [sp, #16]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	ldr	x9, [sp, #16]
	str	w8, [x9, #4]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #16]
	str	x8, [x9, #8]
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	make_file_string, .Lfunc_end0-make_file_string
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc