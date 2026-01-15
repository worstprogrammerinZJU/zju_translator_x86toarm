	.text
	.p2align	2                               // -- Begin function make_cond_incl
	.type	make_cond_incl,@function
make_cond_incl:                         // @make_cond_incl
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	mov	w0, #1
	mov	w1, #8
	bl	calloc
	str	x0, [sp]
	adrp	x8, IN_THEN
	ldr	w8, [x8, :lo12:IN_THEN]
	ldr	x9, [sp]
	str	w8, [x9, #4]
	ldur	w8, [x29, #-4]
	ldr	x9, [sp]
	str	w8, [x9]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	make_cond_incl, .Lfunc_end0-make_cond_incl
                                        // -- End function
	.type	IN_THEN,@object                 // @IN_THEN
	.bss
	.globl	IN_THEN
	.p2align	2
IN_THEN:
	.word	0                               // 0x0
	.size	IN_THEN, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_cond_incl
	.addrsig_sym calloc
	.addrsig_sym IN_THEN