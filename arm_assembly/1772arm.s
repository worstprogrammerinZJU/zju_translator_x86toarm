	.text
	.globl	print_network                   // -- Begin function print_network
	.p2align	2
	.type	print_network,@function
print_network:                          // @print_network
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_5 Depth 2
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldursw	x9, [x29, #-12]
	ldr	q0, [x8, x9, lsl #4]
	str	q0, [sp, #32]
	ldr	x8, [sp, #32]
	str	x8, [sp, #24]
	ldr	w8, [sp, #40]
	str	w8, [sp, #20]
	ldr	x0, [sp, #24]
	ldr	w1, [sp, #20]
	bl	mean_array
	str	s0, [sp, #16]
	ldr	x0, [sp, #24]
	ldr	w1, [sp, #20]
	bl	variance_array
	str	s0, [sp, #12]
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	w2, [x29, #-12]
	ldr	s0, [sp, #16]
	fcvt	d0, s0
	ldr	s1, [sp, #12]
	fcvt	d1, s1
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldr	w8, [sp, #20]
	subs	w8, w8, #100
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w8, #100
	str	w8, [sp, #20]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-16]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-16]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=2
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldr	x8, [sp, #24]
	ldursw	x9, [x29, #-16]
	ldr	s0, [x8, x9, lsl #2]
	fcvt	d0, s0
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	fprintf
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=2
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #100
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	fprintf
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	fprintf
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_12:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	print_network, .Lfunc_end0-print_network
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
	.asciz	"Layer %d - Mean: %f, Variance: %f\n"
	.size	.L.str, 35
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%f, "
	.size	.L.str.1, 5
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	".....\n"
	.size	.L.str.2, 7
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\n"
	.size	.L.str.3, 2
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mean_array
	.addrsig_sym variance_array
	.addrsig_sym fprintf
	.addrsig_sym stderr