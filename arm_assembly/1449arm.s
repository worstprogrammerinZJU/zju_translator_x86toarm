	.text
	.p2align	2                               // -- Begin function yy_load_buffer_state
	.type	yy_load_buffer_state,@function
yy_load_buffer_state:                   // @yy_load_buffer_state
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	adrp	x8, YY_CURRENT_BUFFER_LVALUE
	ldr	x9, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	w9, [x9, #16]
	ldr	x10, [sp]
	str	w9, [x10, #24]
	ldr	x9, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	x9, [x9, #8]
	ldr	x10, [sp]
	str	x9, [x10]
	ldr	x10, [sp]
	str	x9, [x10, #16]
	ldr	x8, [x8, :lo12:YY_CURRENT_BUFFER_LVALUE]
	ldr	w8, [x8]
	adrp	x9, yyin
	str	w8, [x9, :lo12:yyin]
	ldr	x8, [sp]
	ldr	x8, [x8]
	ldr	w8, [x8]
	ldr	x9, [sp]
	str	w8, [x9, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	yy_load_buffer_state, .Lfunc_end0-yy_load_buffer_state
                                        // -- End function
	.type	YY_CURRENT_BUFFER_LVALUE,@object // @YY_CURRENT_BUFFER_LVALUE
	.bss
	.globl	YY_CURRENT_BUFFER_LVALUE
	.p2align	3
YY_CURRENT_BUFFER_LVALUE:
	.xword	0
	.size	YY_CURRENT_BUFFER_LVALUE, 8
	.type	yyin,@object                    // @yyin
	.globl	yyin
	.p2align	2
yyin:
	.word	0                               // 0x0
	.size	yyin, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_load_buffer_state
	.addrsig_sym YY_CURRENT_BUFFER_LVALUE
	.addrsig_sym yyin