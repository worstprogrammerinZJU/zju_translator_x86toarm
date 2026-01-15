	.text
	.p2align	2                               // -- Begin function read_continue_stmt
	.type	read_continue_stmt,@function
read_continue_stmt:                     // @read_continue_stmt
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	mov	w0, #59
	bl	expect
	adrp	x8, lcontinue
	ldr	w8, [x8, :lo12:lcontinue]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	adrp	x8, lcontinue
	ldr	w0, [x8, :lo12:lcontinue]
	bl	ast_jump
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_continue_stmt, .Lfunc_end0-read_continue_stmt
                                        // -- End function
	.type	lcontinue,@object               // @lcontinue
	.bss
	.globl	lcontinue
	.p2align	2
lcontinue:
	.word	0                               // 0x0
	.size	lcontinue, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stray continue statement"
	.size	.L.str, 25
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_continue_stmt
	.addrsig_sym expect
	.addrsig_sym errort
	.addrsig_sym ast_jump
	.addrsig_sym lcontinue