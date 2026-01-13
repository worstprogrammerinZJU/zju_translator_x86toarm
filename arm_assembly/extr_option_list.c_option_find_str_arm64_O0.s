	.text
	.globl	option_find_str                 // -- Begin function option_find_str
	.p2align	2
	.type	option_find_str,@function
option_find_str:                        // @option_find_str
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	bl	option_find
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_2:
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldr	x2, [sp, #24]
	ldr	x3, [sp, #16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-8]
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	option_find_str, .Lfunc_end0-option_find_str
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
	.asciz	"%s: Using default '%s'\n"
	.size	.L.str, 24
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find
	.addrsig_sym fprintf
	.addrsig_sym stderr