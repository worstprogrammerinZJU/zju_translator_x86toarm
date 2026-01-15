	.text
	.p2align	2                               // -- Begin function yy_init_globals
	.type	yy_init_globals,@function
yy_init_globals:                        // @yy_init_globals
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]
	ldr	x8, [sp]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #64]
	ldr	x8, [sp]
	str	xzr, [x8, #56]
	ldr	x8, [sp]
	str	xzr, [x8, #48]
	ldr	x8, [sp]
	str	xzr, [x8, #40]
	ldr	x8, [sp]
	str	xzr, [x8, #32]
	ldr	x8, [sp]
	str	xzr, [x8, #24]
	ldr	x8, [sp]
	str	xzr, [x8, #16]
	ldr	x8, [sp]
	str	xzr, [x8, #8]
	ldr	x8, [sp]
	str	xzr, [x8]
	adrp	x8, yyin
	str	xzr, [x8, :lo12:yyin]
	adrp	x8, yyout
	str	xzr, [x8, :lo12:yyout]
	mov	w0, wzr
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	yy_init_globals, .Lfunc_end0-yy_init_globals
                                        // -- End function
	.type	yyin,@object                    // @yyin
	.bss
	.globl	yyin
	.p2align	3
yyin:
	.xword	0
	.size	yyin, 8
	.type	yyout,@object                   // @yyout
	.globl	yyout
	.p2align	3
yyout:
	.xword	0
	.size	yyout, 8
	.type	stdin,@object                   // @stdin
	.globl	stdin
	.p2align	3
stdin:
	.xword	0
	.size	stdin, 8
	.type	stdout,@object                  // @stdout
	.globl	stdout
	.p2align	3
stdout:
	.xword	0
	.size	stdout, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_init_globals
	.addrsig_sym yyin
	.addrsig_sym yyout