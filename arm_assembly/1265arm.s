	.text
	.p2align	2                               // -- Begin function jvp_array_free
	.type	jvp_array_free,@function
jvp_array_free:                         // @jvp_array_free
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	w8, w0
	stur	w8, [x29, #-4]
	adrp	x8, JV_KIND_ARRAY
	ldr	w1, [x8, :lo12:JV_KIND_ARRAY]
	ldur	w8, [x29, #-4]
	mov	w0, w8
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-4]
	bl	jvp_refcnt_dec
	cbz	x0, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-4]
	mov	w0, w8
	bl	jvp_array_ptr
	str	x0, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #16]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #12]
	ldr	w0, [x8, x9, lsl #2]
	bl	jv_free
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_2
.LBB0_5:
	ldr	x0, [sp, #16]
	bl	jv_mem_free
	b	.LBB0_6
.LBB0_6:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jvp_array_free, .Lfunc_end0-jvp_array_free
                                        // -- End function
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	2
JV_KIND_ARRAY:
	.word	0                               // 0x0
	.size	JV_KIND_ARRAY, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_array_free
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_refcnt_dec
	.addrsig_sym jvp_array_ptr
	.addrsig_sym jv_free
	.addrsig_sym jv_mem_free
	.addrsig_sym JV_KIND_ARRAY