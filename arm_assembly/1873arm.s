	.text
	.p2align	2                               // -- Begin function read_declarator
	.type	read_declarator,@function
read_declarator:                        // @read_declarator
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	w3, [x29, #-36]
	mov	w0, #40
	bl	next_token
	cbz	x0, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	bl	peek
	bl	is_type
	cbz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	read_declarator_func
	stur	x0, [x29, #-8]
	b	.LBB0_14
.LBB0_3:
	bl	make_stub_type
	str	x0, [sp, #48]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #48]
	ldur	x2, [x29, #-32]
	ldur	w3, [x29, #-36]
	bl	read_declarator
	str	x0, [sp, #40]
	mov	w0, #41
	bl	expect
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	read_declarator_tail
	ldr	w8, [x0]
	ldr	x9, [sp, #48]
	str	w8, [x9]
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-8]
	b	.LBB0_14
.LBB0_4:
	mov	w0, #42
	bl	next_token
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	bl	skip_type_qualifiers
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	make_ptr_type
	mov	x1, x0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	ldur	x2, [x29, #-32]
	ldur	w3, [x29, #-36]
	bl	read_declarator
	stur	x0, [x29, #-8]
	b	.LBB0_14
.LBB0_6:
	bl	get
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.ne	.LBB0_10
	b	.LBB0_7
.LBB0_7:
	ldur	w8, [x29, #-36]
	adrp	x9, DECL_CAST
	ldr	w9, [x9, :lo12:DECL_CAST]
	subs	w8, w8, w9
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #32]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldr	x0, [sp, #32]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_9
.LBB0_9:
	ldr	x8, [sp, #32]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	read_declarator_tail
	stur	x0, [x29, #-8]
	b	.LBB0_14
.LBB0_10:
	ldur	w8, [x29, #-36]
	adrp	x9, DECL_BODY
	ldr	w9, [x9, :lo12:DECL_BODY]
	subs	w8, w8, w9
	b.eq	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldur	w8, [x29, #-36]
	adrp	x9, DECL_PARAM
	ldr	w9, [x9, :lo12:DECL_PARAM]
	subs	w8, w8, w9
	b.ne	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldr	x8, [sp, #32]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x0, [sp, #32]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	errort
	b	.LBB0_13
.LBB0_13:
	ldr	x0, [sp, #32]
	bl	unget_token
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	bl	read_declarator_tail
	stur	x0, [x29, #-8]
	b	.LBB0_14
.LBB0_14:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	read_declarator, .Lfunc_end0-read_declarator
                                        // -- End function
	.type	TIDENT,@object                  // @TIDENT
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.xword	0                               // 0x0
	.size	TIDENT, 8
	.type	DECL_CAST,@object               // @DECL_CAST
	.globl	DECL_CAST
	.p2align	2
DECL_CAST:
	.word	0                               // 0x0
	.size	DECL_CAST, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"identifier is not expected, but got %s"
	.size	.L.str, 39
	.type	DECL_BODY,@object               // @DECL_BODY
	.bss
	.globl	DECL_BODY
	.p2align	2
DECL_BODY:
	.word	0                               // 0x0
	.size	DECL_BODY, 4
	.type	DECL_PARAM,@object              // @DECL_PARAM
	.globl	DECL_PARAM
	.p2align	2
DECL_PARAM:
	.word	0                               // 0x0
	.size	DECL_PARAM, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"identifier, ( or * are expected, but got %s"
	.size	.L.str.1, 44
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_declarator
	.addrsig_sym next_token
	.addrsig_sym is_type
	.addrsig_sym peek
	.addrsig_sym read_declarator_func
	.addrsig_sym make_stub_type
	.addrsig_sym expect
	.addrsig_sym read_declarator_tail
	.addrsig_sym skip_type_qualifiers
	.addrsig_sym make_ptr_type
	.addrsig_sym get
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym unget_token
	.addrsig_sym TIDENT
	.addrsig_sym DECL_CAST
	.addrsig_sym DECL_BODY
	.addrsig_sym DECL_PARAM