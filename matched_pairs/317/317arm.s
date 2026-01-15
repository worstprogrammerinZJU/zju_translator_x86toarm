	.text
	.p2align	2                               // -- Begin function inst_is_binder
	.type	inst_is_binder,@function
inst_is_binder:                         // @inst_is_binder
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	opcode_describe
	ldr	w8, [x0]
	ldr	w9, [sp, #4]
	and	w9, w8, w9
	ldr	w10, [sp, #4]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp]                        // 4-byte Folded Spill
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, MODULEMETA
	ldr	x9, [x9, :lo12:MODULEMETA]
	subs	x8, x8, x9
	cset	w8, ne
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	eor	w8, w8, #0x1
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	inst_is_binder, .Lfunc_end0-inst_is_binder
                                        // -- End function
	.type	MODULEMETA,@object              // @MODULEMETA
	.bss
	.globl	MODULEMETA
	.p2align	3
MODULEMETA:
	.xword	0                               // 0x0
	.size	MODULEMETA, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym inst_is_binder
	.addrsig_sym opcode_describe
	.addrsig_sym MODULEMETA