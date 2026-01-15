	.text
	.p2align	2                               // -- Begin function yyensure_buffer_stack
	.type	yyensure_buffer_stack,@function
yyensure_buffer_stack:                  // @yyensure_buffer_stack
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	mov	w8, #1
	stur	w8, [x29, #-12]
	ldursw	x8, [x29, #-12]
	lsl	x8, x8, #3
	mov	w0, w8
	ldur	x1, [x29, #-8]
	bl	yyalloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	YY_FATAL_ERROR
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	ldursw	x8, [x29, #-12]
	lsl	x8, x8, #3
	mov	w2, w8
	mov	w1, wzr
	bl	memset
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	str	wzr, [x8, #4]
	b	.LBB0_8
.LBB0_4:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #4]
	ldr	x9, [sp, #8]
	ldr	w9, [x9]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.lt	.LBB0_8
	b	.LBB0_5
.LBB0_5:
	mov	w8, #8
	str	w8, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	w9, [sp, #4]
	add	w8, w8, w9
	stur	w8, [x29, #-12]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	ldursw	x8, [x29, #-12]
	lsl	x8, x8, #3
	mov	w1, w8
	ldur	x2, [x29, #-8]
	bl	yyrealloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	YY_FATAL_ERROR
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	ldrsw	x9, [x9]
	add	x0, x8, x9, lsl #3
	ldrsw	x8, [sp, #4]
	lsl	x8, x8, #3
	mov	w2, w8
	mov	w1, wzr
	bl	memset
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	b	.LBB0_8
.LBB0_8:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	yyensure_buffer_stack, .Lfunc_end0-yyensure_buffer_stack
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"out of dynamic memory in yyensure_buffer_stack()"
	.size	.L.str, 49
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyensure_buffer_stack
	.addrsig_sym yyalloc
	.addrsig_sym YY_FATAL_ERROR
	.addrsig_sym memset
	.addrsig_sym yyrealloc