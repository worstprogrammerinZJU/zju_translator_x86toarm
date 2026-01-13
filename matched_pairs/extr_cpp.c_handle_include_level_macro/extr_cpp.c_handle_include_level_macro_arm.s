	.text
	.p2align	2                               // -- Begin function handle_include_level_macro
	.type	handle_include_level_macro,@function
handle_include_level_macro:             // @handle_include_level_macro
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	adrp	x8, TNUMBER
	ldr	w8, [x8, :lo12:TNUMBER]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	bl	stream_depth
	subs	x1, x0, #1
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	format
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	make_token_pushback
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	handle_include_level_macro, .Lfunc_end0-handle_include_level_macro
                                        // -- End function
	.type	TNUMBER,@object                 // @TNUMBER
	.bss
	.globl	TNUMBER
	.p2align	2
TNUMBER:
	.word	0                               // 0x0
	.size	TNUMBER, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym handle_include_level_macro
	.addrsig_sym make_token_pushback
	.addrsig_sym format
	.addrsig_sym stream_depth
	.addrsig_sym TNUMBER