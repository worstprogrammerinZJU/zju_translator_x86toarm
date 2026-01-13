	.text
	.p2align	2                               // -- Begin function sizei
	.type	sizei,@function
sizei:                                  // @sizei
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	ldr	x0, [sp]
	bl	hascharset
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, CHARSETINSTSIZE
	ldr	w8, [x8, :lo12:CHARSETINSTSIZE]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, IFunc
	ldr	x9, [x9, :lo12:IFunc]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	sizei, .Lfunc_end0-sizei
                                        // -- End function
	.type	CHARSETINSTSIZE,@object         // @CHARSETINSTSIZE
	.bss
	.globl	CHARSETINSTSIZE
	.p2align	2
CHARSETINSTSIZE:
	.word	0                               // 0x0
	.size	CHARSETINSTSIZE, 4
	.type	IFunc,@object                   // @IFunc
	.globl	IFunc
	.p2align	3
IFunc:
	.xword	0                               // 0x0
	.size	IFunc, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sizei
	.addrsig_sym hascharset
	.addrsig_sym CHARSETINSTSIZE
	.addrsig_sym IFunc