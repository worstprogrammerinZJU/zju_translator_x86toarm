	.text
	.p2align	2                               // -- Begin function jvp_string_copy_replace_bad
	.type	jvp_string_copy_replace_bad,@function
jvp_string_copy_replace_bad:            // @jvp_string_copy_replace_bad
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	str	x8, [sp]                        // 8-byte Folded Spill
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-12]
	add	x8, x8, x9
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-32]
	ldur	w8, [x29, #-12]
	mov	w9, #3
	mul	w8, w8, w9
	add	w8, w8, #1
	str	w8, [sp, #36]
	ldr	w0, [sp, #36]
	bl	jvp_string_alloc
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-32]
	str	x0, [sp, #40]
	ldur	x1, [x29, #-24]
	add	x2, sp, #12
	bl	jvp_utf8_next
	stur	x0, [x29, #-32]
	cbz	x0, .LBB0_5
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	adds	w8, w8, #1
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w8, #65533
	str	w8, [sp, #12]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w0, [sp, #12]
	ldr	x1, [sp, #16]
	bl	jvp_utf8_encode
	ldr	x8, [sp, #16]
	add	x8, x8, w0, sxtw
	str	x8, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #36]
	add	x9, x9, x10
	subs	x8, x8, x9
	cset	w8, lo
	and	w0, w8, #0x1
	bl	assert
	b	.LBB0_1
.LBB0_5:
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	x8, [sp, #16]
	ldr	x10, [sp, #24]
	ldr	x10, [x10]
	subs	x8, x8, x10
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-12]
	ldr	x8, [sp, #24]
	ldr	x8, [x8]
	ldursw	x10, [x29, #-12]
	add	x8, x8, x10
	strb	wzr, [x8]
	ldur	w8, [x29, #-12]
	lsl	w8, w8, #1
	ldr	x10, [sp, #24]
	str	w8, [x10, #8]
	adrp	x8, JVP_FLAGS_STRING
	ldrsw	x8, [x8, :lo12:JVP_FLAGS_STRING]
	str	x8, [x9]
	str	wzr, [x9, #8]
	str	wzr, [x9, #12]
	str	wzr, [x9, #16]
	ldr	x8, [sp, #24]
	add	x8, x8, #12
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [x9, #20]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	jvp_string_copy_replace_bad, .Lfunc_end0-jvp_string_copy_replace_bad
                                        // -- End function
	.type	JVP_FLAGS_STRING,@object        // @JVP_FLAGS_STRING
	.bss
	.globl	JVP_FLAGS_STRING
	.p2align	2
JVP_FLAGS_STRING:
	.word	0                               // 0x0
	.size	JVP_FLAGS_STRING, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_string_copy_replace_bad
	.addrsig_sym jvp_string_alloc
	.addrsig_sym jvp_utf8_next
	.addrsig_sym jvp_utf8_encode
	.addrsig_sym assert
	.addrsig_sym JVP_FLAGS_STRING