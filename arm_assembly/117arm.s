	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function test_box
.LCPI0_0:
	.xword	0x3ee4f8b588e368f1              // double 1.0000000000000001E-5
	.text
	.globl	test_box
	.p2align	2
	.type	test_box,@function
test_box:                               // @test_box
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #608
	bl	test_dintersect
	bl	test_dunion
	adrp	x8, .L__const.test_box.a
	add	x8, x8, :lo12:.L__const.test_box.a
	ldr	q0, [x8]
	stur	q0, [x29, #-32]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-16]
	adrp	x8, .L__const.test_box.dxa
	add	x8, x8, :lo12:.L__const.test_box.dxa
	ldr	q0, [x8]
	stur	q0, [x29, #-64]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-48]
	adrp	x8, .L__const.test_box.dya
	add	x8, x8, :lo12:.L__const.test_box.dya
	ldr	q0, [x8]
	stur	q0, [x29, #-96]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-80]
	adrp	x8, .L__const.test_box.dwa
	add	x8, x8, :lo12:.L__const.test_box.dwa
	ldr	q0, [x8]
	stur	q0, [x29, #-128]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-112]
	adrp	x8, .L__const.test_box.dha
	add	x8, x8, :lo12:.L__const.test_box.dha
	ldr	q0, [x8]
	stur	q0, [x29, #-160]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-144]
	adrp	x8, .L__const.test_box.b
	add	x8, x8, :lo12:.L__const.test_box.b
	ldr	q0, [x8]
	stur	q0, [x29, #-192]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-176]
	ldur	q0, [x29, #-32]
	sub	x0, x29, #224
	stur	q0, [x29, #-224]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-208]
	ldur	q0, [x29, #-192]
	sub	x1, x29, #256
	stur	q0, [x29, #-256]
	ldur	x8, [x29, #-176]
	stur	x8, [x29, #-240]
	bl	box_iou
	stur	s0, [x29, #-196]
	ldur	s0, [x29, #-196]
	fmov	s1, #1.00000000
	str	s1, [sp, #12]                   // 4-byte Folded Spill
	fsub	s0, s1, s0
	ldur	s2, [x29, #-196]
	fsub	s1, s1, s2
	fmul	s0, s0, s1
	stur	s0, [x29, #-196]
	ldur	s0, [x29, #-196]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldur	q0, [x29, #-32]
	add	x0, sp, #304
	str	q0, [sp, #304]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #320]
	ldur	q0, [x29, #-192]
	add	x1, sp, #272
	str	q0, [sp, #272]
	ldur	x8, [x29, #-176]
	str	x8, [sp, #288]
	bl	diou
	str	s0, [sp, #336]
	str	s1, [sp, #340]
	str	s2, [sp, #344]
	str	s3, [sp, #348]
	ldr	s0, [sp, #336]
	ldr	s1, [sp, #340]
	fcvt	d1, s1
	ldr	s2, [sp, #344]
	fcvt	d2, s2
	ldr	s3, [sp, #348]
	fcvt	d3, s3
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	ldur	q0, [x29, #-64]
	add	x0, sp, #240
	str	q0, [sp, #240]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #256]
	ldur	q0, [x29, #-192]
	add	x1, sp, #208
	str	q0, [sp, #208]
	ldur	x8, [x29, #-176]
	str	x8, [sp, #224]
	bl	box_iou
	str	s0, [sp, #268]
	ldur	q0, [x29, #-96]
	add	x0, sp, #176
	str	q0, [sp, #176]
	ldur	x8, [x29, #-80]
	str	x8, [sp, #192]
	ldur	q0, [x29, #-192]
	add	x1, sp, #144
	str	q0, [sp, #144]
	ldur	x8, [x29, #-176]
	str	x8, [sp, #160]
	bl	box_iou
	str	s0, [sp, #204]
	ldur	q0, [x29, #-128]
	add	x0, sp, #112
	str	q0, [sp, #112]
	ldur	x8, [x29, #-112]
	str	x8, [sp, #128]
	ldur	q0, [x29, #-192]
	add	x1, sp, #80
	str	q0, [sp, #80]
	ldur	x8, [x29, #-176]
	str	x8, [sp, #96]
	bl	box_iou
	str	s0, [sp, #140]
	ldur	q0, [x29, #-160]
	add	x0, sp, #48
	str	q0, [sp, #48]
	ldur	x8, [x29, #-144]
	str	x8, [sp, #64]
	ldur	q0, [x29, #-192]
	add	x1, sp, #16
	str	q0, [sp, #16]
	ldur	x8, [x29, #-176]
	str	x8, [sp, #32]
	bl	box_iou
	ldr	s2, [sp, #12]                   // 4-byte Folded Reload
	str	s0, [sp, #76]
	ldr	s0, [sp, #268]
	fsub	s0, s2, s0
	ldr	s1, [sp, #268]
	fsub	s1, s2, s1
	ldur	s3, [x29, #-196]
	fnmsub	s0, s0, s1, s3
	fcvt	d0, s0
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fdiv	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #268]
	ldr	s0, [sp, #204]
	fsub	s0, s2, s0
	ldr	s3, [sp, #204]
	fsub	s3, s2, s3
	ldur	s4, [x29, #-196]
	fnmsub	s0, s0, s3, s4
	fcvt	d0, s0
	fdiv	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #204]
	ldr	s0, [sp, #140]
	fsub	s0, s2, s0
	ldr	s3, [sp, #140]
	fsub	s3, s2, s3
	ldur	s4, [x29, #-196]
	fnmsub	s0, s0, s3, s4
	fcvt	d0, s0
	fdiv	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #140]
	ldr	s0, [sp, #76]
	fsub	s0, s2, s0
	ldr	s3, [sp, #76]
	fsub	s2, s2, s3
	ldur	s3, [x29, #-196]
	fnmsub	s0, s0, s2, s3
	fcvt	d0, s0
	fdiv	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #76]
	ldr	s0, [sp, #268]
	ldr	s1, [sp, #204]
	fcvt	d1, s1
	ldr	s2, [sp, #140]
	fcvt	d2, s2
	ldr	s3, [sp, #76]
	fcvt	d3, s3
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	printf
	add	sp, sp, #608
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	test_box, .Lfunc_end0-test_box
                                        // -- End function
	.type	.L__const.test_box.a,@object    // @__const.test_box.a
	.section	.rodata,"a",@progbits
	.p2align	3
.L__const.test_box.a:
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.word	1                               // 0x1
	.word	1                               // 0x1
	.size	.L__const.test_box.a, 24
	.type	.L__const.test_box.dxa,@object  // @__const.test_box.dxa
	.p2align	3
.L__const.test_box.dxa:
	.xword	0x3ee4f8b588e368f1              // double 1.0000000000000001E-5
	.xword	0x0000000000000000              // double 0
	.word	1                               // 0x1
	.word	1                               // 0x1
	.size	.L__const.test_box.dxa, 24
	.type	.L__const.test_box.dya,@object  // @__const.test_box.dya
	.p2align	3
.L__const.test_box.dya:
	.xword	0x0000000000000000              // double 0
	.xword	0x3ee4f8b588e368f1              // double 1.0000000000000001E-5
	.word	1                               // 0x1
	.word	1                               // 0x1
	.size	.L__const.test_box.dya, 24
	.type	.L__const.test_box.dwa,@object  // @__const.test_box.dwa
	.p2align	3
.L__const.test_box.dwa:
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.word	1                               // 0x1
	.word	1                               // 0x1
	.size	.L__const.test_box.dwa, 24
	.type	.L__const.test_box.dha,@object  // @__const.test_box.dha
	.p2align	3
.L__const.test_box.dha:
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.word	1                               // 0x1
	.word	1                               // 0x1
	.size	.L__const.test_box.dha, 24
	.type	.L__const.test_box.b,@object    // @__const.test_box.b
	.p2align	3
.L__const.test_box.b:
	.xword	0x3fe0000000000000              // double 0.5
	.xword	0x0000000000000000              // double 0
	.word	0                               // 0x0
	.word	0                               // 0x0
	.size	.L__const.test_box.b, 24
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%f\n"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"%f %f %f %f\n"
	.size	.L.str.1, 13
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"manual %f %f %f %f\n"
	.size	.L.str.2, 20
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_dintersect
	.addrsig_sym test_dunion
	.addrsig_sym box_iou
	.addrsig_sym printf
	.addrsig_sym diou