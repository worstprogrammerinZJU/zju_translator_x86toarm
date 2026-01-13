	.text
	.p2align	2                               // -- Begin function buffer_empty
	.type	buffer_empty,@function
buffer_empty:                           // @buffer_empty
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	adrp	x8, buffers
	ldr	w0, [x8, :lo12:buffers]
	bl	vec_len
	mov	w8, #0
	subs	w9, w0, #1
	stur	w8, [x29, #-4]                  // 4-byte Folded Spill
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, buffers
	ldr	w0, [x8, :lo12:buffers]
	bl	vec_head
	bl	vec_len
	subs	w8, w0, #0
	cset	w8, eq
	stur	w8, [x29, #-4]                  // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-4]                  // 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	buffer_empty, .Lfunc_end0-buffer_empty
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
	.addrsig_sym buffer_empty
	.addrsig_sym vec_len
	.addrsig_sym vec_head
	.addrsig_sym buffers