	.text
	.globl	jq_parse_library                // -- Begin function jq_parse_library
	.p2align	2
	.type	jq_parse_library,@function
jq_parse_library:                       // @jq_parse_library
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	jq_parse
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	block_has_main
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	adrp	x8, UNKNOWN_LOCATION
	ldr	w1, [x8, :lo12:UNKNOWN_LOCATION]
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	locfile_locate
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	adrp	x8, OP_IS_CALL_PSEUDO
	ldr	w1, [x8, :lo12:OP_IS_CALL_PSEUDO]
	bl	block_has_only_binders_and_imports
	bl	assert
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jq_parse_library, .Lfunc_end0-jq_parse_library
                                        // -- End function
	.type	UNKNOWN_LOCATION,@object        // @UNKNOWN_LOCATION
	.bss
	.globl	UNKNOWN_LOCATION
	.p2align	2
UNKNOWN_LOCATION:
	.word	0                               // 0x0
	.size	UNKNOWN_LOCATION, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jq: error: library should only have function definitions, not a main expression"
	.size	.L.str, 80
	.type	OP_IS_CALL_PSEUDO,@object       // @OP_IS_CALL_PSEUDO
	.bss
	.globl	OP_IS_CALL_PSEUDO
	.p2align	2
OP_IS_CALL_PSEUDO:
	.word	0                               // 0x0
	.size	OP_IS_CALL_PSEUDO, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_parse
	.addrsig_sym block_has_main
	.addrsig_sym locfile_locate
	.addrsig_sym assert
	.addrsig_sym block_has_only_binders_and_imports
	.addrsig_sym UNKNOWN_LOCATION
	.addrsig_sym OP_IS_CALL_PSEUDO