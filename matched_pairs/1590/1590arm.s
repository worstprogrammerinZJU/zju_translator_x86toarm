	.text
	.p2align	2                               // -- Begin function newcharset
	.type	newcharset,@function
newcharset:                             // @newcharset
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x8, CHARSETINSTSIZE
	ldr	w1, [x8, :lo12:CHARSETINSTSIZE]
	bl	newpatt
	str	x0, [sp]
	adrp	x8, ISet
	ldr	w8, [x8, :lo12:ISet]
	ldr	x9, [sp]
	str	w8, [x9, #8]
	adrp	x9, i
	ldr	x0, [x9, :lo12:i]
	ldr	x8, [sp]
	ldr	x8, [x8, #16]
	ldr	x9, [x9, :lo12:i]
	mov	x1, xzr
	str	x1, [x8, x9, lsl #3]
	bl	loopset
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	newcharset, .Lfunc_end0-newcharset
                                        // -- End function
	.type	CHARSETINSTSIZE,@object         // @CHARSETINSTSIZE
	.bss
	.globl	CHARSETINSTSIZE
	.p2align	2
CHARSETINSTSIZE:
	.word	0                               // 0x0
	.size	CHARSETINSTSIZE, 4
	.type	ISet,@object                    // @ISet
	.globl	ISet
	.p2align	2
ISet:
	.word	0                               // 0x0
	.size	ISet, 4
	.type	i,@object                       // @i
	.globl	i
	.p2align	3
i:
	.xword	0                               // 0x0
	.size	i, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym newcharset
	.addrsig_sym newpatt
	.addrsig_sym loopset
	.addrsig_sym CHARSETINSTSIZE
	.addrsig_sym ISet
	.addrsig_sym i