	.text
	.p2align	2                               // -- Begin function a2s_declinit
	.type	a2s_declinit,@function
a2s_declinit:                           // @a2s_declinit
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	vec_len
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	subs	w8, w8, #0
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	buf_printf
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-20]
	bl	vec_get
	str	x0, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	node2s
	mov	w2, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	buf_printf
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_6:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	a2s_declinit, .Lfunc_end0-a2s_declinit
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" "
	.size	.L.str, 2
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%s"
	.size	.L.str.1, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym a2s_declinit
	.addrsig_sym vec_len
	.addrsig_sym buf_printf
	.addrsig_sym vec_get
	.addrsig_sym node2s