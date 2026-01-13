	.text
	.p2align	2                               // -- Begin function get_compound_assign_op
	.type	get_compound_assign_op,@function
get_compound_assign_op:                 // @get_compound_assign_op
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, TKEYWORD
	ldr	x9, [x9, :lo12:TKEYWORD]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #28]
	b	.LBB0_16
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #8]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	subs	x8, x8, #10
	b.hi	.LBB0_15
// %bb.3:
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_4:
	mov	w8, #43
	str	w8, [sp, #28]
	b	.LBB0_16
.LBB0_5:
	mov	w8, #45
	str	w8, [sp, #28]
	b	.LBB0_16
.LBB0_6:
	mov	w8, #42
	str	w8, [sp, #28]
	b	.LBB0_16
.LBB0_7:
	mov	w8, #47
	str	w8, [sp, #28]
	b	.LBB0_16
.LBB0_8:
	mov	w8, #37
	str	w8, [sp, #28]
	b	.LBB0_16
.LBB0_9:
	mov	w8, #38
	str	w8, [sp, #28]
	b	.LBB0_16
.LBB0_10:
	mov	w8, #124
	str	w8, [sp, #28]
	b	.LBB0_16
.LBB0_11:
	mov	w8, #94
	str	w8, [sp, #28]
	b	.LBB0_16
.LBB0_12:
	adrp	x8, OP_SAL
	ldr	w8, [x8, :lo12:OP_SAL]
	str	w8, [sp, #28]
	b	.LBB0_16
.LBB0_13:
	adrp	x8, OP_SAR
	ldr	w8, [x8, :lo12:OP_SAR]
	str	w8, [sp, #28]
	b	.LBB0_16
.LBB0_14:
	adrp	x8, OP_SHR
	ldr	w8, [x8, :lo12:OP_SHR]
	str	w8, [sp, #28]
	b	.LBB0_16
.LBB0_15:
	str	wzr, [sp, #28]
	b	.LBB0_16
.LBB0_16:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	get_compound_assign_op, .Lfunc_end0-get_compound_assign_op
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_11-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_13-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_10-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_7-.Ltmp0
	.word	.LBB0_9-.Ltmp0
	.word	.LBB0_4-.Ltmp0
                                        // -- End function
	.type	TKEYWORD,@object                // @TKEYWORD
	.bss
	.globl	TKEYWORD
	.p2align	3
TKEYWORD:
	.xword	0                               // 0x0
	.size	TKEYWORD, 8
	.type	OP_SAL,@object                  // @OP_SAL
	.globl	OP_SAL
	.p2align	2
OP_SAL:
	.word	0                               // 0x0
	.size	OP_SAL, 4
	.type	OP_SAR,@object                  // @OP_SAR
	.globl	OP_SAR
	.p2align	2
OP_SAR:
	.word	0                               // 0x0
	.size	OP_SAR, 4
	.type	OP_SHR,@object                  // @OP_SHR
	.globl	OP_SHR
	.p2align	2
OP_SHR:
	.word	0                               // 0x0
	.size	OP_SHR, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_compound_assign_op
	.addrsig_sym TKEYWORD
	.addrsig_sym OP_SAL
	.addrsig_sym OP_SAR
	.addrsig_sym OP_SHR