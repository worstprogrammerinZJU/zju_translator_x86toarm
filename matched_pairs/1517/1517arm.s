	.text
	.p2align	2                               // -- Begin function jv_basename
	.type	jv_basename,@function
jv_basename:                            // @jv_basename
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-8]
	ldur	w0, [x29, #-8]
	bl	jv_string_value
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	mov	w1, #47
	bl	strrchr
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	ldr	x1, [sp, #8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	jv_string_fmt
	str	w0, [sp, #4]
	ldur	w0, [x29, #-8]
	bl	jv_free
	ldr	w8, [sp, #4]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv_basename, .Lfunc_end0-jv_basename
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_basename
	.addrsig_sym jv_string_value
	.addrsig_sym strrchr
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_free