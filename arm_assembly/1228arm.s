	.text
	.globl	jv_is_integer                   // -- Begin function jv_is_integer
	.p2align	2
	.type	jv_is_integer,@function
jv_is_integer:                          // @jv_is_integer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-8]
	ldur	w0, [x29, #-8]
	adrp	x8, JV_KIND_NUMBER
	ldr	w1, [x8, :lo12:JV_KIND_NUMBER]
	bl	JVP_HAS_KIND
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldur	w0, [x29, #-8]
	bl	jv_number_value
	str	d0, [sp, #16]
	ldr	d0, [sp, #16]
	add	x0, sp, #8
	bl	modf
	str	d0, [sp]
	ldr	d0, [sp]
	bl	fabs
	adrp	x8, DBL_EPSILON
	ldr	x8, [x8, :lo12:DBL_EPSILON]
	subs	x8, x0, x8
	cset	w8, lt
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_is_integer, .Lfunc_end0-jv_is_integer
                                        // -- End function
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	2
JV_KIND_NUMBER:
	.word	0                               // 0x0
	.size	JV_KIND_NUMBER, 4
	.type	DBL_EPSILON,@object             // @DBL_EPSILON
	.globl	DBL_EPSILON
	.p2align	3
DBL_EPSILON:
	.xword	0                               // 0x0
	.size	DBL_EPSILON, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jv_number_value
	.addrsig_sym modf
	.addrsig_sym fabs
	.addrsig_sym JV_KIND_NUMBER
	.addrsig_sym DBL_EPSILON