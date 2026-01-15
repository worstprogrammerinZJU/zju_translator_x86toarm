	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function test_dintersect
.LCPI0_0:
	.xword	0x3f1a36e2eb1c432d              // double 1.0E-4
	.text
	.globl	test_dintersect
	.p2align	2
	.type	test_dintersect,@function
test_dintersect:                        // @test_dintersect
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #592
	adrp	x8, .L__const.test_dintersect.a
	add	x8, x8, :lo12:.L__const.test_dintersect.a
	ldr	q0, [x8]
	stur	q0, [x29, #-32]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-16]
	adrp	x8, .L__const.test_dintersect.dxa
	add	x8, x8, :lo12:.L__const.test_dintersect.dxa
	ldr	q0, [x8]
	stur	q0, [x29, #-64]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-48]
	adrp	x8, .L__const.test_dintersect.dya
	add	x8, x8, :lo12:.L__const.test_dintersect.dya
	ldr	q0, [x8]
	stur	q0, [x29, #-96]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-80]
	adrp	x8, .L__const.test_dintersect.dwa
	add	x8, x8, :lo12:.L__const.test_dintersect.dwa
	ldr	q0, [x8]
	stur	q0, [x29, #-128]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-112]
	adrp	x8, .L__const.test_dintersect.dha
	add	x8, x8, :lo12:.L__const.test_dintersect.dha
	ldr	q0, [x8]
	stur	q0, [x29, #-160]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-144]
	adrp	x8, .L__const.test_dintersect.b
	add	x8, x8, :lo12:.L__const.test_dintersect.b
	ldr	q0, [x8]
	stur	q0, [x29, #-192]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-176]
	ldur	q0, [x29, #-32]
	sub	x0, x29, #240
	stur	q0, [x29, #-240]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-224]
	ldur	q0, [x29, #-192]
	add	x1, sp, #320
	str	q0, [sp, #320]
	ldur	x8, [x29, #-176]
	str	x8, [sp, #336]
	bl	dintersect
	stur	s0, [x29, #-208]
	stur	s1, [x29, #-204]
	stur	s2, [x29, #-200]
	stur	s3, [x29, #-196]
	ldur	s0, [x29, #-208]
	ldur	s1, [x29, #-204]
	ldur	s2, [x29, #-200]
	ldur	s3, [x29, #-196]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	ldur	q0, [x29, #-32]
	add	x0, sp, #288
	str	q0, [sp, #288]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #304]
	ldur	q0, [x29, #-192]
	add	x1, sp, #256
	str	q0, [sp, #256]
	ldur	x8, [x29, #-176]
	str	x8, [sp, #272]
	bl	box_intersection
	str	s0, [sp, #316]
	ldur	q0, [x29, #-64]
	add	x0, sp, #224
	str	q0, [sp, #224]
	ldur	x8, [x29, #-48]
	str	x8, [sp, #240]
	ldur	q0, [x29, #-192]
	add	x1, sp, #192
	str	q0, [sp, #192]
	ldur	x8, [x29, #-176]
	str	x8, [sp, #208]
	bl	box_intersection
	str	s0, [sp, #252]
	ldur	q0, [x29, #-96]
	add	x0, sp, #160
	str	q0, [sp, #160]
	ldur	x8, [x29, #-80]
	str	x8, [sp, #176]
	ldur	q0, [x29, #-192]
	add	x1, sp, #128
	str	q0, [sp, #128]
	ldur	x8, [x29, #-176]
	str	x8, [sp, #144]
	bl	box_intersection
	str	s0, [sp, #188]
	ldur	q0, [x29, #-128]
	add	x0, sp, #96
	str	q0, [sp, #96]
	ldur	x8, [x29, #-112]
	str	x8, [sp, #112]
	ldur	q0, [x29, #-192]
	add	x1, sp, #64
	str	q0, [sp, #64]
	ldur	x8, [x29, #-176]
	str	x8, [sp, #80]
	bl	box_intersection
	str	s0, [sp, #124]
	ldur	q0, [x29, #-160]
	add	x0, sp, #32
	str	q0, [sp, #32]
	ldur	x8, [x29, #-144]
	str	x8, [sp, #48]
	ldur	q0, [x29, #-192]
	mov	x1, sp
	str	q0, [sp]
	ldur	x8, [x29, #-176]
	str	x8, [sp, #16]
	bl	box_intersection
	str	s0, [sp, #60]
	ldr	s0, [sp, #252]
	ldr	s1, [sp, #316]
	fsub	s0, s0, s1
	fcvt	d0, s0
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fdiv	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #252]
	ldr	s0, [sp, #188]
	ldr	s2, [sp, #316]
	fsub	s0, s0, s2
	fcvt	d0, s0
	fdiv	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #188]
	ldr	s0, [sp, #124]
	ldr	s2, [sp, #316]
	fsub	s0, s0, s2
	fcvt	d0, s0
	fdiv	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #124]
	ldr	s0, [sp, #60]
	ldr	s2, [sp, #316]
	fsub	s0, s0, s2
	fcvt	d0, s0
	fdiv	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #60]
	ldr	s0, [sp, #252]
	ldr	s1, [sp, #188]
	ldr	s2, [sp, #124]
	ldr	s3, [sp, #60]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	add	sp, sp, #592
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	test_dintersect, .Lfunc_end0-test_dintersect
                                        // -- End function
	.type	.L__const.test_dintersect.a,@object // @__const.test_dintersect.a
	.section	.rodata,"a",@progbits
	.p2align	3
.L__const.test_dintersect.a:
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.word	1                               // 0x1
	.word	1                               // 0x1
	.size	.L__const.test_dintersect.a, 24
	.type	.L__const.test_dintersect.dxa,@object // @__const.test_dintersect.dxa
	.p2align	3
.L__const.test_dintersect.dxa:
	.xword	0x3f1a36e2eb1c432d              // double 1.0E-4
	.xword	0x0000000000000000              // double 0
	.word	1                               // 0x1
	.word	1                               // 0x1
	.size	.L__const.test_dintersect.dxa, 24
	.type	.L__const.test_dintersect.dya,@object // @__const.test_dintersect.dya
	.p2align	3
.L__const.test_dintersect.dya:
	.xword	0x0000000000000000              // double 0
	.xword	0x3f1a36e2eb1c432d              // double 1.0E-4
	.word	1                               // 0x1
	.word	1                               // 0x1
	.size	.L__const.test_dintersect.dya, 24
	.type	.L__const.test_dintersect.dwa,@object // @__const.test_dintersect.dwa
	.p2align	3
.L__const.test_dintersect.dwa:
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.word	1                               // 0x1
	.word	1                               // 0x1
	.size	.L__const.test_dintersect.dwa, 24
	.type	.L__const.test_dintersect.dha,@object // @__const.test_dintersect.dha
	.p2align	3
.L__const.test_dintersect.dha:
	.xword	0x0000000000000000              // double 0
	.xword	0x0000000000000000              // double 0
	.word	1                               // 0x1
	.word	1                               // 0x1
	.size	.L__const.test_dintersect.dha, 24
	.type	.L__const.test_dintersect.b,@object // @__const.test_dintersect.b
	.p2align	3
.L__const.test_dintersect.b:
	.xword	0x3fe0000000000000              // double 0.5
	.xword	0x3fe0000000000000              // double 0.5
	.word	0                               // 0x0
	.word	0                               // 0x0
	.size	.L__const.test_dintersect.b, 24
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Inter: %f %f %f %f\n"
	.size	.L.str, 20
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Inter Manual %f %f %f %f\n"
	.size	.L.str.1, 26
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dintersect
	.addrsig_sym printf
	.addrsig_sym box_intersection