	.text
	.p2align	2                               // -- Begin function gen_const_array
	.type	gen_const_array,@function
gen_const_array:                        // @gen_const_array
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	mov	w8, #1
	stur	w8, [x29, #-4]
	stur	wzr, [x29, #-8]
	stur	w8, [x29, #-12]
	bl	jv_array
	mov	w8, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	stur	w8, [x29, #-16]
	ldr	x8, [x0, #16]
	stur	x8, [x29, #-24]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_22
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	adrp	x9, FORK
	ldr	x9, [x9, :lo12:FORK]
	subs	x8, x8, x9
	b.ne	.LBB0_8
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	adrp	x9, JUMP
	ldr	x9, [x9, :lo12:JUMP]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w0, [x29, #-16]
	bl	jv_copy
	bl	jv_array_length
	subs	w8, w0, #0
	b.le	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	stur	wzr, [x29, #-12]
	b	.LBB0_22
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_20
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	cbz	w8, .LBB0_14
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	adrp	x9, LOADK
	ldr	x9, [x9, :lo12:LOADK]
	subs	x8, x8, x9
	b.ne	.LBB0_14
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #24]
	cbz	x8, .LBB0_13
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #24]
	ldr	x8, [x8]
	adrp	x9, JUMP
	ldr	x9, [x9, :lo12:JUMP]
	subs	x8, x8, x9
	b.eq	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	stur	wzr, [x29, #-12]
	b	.LBB0_22
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-16]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	w0, [x8, #16]
	bl	jv_copy
	mov	w1, w0
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	bl	jv_array_append
	stur	w0, [x29, #-16]
	b	.LBB0_19
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	adrp	x9, JUMP
	ldr	x9, [x9, :lo12:JUMP]
	subs	x8, x8, x9
	b.ne	.LBB0_17
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_17
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	adrp	x9, LOADK
	ldr	x9, [x9, :lo12:LOADK]
	subs	x8, x8, x9
	b.eq	.LBB0_18
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-4]
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #24]
	stur	x8, [x29, #-24]
	b	.LBB0_1
.LBB0_22:
	ldur	w8, [x29, #-4]
	cbz	w8, .LBB0_28
	b	.LBB0_23
.LBB0_23:
	ldur	w8, [x29, #-12]
	cbz	w8, .LBB0_28
	b	.LBB0_24
.LBB0_24:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_26
	b	.LBB0_25
.LBB0_25:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	adrp	x9, LOADK
	ldr	x9, [x9, :lo12:LOADK]
	subs	x8, x8, x9
	b.ne	.LBB0_28
	b	.LBB0_26
.LBB0_26:
	ldur	w0, [x29, #-16]
	bl	jv_copy
	bl	jv_array_length
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	subs	w8, w0, w8
	b.ne	.LBB0_28
	b	.LBB0_27
.LBB0_27:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	q0, [x8]
	add	x0, sp, #48
	str	q0, [sp, #48]
	ldr	x8, [x8, #16]
	str	x8, [sp, #64]
	bl	block_free
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-16]
	bl	gen_const
	b	.LBB0_29
.LBB0_28:
	ldur	w0, [x29, #-16]
	bl	jv_free
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	xzr, [sp, #24]
	str	xzr, [sp, #32]
	str	xzr, [sp, #40]
	ldur	q0, [sp, #24]
	str	q0, [x9]
	ldr	x8, [sp, #40]
	str	x8, [x9, #16]
	b	.LBB0_29
.LBB0_29:
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	gen_const_array, .Lfunc_end0-gen_const_array
                                        // -- End function
	.type	FORK,@object                    // @FORK
	.bss
	.globl	FORK
	.p2align	3
FORK:
	.xword	0                               // 0x0
	.size	FORK, 8
	.type	JUMP,@object                    // @JUMP
	.globl	JUMP
	.p2align	3
JUMP:
	.xword	0                               // 0x0
	.size	JUMP, 8
	.type	LOADK,@object                   // @LOADK
	.globl	LOADK
	.p2align	3
LOADK:
	.xword	0                               // 0x0
	.size	LOADK, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gen_const_array
	.addrsig_sym jv_array
	.addrsig_sym jv_array_length
	.addrsig_sym jv_copy
	.addrsig_sym jv_array_append
	.addrsig_sym block_free
	.addrsig_sym gen_const
	.addrsig_sym jv_free
	.addrsig_sym FORK
	.addrsig_sym JUMP
	.addrsig_sym LOADK