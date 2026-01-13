	.text
	.p2align	2                               // -- Begin function f_env
	.type	f_env,@function
f_env:                                  // @f_env
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w0, [x29, #-12]
	bl	jv_free
	bl	jv_object
	stur	w0, [x29, #-16]
	adrp	x8, environ
	ldr	x8, [x8, :lo12:environ]
	str	x8, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	cbz	x8, .LBB0_9
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	ldr	x8, [sp, #24]
	ldr	x0, [x8]
	mov	w1, #61
	bl	strchr
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-16]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	jv_string
	str	w0, [sp, #16]                   // 4-byte Folded Spill
	bl	jv_null
	ldr	w1, [sp, #16]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #20]                   // 4-byte Folded Reload
	bl	jv_object_set
	stur	w0, [x29, #-16]
	b	.LBB0_7
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	adrp	x9, INT_MAX
	ldrsw	x9, [x9, :lo12:INT_MAX]
	subs	x8, x8, x9
	b.ge	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-16]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-24]
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	mov	w1, w8
	bl	jv_string_sized
	str	w0, [sp, #8]                    // 4-byte Folded Spill
	ldr	x8, [sp, #32]
	add	x0, x8, #1
	bl	jv_string
	ldr	w1, [sp, #8]                    // 4-byte Folded Reload
	mov	w2, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	jv_object_set
	stur	w0, [x29, #-16]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #8
	str	x8, [sp, #24]
	b	.LBB0_1
.LBB0_9:
	ldur	w0, [x29, #-16]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	f_env, .Lfunc_end0-f_env
                                        // -- End function
	.type	environ,@object                 // @environ
	.bss
	.globl	environ
	.p2align	3
environ:
	.xword	0
	.size	environ, 8
	.type	INT_MAX,@object                 // @INT_MAX
	.globl	INT_MAX
	.p2align	2
INT_MAX:
	.word	0                               // 0x0
	.size	INT_MAX, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_env
	.addrsig_sym jv_free
	.addrsig_sym jv_object
	.addrsig_sym strchr
	.addrsig_sym jv_object_set
	.addrsig_sym jv_string
	.addrsig_sym jv_null
	.addrsig_sym jv_string_sized
	.addrsig_sym environ
	.addrsig_sym INT_MAX