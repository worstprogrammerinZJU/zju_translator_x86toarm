	.text
	.p2align	2                               // -- Begin function jvp_object_new
	.type	jvp_object_new,@function
jvp_object_new:                         // @jvp_object_new
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x8, [sp]                        // 8-byte Folded Spill
	stur	w0, [x29, #-4]
	ldur	w9, [x29, #-4]
	mov	w8, #0
	subs	w9, w9, #0
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-4]
	ldur	w9, [x29, #-4]
	subs	w9, w9, #1
	ands	w8, w8, w9
	cset	w8, eq
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldursw	x8, [x29, #-4]
	mov	x9, #4
	mul	x8, x9, x8
	add	x8, x8, #24
	ldur	w10, [x29, #-4]
	lsl	w11, w10, #1
                                        // implicit-def: $x10
	mov	w10, w11
	sxtw	x10, w10
	mul	x9, x9, x10
	add	x8, x8, x9
	mov	w0, w8
	bl	jv_mem_alloc
	stur	x0, [x29, #-16]
	ldur	x9, [x29, #-16]
	mov	w8, #1
	str	w8, [x9]
	stur	wzr, [x29, #-20]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-20]
	subs	w8, w8, #1
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-20]
	lsl	x10, x10, #5
	str	w8, [x9, x10]
	adrp	x8, JV_NULL
	ldr	x9, [x8, :lo12:JV_NULL]
	ldur	x10, [x29, #-16]
	ldr	x10, [x10, #8]
	ldursw	x11, [x29, #-20]
	add	x10, x10, x11, lsl #5
	str	x9, [x10, #24]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-20]
	add	x9, x9, x10, lsl #5
	str	xzr, [x9, #16]
	ldr	x8, [x8, :lo12:JV_NULL]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-20]
	add	x9, x9, x10, lsl #5
	str	x8, [x9, #8]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_3
.LBB0_6:
	ldur	x8, [x29, #-16]
	str	xzr, [x8, #16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldursw	x9, [x29, #-4]
	add	x8, x8, x9, lsl #5
	str	x8, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9, lsl #1
	b.ge	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #12]
	mov	w8, #-1
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_7
.LBB0_10:
	ldr	x9, [sp]                        // 8-byte Folded Reload
	adrp	x8, JVP_FLAGS_OBJECT
	ldr	w8, [x8, :lo12:JVP_FLAGS_OBJECT]
	str	w8, [x9]
                                        // kill: def $x8 killed $xzr
	str	xzr, [x9, #8]
	str	wzr, [x9, #16]
	ldur	w8, [x29, #-4]
	str	w8, [x9, #20]
	ldur	x8, [x29, #-16]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [x9, #24]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jvp_object_new, .Lfunc_end0-jvp_object_new
                                        // -- End function
	.type	JV_NULL,@object                 // @JV_NULL
	.bss
	.globl	JV_NULL
	.p2align	3
JV_NULL:
	.xword	0
	.size	JV_NULL, 8
	.type	JVP_FLAGS_OBJECT,@object        // @JVP_FLAGS_OBJECT
	.globl	JVP_FLAGS_OBJECT
	.p2align	2
JVP_FLAGS_OBJECT:
	.word	0                               // 0x0
	.size	JVP_FLAGS_OBJECT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_new
	.addrsig_sym assert
	.addrsig_sym jv_mem_alloc
	.addrsig_sym JV_NULL
	.addrsig_sym JVP_FLAGS_OBJECT