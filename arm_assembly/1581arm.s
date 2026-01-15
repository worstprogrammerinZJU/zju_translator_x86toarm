	.text
	.p2align	2                               // -- Begin function getstrcaps
	.type	getstrcaps,@function
getstrcaps:                             // @getstrcaps
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	str	w2, [sp, #4]
	ldr	w8, [sp, #4]
	add	w9, w8, #1
	str	w9, [sp, #4]
	str	w8, [sp]
	ldr	w8, [sp]
	adrp	x9, MAXSTRCAPS
	ldr	w9, [x9, :lo12:MAXSTRCAPS]
	subs	w8, w8, w9
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	w8, [x8]
	ldr	x9, [sp, #8]
	ldrsw	x10, [sp]
	add	x9, x9, x10, lsl #3
	str	w8, [x9, #4]
	b	.LBB0_2
.LBB0_2:
	ldr	x10, [sp, #16]
	ldr	x8, [x10]
	mov	x9, x8
	add	x9, x9, #4
	str	x9, [x10]
	mov	w0, w8
	bl	isfullcap
	cbnz	w0, .LBB0_9
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	x0, [x8]
	bl	isclosecap
	cbnz	w0, .LBB0_8
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #16]
	ldr	x0, [x8]
	bl	captype
	adrp	x8, Csimple
	ldr	x8, [x8, :lo12:Csimple]
	subs	x8, x0, x8
	b.eq	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #8]
	ldr	w2, [sp, #4]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
	stur	w0, [x29, #-4]
	b	.LBB0_12
.LBB0_7:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	w2, [sp, #4]
	bl	getstrcaps
	str	w0, [sp, #4]
	b	.LBB0_4
.LBB0_8:
	ldr	x9, [sp, #16]
	ldr	x8, [x9]
	add	x8, x8, #4
	str	x8, [x9]
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp]
	adrp	x9, MAXSTRCAPS
	ldr	w9, [x9, :lo12:MAXSTRCAPS]
	subs	w8, w8, w9
	b.ge	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	subs	x0, x8, #4
	bl	closeaddr
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp]
	lsl	x9, x9, #3
	str	w0, [x8, x9]
	b	.LBB0_11
.LBB0_11:
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	.LBB0_12
.LBB0_12:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	getstrcaps, .Lfunc_end0-getstrcaps
                                        // -- End function
	.type	MAXSTRCAPS,@object              // @MAXSTRCAPS
	.bss
	.globl	MAXSTRCAPS
	.p2align	2
MAXSTRCAPS:
	.word	0                               // 0x0
	.size	MAXSTRCAPS, 4
	.type	Csimple,@object                 // @Csimple
	.globl	Csimple
	.p2align	3
Csimple:
	.xword	0                               // 0x0
	.size	Csimple, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid capture #%d in replacement pattern"
	.size	.L.str, 43
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym getstrcaps
	.addrsig_sym isfullcap
	.addrsig_sym isclosecap
	.addrsig_sym captype
	.addrsig_sym luaL_error
	.addrsig_sym closeaddr
	.addrsig_sym MAXSTRCAPS
	.addrsig_sym Csimple