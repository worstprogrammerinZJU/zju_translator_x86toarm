	.text
	.p2align	2                               // -- Begin function handle_timestamp_macro
	.type	handle_timestamp_macro,@function
handle_timestamp_macro:                 // @handle_timestamp_macro
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	bl	localtime
	mov	w3, w0
	add	x0, sp, #26
	str	x0, [sp]                        // 8-byte Folded Spill
	mov	w1, #30
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	strftime
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	adrp	x8, TSTRING
	ldr	w8, [x8, :lo12:TSTRING]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	bl	strdup
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	make_token_pushback
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	handle_timestamp_macro, .Lfunc_end0-handle_timestamp_macro
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%a %b %e %T %Y"
	.size	.L.str, 15
	.type	TSTRING,@object                 // @TSTRING
	.bss
	.globl	TSTRING
	.p2align	2
TSTRING:
	.word	0                               // 0x0
	.size	TSTRING, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym handle_timestamp_macro
	.addrsig_sym strftime
	.addrsig_sym localtime
	.addrsig_sym make_token_pushback
	.addrsig_sym strdup
	.addrsig_sym TSTRING