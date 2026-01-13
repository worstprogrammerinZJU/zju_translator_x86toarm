	.text
	.p2align	2                               // -- Begin function make_macro_token
	.type	make_macro_token,@function
make_macro_token:                       // @make_macro_token
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	mov	w0, #32
	bl	malloc
	str	x0, [sp]
	adrp	x8, TMACRO_PARAM
	ldr	w8, [x8, :lo12:TMACRO_PARAM]
	ldr	x9, [sp]
	str	w8, [x9, #24]
	ldr	w8, [sp, #8]
	ldr	x9, [sp]
	str	w8, [x9]
	ldr	x8, [sp]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #16]
	ldur	w8, [x29, #-4]
	ldr	x9, [sp]
	str	w8, [x9, #4]
	ldr	x8, [sp]
	str	wzr, [x8, #8]
	ldr	x8, [sp]
	str	wzr, [x8, #12]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	make_macro_token, .Lfunc_end0-make_macro_token
                                        // -- End function
	.type	TMACRO_PARAM,@object            // @TMACRO_PARAM
	.bss
	.globl	TMACRO_PARAM
	.p2align	2
TMACRO_PARAM:
	.word	0                               // 0x0
	.size	TMACRO_PARAM, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_macro_token
	.addrsig_sym malloc
	.addrsig_sym TMACRO_PARAM