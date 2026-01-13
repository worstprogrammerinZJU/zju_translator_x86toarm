	.text
	.globl	block_is_funcdef                // -- Begin function block_is_funcdef
	.p2align	2
	.type	block_is_funcdef,@function
block_is_funcdef:                       // @block_is_funcdef
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp]
	ldr	x8, [sp]
	cbz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]
	ldr	x8, [x8]
	adrp	x9, CLOSURE_CREATE
	ldr	x9, [x9, :lo12:CLOSURE_CREATE]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	mov	w8, #1
	str	w8, [sp, #12]
	b	.LBB0_4
.LBB0_3:
	str	wzr, [sp, #12]
	b	.LBB0_4
.LBB0_4:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	block_is_funcdef, .Lfunc_end0-block_is_funcdef
                                        // -- End function
	.type	CLOSURE_CREATE,@object          // @CLOSURE_CREATE
	.bss
	.globl	CLOSURE_CREATE
	.p2align	3
CLOSURE_CREATE:
	.xword	0                               // 0x0
	.size	CLOSURE_CREATE, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym CLOSURE_CREATE