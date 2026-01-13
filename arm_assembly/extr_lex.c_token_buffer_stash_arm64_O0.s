	.text
	.globl	token_buffer_stash              // -- Begin function token_buffer_stash
	.p2align	2
	.type	token_buffer_stash,@function
token_buffer_stash:                     // @token_buffer_stash
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	adrp	x8, buffers
	ldr	w0, [x8, :lo12:buffers]
	ldr	x1, [sp, #8]
	bl	vec_push
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	token_buffer_stash, .Lfunc_end0-token_buffer_stash
                                        // -- End function
	.type	buffers,@object                 // @buffers
	.bss
	.globl	buffers
	.p2align	2
buffers:
	.word	0                               // 0x0
	.size	buffers, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_push
	.addrsig_sym buffers