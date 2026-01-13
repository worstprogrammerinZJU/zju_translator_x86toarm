	.text
	.p2align	2                               // -- Begin function stbi__pic_test_core
	.type	stbi__pic_test_core,@function
stbi__pic_test_core:                    // @stbi__pic_test_core
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	stbi__pic_is4
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_9
.LBB0_2:
	str	wzr, [sp, #12]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #84
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x0, [sp, #16]
	bl	stbi__get8
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_6:
	ldr	x0, [sp, #16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__pic_is4
	cbnz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	stur	wzr, [x29, #-4]
	b	.LBB0_9
.LBB0_8:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__pic_test_core, .Lfunc_end0-stbi__pic_test_core
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"S\200\3664"
	.size	.L.str, 5
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"PICT"
	.size	.L.str.1, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pic_test_core
	.addrsig_sym stbi__pic_is4
	.addrsig_sym stbi__get8