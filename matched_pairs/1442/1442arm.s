	.text
	.globl	token_buffer_unstash            // -- Begin function token_buffer_unstash
	.p2align	2
	.type	token_buffer_unstash,@function
token_buffer_unstash:                   // @token_buffer_unstash
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, buffers
	ldr	w0, [x8, :lo12:buffers]
	bl	vec_pop
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	token_buffer_unstash, .Lfunc_end0-token_buffer_unstash
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
	.addrsig_sym vec_pop
	.addrsig_sym buffers