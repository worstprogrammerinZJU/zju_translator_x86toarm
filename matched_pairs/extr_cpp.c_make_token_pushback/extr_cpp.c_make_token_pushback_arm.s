	.text
	.p2align	2                               // -- Begin function make_token_pushback
	.type	make_token_pushback,@function
make_token_pushback:                    // @make_token_pushback
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	bl	copy_token
	str	x0, [sp]
	ldur	w8, [x29, #-12]
	ldr	x9, [sp]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x8, [x9, #8]
	ldr	x0, [sp, #8]
	bl	strlen
	add	x8, x0, #1
	ldr	x9, [sp]
	str	x8, [x9, #24]
	adrp	x8, ENC_NONE
	ldr	w8, [x8, :lo12:ENC_NONE]
	ldr	x9, [sp]
	str	w8, [x9, #16]
	ldr	x0, [sp]
	bl	unget_token
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	make_token_pushback, .Lfunc_end0-make_token_pushback
                                        // -- End function
	.type	ENC_NONE,@object                // @ENC_NONE
	.bss
	.globl	ENC_NONE
	.p2align	2
ENC_NONE:
	.word	0                               // 0x0
	.size	ENC_NONE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_token_pushback
	.addrsig_sym copy_token
	.addrsig_sym strlen
	.addrsig_sym unget_token
	.addrsig_sym ENC_NONE