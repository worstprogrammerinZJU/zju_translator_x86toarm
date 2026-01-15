	.text
	.globl	yylex                           // -- Begin function yylex
	.p2align	2
	.type	yylex,@function
yylex:                                  // @yylex
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	str	x4, [sp, #24]
	str	x5, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldr	w2, [sp, #12]
	bl	jq_yylex
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	adrp	x9, LITERAL
	ldr	w9, [x9, :lo12:LITERAL]
	subs	w8, w8, w9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #8]
	adrp	x9, QQSTRING_TEXT
	ldr	w9, [x9, :lo12:QQSTRING_TEXT]
	subs	w8, w8, w9
	b.ne	.LBB0_7
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	w0, [x8]
	bl	jv_is_valid
	cbnz	w0, .LBB0_7
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-8]
	ldr	w0, [x8]
	bl	jv_copy
	bl	jv_invalid_get_msg
	str	w0, [sp, #4]
	ldr	w0, [sp, #4]
	bl	jv_get_kind
	adrp	x8, JV_KIND_STRING
	ldr	x8, [x8, :lo12:JV_KIND_STRING]
	subs	x8, x0, x8
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	str	w8, [sp]                        // 4-byte Folded Spill
	ldr	w0, [sp, #4]
	bl	jv_string_value
	mov	x1, x0
	ldr	w0, [sp]                        // 4-byte Folded Reload
	bl	FAIL
	b	.LBB0_6
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	FAIL
	b	.LBB0_6
.LBB0_6:
	ldr	w0, [sp, #4]
	bl	jv_free
	ldur	x8, [x29, #-8]
	ldr	w0, [x8]
	bl	jv_free
	bl	jv_null
	ldur	x8, [x29, #-8]
	str	w0, [x8]
	b	.LBB0_7
.LBB0_7:
	ldr	w0, [sp, #8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	yylex, .Lfunc_end0-yylex
                                        // -- End function
	.type	LITERAL,@object                 // @LITERAL
	.bss
	.globl	LITERAL
	.p2align	2
LITERAL:
	.word	0                               // 0x0
	.size	LITERAL, 4
	.type	QQSTRING_TEXT,@object           // @QQSTRING_TEXT
	.globl	QQSTRING_TEXT
	.p2align	2
QQSTRING_TEXT:
	.word	0                               // 0x0
	.size	QQSTRING_TEXT, 4
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.xword	0                               // 0x0
	.size	JV_KIND_STRING, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Invalid literal"
	.size	.L.str, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_yylex
	.addrsig_sym jv_is_valid
	.addrsig_sym jv_invalid_get_msg
	.addrsig_sym jv_copy
	.addrsig_sym jv_get_kind
	.addrsig_sym FAIL
	.addrsig_sym jv_string_value
	.addrsig_sym jv_free
	.addrsig_sym jv_null
	.addrsig_sym LITERAL
	.addrsig_sym QQSTRING_TEXT
	.addrsig_sym JV_KIND_STRING