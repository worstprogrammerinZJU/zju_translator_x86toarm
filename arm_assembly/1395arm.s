	.text
	.p2align	2                               // -- Begin function put_buf
	.type	put_buf,@function
put_buf:                                // @put_buf
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	str	w4, [sp, #12]
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	ldur	x1, [x29, #-8]
	ldur	w2, [x29, #-12]
	bl	jv_string_append_buf
	ldr	x8, [sp, #16]
	str	w0, [x8]
	b	.LBB0_3
.LBB0_2:
	ldur	x0, [x29, #-8]
	ldur	w2, [x29, #-12]
	ldr	x3, [sp, #24]
	mov	w1, #1
	bl	fwrite
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	put_buf, .Lfunc_end0-put_buf
                                        // -- End function
	.type	CP_UTF8,@object                 // @CP_UTF8
	.bss
	.globl	CP_UTF8
	.p2align	2
CP_UTF8:
	.word	0                               // 0x0
	.size	CP_UTF8, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym put_buf
	.addrsig_sym jv_string_append_buf
	.addrsig_sym fwrite