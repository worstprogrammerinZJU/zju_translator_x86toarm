	.text
	.p2align	2                               // -- Begin function handle_base_file_macro
	.type	handle_base_file_macro,@function
handle_base_file_macro:                 // @handle_base_file_macro
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	adrp	x8, TSTRING
	ldr	w8, [x8, :lo12:TSTRING]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	bl	get_base_file
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	make_token_pushback
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	handle_base_file_macro, .Lfunc_end0-handle_base_file_macro
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
	.addrsig_sym handle_base_file_macro
	.addrsig_sym make_token_pushback
	.addrsig_sym get_base_file
	.addrsig_sym TSTRING