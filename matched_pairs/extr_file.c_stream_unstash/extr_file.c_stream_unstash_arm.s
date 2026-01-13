	.text
	.globl	stream_unstash                  // -- Begin function stream_unstash
	.p2align	2
	.type	stream_unstash,@function
stream_unstash:                         // @stream_unstash
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, stashed
	ldr	w0, [x8, :lo12:stashed]
	bl	vec_pop
	adrp	x8, files
	str	w0, [x8, :lo12:files]
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	stream_unstash, .Lfunc_end0-stream_unstash
                                        // -- End function
	.type	stashed,@object                 // @stashed
	.bss
	.globl	stashed
	.p2align	2
stashed:
	.word	0                               // 0x0
	.size	stashed, 4
	.type	files,@object                   // @files
	.globl	files
	.p2align	2
files:
	.word	0                               // 0x0
	.size	files, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_pop
	.addrsig_sym stashed
	.addrsig_sym files