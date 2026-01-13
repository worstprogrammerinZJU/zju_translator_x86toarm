	.text
	.p2align	2                               // -- Begin function mark
	.type	mark,@function
mark:                                   // @mark
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	mov	w0, wzr
	bl	get_pos
	adrp	x8, pos
	str	w0, [x8, :lo12:pos]
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	mark, .Lfunc_end0-mark
                                        // -- End function
	.type	pos,@object                     // @pos
	.bss
	.globl	pos
	.p2align	2
pos:
	.word	0                               // 0x0
	.size	pos, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mark
	.addrsig_sym get_pos
	.addrsig_sym pos