	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function load_image_stb
.LCPI0_0:
	.xword	0x406fe00000000000              // double 255
	.text
	.globl	load_image_stb
	.p2align	2
	.type	load_image_stb,@function
load_image_stb:                         // @load_image_stb
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	ldur	x0, [x29, #-16]
	ldur	w4, [x29, #-20]
	sub	x1, x29, #24
	sub	x2, x29, #28
	sub	x3, x29, #32
	bl	stbi_load
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, stderr
	ldr	w8, [x8, :lo12:stderr]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	bl	stbi_failure_reason
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	mov	x3, x0
	ldr	w0, [sp, #16]                   // 4-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	mov	w0, wzr
	bl	exit
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-32]
	b	.LBB0_4
.LBB0_4:
	ldur	w0, [x29, #-24]
	ldur	w1, [x29, #-28]
	ldur	w2, [x29, #-32]
	bl	make_image
	stur	x0, [x29, #-8]
	str	wzr, [sp, #28]
	b	.LBB0_5
.LBB0_5:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_7 Depth 2
                                        //       Child Loop BB0_9 Depth 3
	ldr	w8, [sp, #28]
	ldur	w9, [x29, #-32]
	subs	w8, w8, w9
	b.ge	.LBB0_16
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	str	wzr, [sp, #32]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_5 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_9 Depth 3
	ldr	w8, [sp, #32]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=2
	str	wzr, [sp, #36]
	b	.LBB0_9
.LBB0_9:                                //   Parent Loop BB0_5 Depth=1
                                        //     Parent Loop BB0_7 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #36]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=3
	ldr	w8, [sp, #36]
	ldur	w9, [x29, #-24]
	ldr	w10, [sp, #32]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldur	w9, [x29, #-24]
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	ldr	w10, [sp, #28]
	mul	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #24]
	ldr	w8, [sp, #28]
	ldur	w9, [x29, #-32]
	ldr	w10, [sp, #36]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldur	w9, [x29, #-32]
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	ldr	w10, [sp, #32]
	mul	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #20]
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #20]
	add	x8, x8, x9
	ldrb	w8, [x8]
	ucvtf	s0, w8
	fcvt	d0, s0
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fdiv	d0, d0, d1
	fcvt	s0, d0
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #24]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=3
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_9
.LBB0_12:                               //   in Loop: Header=BB0_7 Depth=2
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_7
.LBB0_14:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_5
.LBB0_16:
	ldr	x0, [sp, #40]
	bl	free
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	load_image_stb, .Lfunc_end0-load_image_stb
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
	.asciz	"Cannot load image \"%s\"\nSTB Reason: %s\n"
	.size	.L.str, 39
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi_load
	.addrsig_sym fprintf
	.addrsig_sym stbi_failure_reason
	.addrsig_sym exit
	.addrsig_sym make_image
	.addrsig_sym free
	.addrsig_sym stderr