	.text
	.p2align	2                               // -- Begin function jvp_number_free
	.type	jvp_number_free,@function
jvp_number_free:                        // @jvp_number_free
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w8, w0
	stur	w8, [x29, #-4]
	adrp	x8, JV_KIND_NUMBER
	ldr	w1, [x8, :lo12:JV_KIND_NUMBER]
	ldur	w8, [x29, #-4]
	mov	w0, w8
	bl	JVP_HAS_KIND
	bl	assert
	adrp	x8, JVP_FLAGS_NUMBER_LITERAL
	ldr	w1, [x8, :lo12:JVP_FLAGS_NUMBER_LITERAL]
	ldur	w8, [x29, #-4]
	mov	w0, w8
	bl	JVP_HAS_FLAGS
	cbz	x0, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-4]
	bl	jvp_refcnt_dec
	cbz	x0, .LBB0_5
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-4]
	mov	w0, w8
	bl	jvp_literal_number_ptr
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	x8, [x8]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp]
	ldr	x0, [x8]
	bl	jv_mem_free
	b	.LBB0_4
.LBB0_4:
	ldr	x0, [sp]
	bl	jv_mem_free
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jvp_number_free, .Lfunc_end0-jvp_number_free
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_number_free
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym JVP_HAS_FLAGS
	.addrsig_sym jvp_refcnt_dec
	.addrsig_sym jvp_literal_number_ptr
	.addrsig_sym jv_mem_free
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym JVP_FLAGS_NUMBER_LITERAL