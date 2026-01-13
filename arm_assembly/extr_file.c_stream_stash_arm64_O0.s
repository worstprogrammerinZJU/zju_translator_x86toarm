	.text
	.globl	stream_stash                    // -- Begin function stream_stash
	.p2align	2
	.type	stream_stash,@function
stream_stash:                           // @stream_stash
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	adrp	x8, stashed
	ldr	w0, [x8, :lo12:stashed]
	adrp	x8, files
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	w1, [x8, :lo12:files]
	bl	vec_push
	ldr	x0, [sp, #8]
	bl	make_vector1
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	w0, [x8, :lo12:files]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stream_stash, .Lfunc_end0-stream_stash
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
	.addrsig_sym vec_push
	.addrsig_sym make_vector1
	.addrsig_sym stashed
	.addrsig_sym files