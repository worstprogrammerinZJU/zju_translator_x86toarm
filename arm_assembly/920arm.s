	.text
	.globl	stream_push                     // -- Begin function stream_push
	.p2align	2
	.type	stream_push,@function
stream_push:                            // @stream_push
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	adrp	x8, files
	ldr	w0, [x8, :lo12:files]
	ldr	x1, [sp, #8]
	bl	vec_push
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stream_push, .Lfunc_end0-stream_push
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
	.addrsig_sym vec_push
	.addrsig_sym files