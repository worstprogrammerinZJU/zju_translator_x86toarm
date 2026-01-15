	.text
	.globl	yy_create_buffer                // -- Begin function yy_create_buffer
	.p2align	2
	.type	yy_create_buffer,@function
yy_create_buffer:                       // @yy_create_buffer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldr	w1, [sp, #16]
	mov	w0, #4
	bl	yyalloc
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	YY_FATAL_ERROR
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	add	w0, w8, #2
	ldr	w1, [sp, #16]
	bl	yyalloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	YY_FATAL_ERROR
	b	.LBB0_4
.LBB0_4:
	ldr	x9, [sp, #8]
	mov	w8, #1
	str	w8, [x9, #16]
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-8]
	ldr	w2, [sp, #16]
	bl	yy_init_buffer
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	yy_create_buffer, .Lfunc_end0-yy_create_buffer
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"out of dynamic memory in yy_create_buffer()"
	.size	.L.str, 44
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyalloc
	.addrsig_sym YY_FATAL_ERROR
	.addrsig_sym yy_init_buffer