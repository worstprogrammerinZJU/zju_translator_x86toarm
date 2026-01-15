	.text
	.p2align	2                               // -- Begin function jvp_array_slice
	.type	jvp_array_slice,@function
jvp_array_slice:                        // @jvp_array_slice
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	sub	x8, x29, #20
	str	x8, [sp]                        // 8-byte Folded Spill
	stur	w1, [x29, #-20]
	sub	x8, x29, #24
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	w2, [x29, #-24]
	adrp	x8, JV_KIND_ARRAY
	ldr	w1, [x8, :lo12:JV_KIND_ARRAY]
	ldur	x0, [x29, #-16]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	x0, [x29, #-16]
	bl	jvp_array_length
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	stur	w0, [x29, #-28]
	ldur	w0, [x29, #-28]
	bl	jvp_clamp_slice_params
	ldur	w10, [x29, #-20]
	mov	w9, wzr
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b.gt	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b.gt	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	cset	w8, le
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-16]
	bl	jv_free
	bl	jv_array
	stur	x0, [x29, #-8]
	b	.LBB0_12
.LBB0_5:
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-20]
	add	w8, w8, w9
	adrp	x9, CHAR_BIT
	ldrsw	x10, [x9, :lo12:CHAR_BIT]
	mov	x9, #4
	mul	x9, x9, x10
	mov	w10, w9
	mov	w9, #1
	lsl	w9, w9, w10
	subs	w8, w8, w9
	b.lt	.LBB0_11
	b	.LBB0_6
.LBB0_6:
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-20]
	subs	w0, w8, w9
	bl	jv_array_sized
	stur	x0, [x29, #-8]
	ldur	w8, [x29, #-20]
	str	w8, [sp, #32]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #32]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	x0, [x29, #-16]
	bl	jv_copy
	ldr	w1, [sp, #32]
	bl	jv_array_get
	mov	w1, w0
	ldur	x0, [x29, #-8]
	bl	jv_array_append
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_7
.LBB0_10:
	ldur	x0, [x29, #-16]
	bl	jv_free
	b	.LBB0_12
.LBB0_11:
	ldur	w9, [x29, #-20]
	ldur	w8, [x29, #-16]
	add	w8, w8, w9
	stur	w8, [x29, #-16]
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	stur	w8, [x29, #-12]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_12
.LBB0_12:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	jvp_array_slice, .Lfunc_end0-jvp_array_slice
                                        // -- End function
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	2
JV_KIND_ARRAY:
	.word	0                               // 0x0
	.size	JV_KIND_ARRAY, 4
	.type	CHAR_BIT,@object                // @CHAR_BIT
	.globl	CHAR_BIT
	.p2align	2
CHAR_BIT:
	.word	0                               // 0x0
	.size	CHAR_BIT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_array_slice
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_array_length
	.addrsig_sym jvp_clamp_slice_params
	.addrsig_sym jv_free
	.addrsig_sym jv_array
	.addrsig_sym jv_array_sized
	.addrsig_sym jv_array_append
	.addrsig_sym jv_array_get
	.addrsig_sym jv_copy
	.addrsig_sym JV_KIND_ARRAY
	.addrsig_sym CHAR_BIT