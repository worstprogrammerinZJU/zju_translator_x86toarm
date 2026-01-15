	.text
	.p2align	2                               // -- Begin function pop
	.type	pop,@function
pop:                                    // @pop
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x1, [sp, #8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
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
	.size	pop, .Lfunc_end0-pop
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
	.asciz	"pop #%s"
	.size	.L.str, 8
	.type	stackpos,@object                // @stackpos
	.bss
	.globl	stackpos
	.p2align	3
stackpos:
	.xword	0                               // 0x0
	.size	stackpos, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pop
	.addrsig_sym emit
	.addrsig_sym assert
	.addrsig_sym SAVE
	.addrsig_sym stackpos