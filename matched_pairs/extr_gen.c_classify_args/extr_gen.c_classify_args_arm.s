	.text
	.p2align	2                               // -- Begin function classify_args
	.type	classify_args,@function
classify_args:                          // @classify_args
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	wzr, [x29, #-36]
	stur	wzr, [x29, #-40]
	mov	w8, #6
	stur	w8, [x29, #-44]
	mov	w8, #8
	str	w8, [sp, #48]
	str	wzr, [sp, #44]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #44]
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	vec_len
	ldr	w8, [sp, #28]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_16
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-32]
	ldr	w1, [sp, #44]
	bl	vec_get
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldr	x8, [x8]
	adrp	x9, KIND_STRUCT
	ldr	x9, [x9, :lo12:KIND_STRUCT]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-24]
	ldr	x1, [sp, #32]
	bl	vec_push
	b	.LBB0_14
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	ldr	x0, [x8]
	bl	is_flotype
	cbz	x0, .LBB0_9
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-40]
	add	w9, w8, #1
	stur	w9, [x29, #-40]
	ldr	w9, [sp, #48]
	subs	w8, w8, w9
	b.ge	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB0_8
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldr	x1, [sp, #32]
	bl	vec_push
	b	.LBB0_13
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-36]
	add	w9, w8, #1
	stur	w9, [x29, #-36]
	ldur	w9, [x29, #-44]
	subs	w8, w8, w9
	b.ge	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_12
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldr	x1, [sp, #32]
	bl	vec_push
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	.LBB0_1
.LBB0_16:
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	classify_args, .Lfunc_end0-classify_args
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	KIND_STRUCT,@object             // @KIND_STRUCT
	.globl	KIND_STRUCT
	.p2align	3
KIND_STRUCT:
	.xword	0                               // 0x0
	.size	KIND_STRUCT, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym classify_args
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym vec_push
	.addrsig_sym is_flotype
	.addrsig_sym SAVE
	.addrsig_sym KIND_STRUCT