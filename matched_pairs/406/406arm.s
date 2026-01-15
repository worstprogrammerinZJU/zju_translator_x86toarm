	.text
	.p2align	2                               // -- Begin function handle_file_macro
	.type	handle_file_macro,@function
handle_file_macro:                      // @handle_file_macro
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, TSTRING
	ldr	w1, [x8, :lo12:TSTRING]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w2, [x8]
	bl	make_token_pushback
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	handle_file_macro, .Lfunc_end0-handle_file_macro
                                        // -- End function
	.type	TSTRING,@object                 // @TSTRING
	.bss
	.globl	TSTRING
	.p2align	2
TSTRING:
	.word	0                               // 0x0
	.size	TSTRING, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym handle_file_macro
	.addrsig_sym make_token_pushback
	.addrsig_sym TSTRING