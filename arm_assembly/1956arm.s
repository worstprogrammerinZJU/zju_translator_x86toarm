	.text
	.p2align	2                               // -- Begin function usual_arith_conv
	.type	usual_arith_conv,@function
usual_arith_conv:                       // @usual_arith_conv
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	is_arithtype
	bl	assert
	ldr	x0, [sp, #24]
	bl	is_arithtype
	bl	assert
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #24]
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-16]
	bl	is_flotype
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_13
.LBB0_4:
	ldur	x0, [x29, #-16]
	bl	is_inttype
	mov	w8, #0
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	adrp	x9, type_int
	ldr	x9, [x9, :lo12:type_int]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, ge
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldr	x0, [sp, #24]
	bl	is_inttype
	mov	w8, #0
	str	w8, [sp]                        // 4-byte Folded Spill
	cbz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #24]
	ldr	x8, [x8, #8]
	adrp	x9, type_int
	ldr	x9, [x9, :lo12:type_int]
	ldr	x9, [x9]
	subs	x8, x8, x9
	cset	w8, ge
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.le	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_13
.LBB0_10:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldr	x9, [sp, #24]
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_13
.LBB0_12:
	ldur	x0, [x29, #-16]
	bl	copy_type
	str	x0, [sp, #8]
	ldr	x9, [sp, #8]
	mov	x8, #1
	str	x8, [x9, #16]
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB0_13
.LBB0_13:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	usual_arith_conv, .Lfunc_end0-usual_arith_conv
                                        // -- End function
	.type	type_int,@object                // @type_int
	.bss
	.globl	type_int
	.p2align	3
type_int:
	.xword	0
	.size	type_int, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym usual_arith_conv
	.addrsig_sym assert
	.addrsig_sym is_arithtype
	.addrsig_sym is_flotype
	.addrsig_sym is_inttype
	.addrsig_sym copy_type
	.addrsig_sym type_int