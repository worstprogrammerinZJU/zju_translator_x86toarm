	.text
	.p2align	2                               // -- Begin function handle_pragma_macro
	.type	handle_pragma_macro,@function
handle_pragma_macro:                    // @handle_pragma_macro
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	mov	w0, #40
	bl	expect
	bl	read_token
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, TSTRING
	ldr	x9, [x9, :lo12:TSTRING]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	mov	w0, #41
	bl	expect
	ldr	x0, [sp, #16]
	bl	parse_pragma_operand
	ldur	x0, [x29, #-8]
	adrp	x8, TNUMBER
	ldr	w1, [x8, :lo12:TNUMBER]
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	make_token_pushback
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	handle_pragma_macro, .Lfunc_end0-handle_pragma_macro
                                        // -- End function
	.type	TSTRING,@object                 // @TSTRING
	.bss
	.globl	TSTRING
	.p2align	3
TSTRING:
	.xword	0                               // 0x0
	.size	TSTRING, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"_Pragma takes a string literal, but got %s"
	.size	.L.str, 43
	.type	TNUMBER,@object                 // @TNUMBER
	.bss
	.globl	TNUMBER
	.p2align	2
TNUMBER:
	.word	0                               // 0x0
	.size	TNUMBER, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"1"
	.size	.L.str.1, 2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym handle_pragma_macro
	.addrsig_sym expect
	.addrsig_sym read_token
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym parse_pragma_operand
	.addrsig_sym make_token_pushback
	.addrsig_sym TSTRING
	.addrsig_sym TNUMBER