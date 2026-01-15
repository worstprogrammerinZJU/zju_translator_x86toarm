	.text
	.globl	option_find_float               // -- Begin function option_find_float
	.p2align	2
	.type	option_find_float,@function
option_find_float:                      // @option_find_float
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	s0, [sp, #20]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	option_find
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	bl	atof
	stur	s0, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldr	x2, [sp, #24]
	ldr	s0, [sp, #20]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldr	w8, [sp, #20]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	s0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	option_find_float, .Lfunc_end0-option_find_float
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
	.asciz	"%s: Using default '%lf'\n"
	.size	.L.str, 25
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find
	.addrsig_sym atof
	.addrsig_sym fprintf
	.addrsig_sym stderr