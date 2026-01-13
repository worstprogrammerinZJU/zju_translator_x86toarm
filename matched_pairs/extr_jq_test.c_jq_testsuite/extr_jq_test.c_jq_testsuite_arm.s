	.text
	.globl	jq_testsuite                    // -- Begin function jq_testsuite
	.p2align	2
	.type	jq_testsuite,@function
jq_testsuite:                           // @jq_testsuite
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	str	x3, [sp, #24]
	adrp	x8, stdin
	ldr	x8, [x8, :lo12:stdin]
	str	x8, [sp, #16]
	mov	w8, #-1
	str	w8, [sp, #12]
	str	w8, [sp, #8]
	bl	jv_test
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	b.le	.LBB0_14
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #4]
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #4]
	ldr	x0, [x8, x9, lsl #3]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcmp
	cbnz	w0, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #4]
	add	w9, w9, #1
	ldr	x0, [x8, w9, sxtw #3]
	bl	atoi
	str	w0, [sp, #12]
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_11
.LBB0_5:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #4]
	ldr	x0, [x8, x9, lsl #3]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	cbnz	w0, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #4]
	add	w9, w9, #1
	ldr	x0, [x8, w9, sxtw #3]
	bl	atoi
	str	w0, [sp, #8]
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_10
.LBB0_7:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #4]
	ldr	x0, [x8, x9, lsl #3]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	fopen
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_2 Depth=1
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	perror
	mov	w0, #1
	bl	exit
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_2 Depth=1
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_2 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_2 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_2 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_2
.LBB0_13:
	b	.LBB0_14
.LBB0_14:
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-8]
	ldr	x2, [sp, #16]
	ldr	w3, [sp, #12]
	ldr	w4, [sp, #8]
	bl	run_jq_tests
	mov	w0, wzr
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	jq_testsuite, .Lfunc_end0-jq_testsuite
                                        // -- End function
	.type	stdin,@object                   // @stdin
	.bss
	.globl	stdin
	.p2align	3
stdin:
	.xword	0
	.size	stdin, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"--skip"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"--take"
	.size	.L.str.1, 7
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"r"
	.size	.L.str.2, 2
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"fopen"
	.size	.L.str.3, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_test
	.addrsig_sym strcmp
	.addrsig_sym atoi
	.addrsig_sym fopen
	.addrsig_sym perror
	.addrsig_sym exit
	.addrsig_sym run_jq_tests
	.addrsig_sym stdin