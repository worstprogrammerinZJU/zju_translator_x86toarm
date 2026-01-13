	.text
	.globl	write_utf8                      // -- Begin function write_utf8
	.p2align	2
	.type	write_utf8,@function
write_utf8:                             // @write_utf8
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #128
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	buf_write
	b	.LBB0_9
.LBB0_2:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #2048
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldur	w9, [x29, #-12]
	mov	w8, #192
	orr	w1, w8, w9, asr #6
	bl	buf_write
	ldur	x0, [x29, #-8]
	ldur	w8, [x29, #-12]
	and	w9, w8, #0x3f
	mov	w8, #128
	orr	w1, w8, w9
	bl	buf_write
	b	.LBB0_9
.LBB0_4:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #16, lsl #12            // =65536
	b.ge	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldur	w9, [x29, #-12]
	mov	w8, #224
	orr	w1, w8, w9, asr #12
	bl	buf_write
	ldur	x0, [x29, #-8]
	ldur	w8, [x29, #-12]
	asr	w8, w8, #6
	and	w9, w8, #0x3f
	mov	w8, #128
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	orr	w1, w8, w9
	bl	buf_write
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	w9, [x29, #-12]
	and	w9, w9, #0x3f
	orr	w1, w8, w9
	bl	buf_write
	b	.LBB0_9
.LBB0_6:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #512, lsl #12           // =2097152
	b.ge	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-8]
	ldur	w9, [x29, #-12]
	mov	w8, #240
	orr	w1, w8, w9, asr #18
	bl	buf_write
	ldur	x0, [x29, #-8]
	ldur	w8, [x29, #-12]
	asr	w8, w8, #12
	and	w9, w8, #0x3f
	mov	w8, #128
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	orr	w1, w8, w9
	bl	buf_write
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	w9, [x29, #-12]
	asr	w9, w9, #6
	and	w9, w9, #0x3f
	orr	w1, w8, w9
	bl	buf_write
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	w9, [x29, #-12]
	and	w9, w9, #0x3f
	orr	w1, w8, w9
	bl	buf_write
	b	.LBB0_9
.LBB0_8:
	ldur	w1, [x29, #-12]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_9
.LBB0_9:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	write_utf8, .Lfunc_end0-write_utf8
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid UCS character: \\U%08x"
	.size	.L.str, 30
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym buf_write
	.addrsig_sym error