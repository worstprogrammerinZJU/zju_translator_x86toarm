	.text
	.globl	stack_restore                   // -- Begin function stack_restore
	.p2align	2
	.type	stack_restore,@function
stack_restore:                          // @stack_restore
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	add	x0, x8, #24
	ldur	x8, [x29, #-16]
	ldr	x1, [x8]
	bl	stack_pop_will_free
	cbnz	x0, .LBB0_9
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	add	x0, x8, #24
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #8]
	bl	stack_pop_will_free
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	bl	stack_pop
	bl	jv_free
	b	.LBB0_8
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	add	x0, x8, #24
	ldur	x8, [x29, #-16]
	ldr	x1, [x8, #16]
	bl	stack_pop_will_free
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	bl	frame_pop
	b	.LBB0_7
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w0, wzr
	bl	assert
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_9:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_15
.LBB0_11:
	ldur	x8, [x29, #-16]
	add	x0, x8, #24
	ldur	x8, [x29, #-16]
	ldr	x1, [x8]
	bl	stack_block
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #32]
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #8]
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #16]
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #16]
	str	w8, [sp, #12]
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #36]
	bl	jv_get_kind
	adrp	x8, JV_KIND_ARRAY
	ldr	x8, [x8, :lo12:JV_KIND_ARRAY]
	subs	x8, x0, x8
	b.ne	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldr	w8, [sp, #12]
	mov	w9, wzr
	str	w9, [sp, #8]                    // 4-byte Folded Spill
	subs	w8, w8, #0
	cset	w8, ge
	and	w0, w8, #0x1
	bl	assert
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #36]
	ldr	w2, [sp, #12]
	bl	jv_array_slice
	ldur	x8, [x29, #-16]
	str	w0, [x8, #36]
	b	.LBB0_14
.LBB0_13:
	ldr	x8, [sp, #24]
	str	wzr, [x8, #16]
	b	.LBB0_14
.LBB0_14:
	ldur	x8, [x29, #-16]
	ldr	w0, [x8, #32]
	bl	jv_free
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #24]
	ldur	x9, [x29, #-16]
	str	w8, [x9, #32]
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #20]
	ldur	x9, [x29, #-16]
	str	w8, [x9, #28]
	ldur	x8, [x29, #-16]
	add	x0, x8, #24
	ldur	x8, [x29, #-16]
	ldr	x1, [x8]
	mov	w2, #40
	bl	stack_pop_block
	ldur	x8, [x29, #-16]
	str	x0, [x8]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_15
.LBB0_15:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stack_restore, .Lfunc_end0-stack_restore
                                        // -- End function
	.type	JV_KIND_ARRAY,@object           // @JV_KIND_ARRAY
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.xword	0                               // 0x0
	.size	JV_KIND_ARRAY, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stack_pop_will_free
	.addrsig_sym jv_free
	.addrsig_sym stack_pop
	.addrsig_sym frame_pop
	.addrsig_sym assert
	.addrsig_sym stack_block
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_array_slice
	.addrsig_sym stack_pop_block
	.addrsig_sym JV_KIND_ARRAY