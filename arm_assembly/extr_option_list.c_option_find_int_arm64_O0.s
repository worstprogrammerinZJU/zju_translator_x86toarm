	.text
	.globl	option_find_int                 // -- Begin function option_find_int
	.p2align	2
	.type	option_find_int,@function
option_find_int:                        // @option_find_int
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	w2, [sp, #20]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	option_find
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	bl	atoi
	stur	w0, [x29, #-4]
	b	.LBB0_3
.LBB0_2:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldr	x2, [sp, #24]
	ldr	w3, [sp, #20]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	ldr	w8, [sp, #20]
	stur	w8, [x29, #-4]
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	option_find_int, .Lfunc_end0-option_find_int
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
	.asciz	"%s: Using default '%d'\n"
	.size	.L.str, 24
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find
	.addrsig_sym atoi
	.addrsig_sym fprintf
	.addrsig_sym stderr