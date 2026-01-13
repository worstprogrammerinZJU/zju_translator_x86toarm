	.text
	.globl	stream_depth                    // -- Begin function stream_depth
	.p2align	2
	.type	stream_depth,@function
stream_depth:                           // @stream_depth
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, files
	ldr	w0, [x8, :lo12:files]
	bl	vec_len
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	stream_depth, .Lfunc_end0-stream_depth
                                        // -- End function
	.type	files,@object                   // @files
	.bss
	.globl	files
	.p2align	2
files:
	.word	0                               // 0x0
	.size	files, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_len
	.addrsig_sym files