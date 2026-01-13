	.text
	.globl	yyrestart                       // -- Begin function yyrestart
	.p2align	2
	.type	yyrestart,@function
yyrestart:                              // @yyrestart
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	adrp	x8, YY_CURRENT_BUFFER
	ldr	w8, [x8, :lo12:YY_CURRENT_BUFFER]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	yyensure_buffer_stack
	adrp	x8, yyin
	ldr	w0, [x8, :lo12:yyin]
	adrp	x8, YY_BUF_SIZE
	ldr	w1, [x8, :lo12:YY_BUF_SIZE]
	ldr	x2, [sp, #16]
	bl	yy_create_buffer
	adrp	x8, YY_CURRENT_BUFFER_LVALUE
	str	w0, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	b	.LBB0_2
.LBB0_2:
	adrp	x8, YY_CURRENT_BUFFER
	ldr	w0, [x8, :lo12:YY_CURRENT_BUFFER]
	ldur	x1, [x29, #-8]
	ldr	x2, [sp, #16]
	bl	yy_init_buffer
	ldr	x0, [sp, #16]
	bl	yy_load_buffer_state
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	yyrestart, .Lfunc_end0-yyrestart
                                        // -- End function
	.type	YY_CURRENT_BUFFER,@object       // @YY_CURRENT_BUFFER
	.bss
	.globl	YY_CURRENT_BUFFER
	.p2align	2
YY_CURRENT_BUFFER:
	.word	0                               // 0x0
	.size	YY_CURRENT_BUFFER, 4
	.type	yyin,@object                    // @yyin
	.globl	yyin
	.p2align	2
yyin:
	.word	0                               // 0x0
	.size	yyin, 4
	.type	YY_BUF_SIZE,@object             // @YY_BUF_SIZE
	.globl	YY_BUF_SIZE
	.p2align	2
YY_BUF_SIZE:
	.word	0                               // 0x0
	.size	YY_BUF_SIZE, 4
	.type	YY_CURRENT_BUFFER_LVALUE,@object // @YY_CURRENT_BUFFER_LVALUE
	.globl	YY_CURRENT_BUFFER_LVALUE
	.p2align	2
YY_CURRENT_BUFFER_LVALUE:
	.word	0                               // 0x0
	.size	YY_CURRENT_BUFFER_LVALUE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyensure_buffer_stack
	.addrsig_sym yy_create_buffer
	.addrsig_sym yy_init_buffer
	.addrsig_sym yy_load_buffer_state
	.addrsig_sym YY_CURRENT_BUFFER
	.addrsig_sym yyin
	.addrsig_sym YY_BUF_SIZE
	.addrsig_sym YY_CURRENT_BUFFER_LVALUE