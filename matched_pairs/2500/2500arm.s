	.text
	.globl	change_leaves                   // -- Begin function change_leaves
	.p2align	2
	.type	change_leaves,@function
change_leaves:                          // @change_leaves
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-16]
	bl	get_paths
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	bl	list_to_array
	str	x0, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	str	wzr, [sp]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x9, [x8, #8]
	ldrsw	x10, [sp, #8]
	mov	w8, wzr
	str	w8, [x9, x10, lsl #2]
	str	wzr, [sp, #4]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #8]
	ldr	w0, [x8, x9, lsl #2]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	ldr	x1, [x8, x9, lsl #3]
	bl	strcmp
	cbnz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x9, [x8, #8]
	ldrsw	x10, [sp, #8]
	mov	w8, #1
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	.LBB0_8
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_3
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_10:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldr	w2, [sp]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	change_leaves, .Lfunc_end0-change_leaves
                                        // -- End function
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Found %d leaves.\n"
	.size	.L.str, 18
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_paths
	.addrsig_sym list_to_array
	.addrsig_sym strcmp
	.addrsig_sym fprintf
	.addrsig_sym stderr