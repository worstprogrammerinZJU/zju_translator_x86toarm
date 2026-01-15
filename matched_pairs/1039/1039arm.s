	.text
	.p2align	2                               // -- Begin function pop_xmm
	.type	pop_xmm,@function
pop_xmm:                                // @pop_xmm
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	adrp	x8, stackpos
	ldr	x9, [x8, :lo12:stackpos]
	subs	x9, x9, #8
	str	x9, [x8, :lo12:stackpos]
	ldr	x8, [x8, :lo12:stackpos]
	subs	x8, x8, #0
	cset	w8, ge
	and	w0, w8, #0x1
	bl	assert
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	pop_xmm, .Lfunc_end0-pop_xmm
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"movsd (#rsp), #xmm%d"
	.size	.L.str, 21
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"add $8, #rsp"
	.size	.L.str.1, 13
	.type	stackpos,@object                // @stackpos
	.bss
	.globl	stackpos
	.p2align	3
stackpos:
	.xword	0                               // 0x0
	.size	stackpos, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pop_xmm
	.addrsig_sym emit
	.addrsig_sym assert
	.addrsig_sym SAVE
	.addrsig_sym stackpos