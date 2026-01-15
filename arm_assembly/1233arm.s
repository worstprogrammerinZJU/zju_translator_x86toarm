	.text
	.globl	jv_number_value                 // -- Begin function jv_number_value
	.p2align	2
	.type	jv_number_value,@function
jv_number_value:                        // @jv_number_value
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	str	x1, [sp, #8]
	adrp	x8, JV_KIND_NUMBER
	ldr	w2, [x8, :lo12:JV_KIND_NUMBER]
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	bl	JVP_HAS_KIND
	bl	assert
	ldr	d0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_number_value, .Lfunc_end0-jv_number_value
                                        // -- End function
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	2
JV_KIND_NUMBER:
	.word	0                               // 0x0
	.size	JV_KIND_NUMBER, 4
	.type	JVP_FLAGS_NUMBER_LITERAL,@object // @JVP_FLAGS_NUMBER_LITERAL
	.globl	JVP_FLAGS_NUMBER_LITERAL
	.p2align	2
JVP_FLAGS_NUMBER_LITERAL:
	.word	0                               // 0x0
	.size	JVP_FLAGS_NUMBER_LITERAL, 4
	.type	JV_NUMBER_SIZE_CONVERTED,@object // @JV_NUMBER_SIZE_CONVERTED
	.globl	JV_NUMBER_SIZE_CONVERTED
	.p2align	3
JV_NUMBER_SIZE_CONVERTED:
	.xword	0                               // 0x0
	.size	JV_NUMBER_SIZE_CONVERTED, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym JV_KIND_NUMBER