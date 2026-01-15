	.text
	.globl	block_is_const_inf              // -- Begin function block_is_const_inf
	.p2align	2
	.type	block_is_const_inf,@function
block_is_const_inf:                     // @block_is_const_inf
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	block_is_single
	mov	w8, #0
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	cbz	x0, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	adrp	x8, LOADK
	ldr	x10, [x8, :lo12:LOADK]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ne	.LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	bl	jv_get_kind
	adrp	x8, JV_KIND_NUMBER
	ldr	x9, [x8, :lo12:JV_KIND_NUMBER]
	mov	w8, #0
	subs	x9, x0, x9
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	bl	jv_number_value
	bl	isinf
	subs	x8, x0, #0
	cset	w8, ne
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	block_is_const_inf, .Lfunc_end0-block_is_const_inf
                                        // -- End function
	.type	LOADK,@object                   // @LOADK
	.bss
	.globl	LOADK
	.p2align	3
LOADK:
	.xword	0                               // 0x0
	.size	LOADK, 8
	.type	JV_KIND_NUMBER,@object          // @JV_KIND_NUMBER
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.xword	0                               // 0x0
	.size	JV_KIND_NUMBER, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_is_single
	.addrsig_sym jv_get_kind
	.addrsig_sym isinf
	.addrsig_sym jv_number_value
	.addrsig_sym LOADK
	.addrsig_sym JV_KIND_NUMBER