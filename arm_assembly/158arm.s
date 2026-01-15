	.text
	.p2align	2                               // -- Begin function f_isnan
	.type	f_isnan,@function
f_isnan:                                // @f_isnan
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	ldur	w0, [x29, #-20]
	bl	jv_get_kind
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	adrp	x9, JV_KIND_NUMBER
	ldr	x9, [x9, :lo12:JV_KIND_NUMBER]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-20]
	bl	jv_free
	bl	jv_false
	stur	w0, [x29, #-4]
	b	.LBB0_6
.LBB0_2:
	ldur	w0, [x29, #-20]
	bl	jv_number_value
	str	d0, [sp, #8]
	ldur	w0, [x29, #-20]
	bl	jv_free
	ldr	d0, [sp, #8]
	bl	isnan
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	bl	jv_true
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_4:
	bl	jv_false
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	stur	w8, [x29, #-4]
	b	.LBB0_6
.LBB0_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	f_isnan, .Lfunc_end0-f_isnan
                                        // -- End function
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.xword	0                               // 0x0
	.size	JV_KIND_NUMBER, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_isnan
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_free
	.addrsig_sym jv_false
	.addrsig_sym jv_number_value
	.addrsig_sym isnan
	.addrsig_sym jv_true
	.addrsig_sym JV_KIND_NUMBER