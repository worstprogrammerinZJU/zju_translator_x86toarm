	.text
	.globl	yylex_init                      // -- Begin function yylex_init
	.p2align	2
	.type	yylex_init,@function
yylex_init:                             // @yylex_init
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, EINVAL
	ldr	w8, [x8, :lo12:EINVAL]
	adrp	x9, errno
	str	w8, [x9, :lo12:errno]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	mov	w0, #4
	mov	x1, xzr
	bl	yyalloc
	ldr	x8, [sp]
	str	x0, [x8]
	ldr	x8, [sp]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, ENOMEM
	ldr	w8, [x8, :lo12:ENOMEM]
	adrp	x9, errno
	str	w8, [x9, :lo12:errno]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldr	x8, [sp]
	ldr	x0, [x8]
	mov	w1, wzr
	mov	w2, #4
	bl	memset
	ldr	x8, [sp]
	ldr	x0, [x8]
	bl	yy_init_globals
	stur	w0, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	yylex_init, .Lfunc_end0-yylex_init
                                        // -- End function
	.type	EINVAL,@object                  // @EINVAL
	.bss
	.globl	EINVAL
	.p2align	2
EINVAL:
	.word	0                               // 0x0
	.size	EINVAL, 4
	.type	errno,@object                   // @errno
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.type	ENOMEM,@object                  // @ENOMEM
	.globl	ENOMEM
	.p2align	2
ENOMEM:
	.word	0                               // 0x0
	.size	ENOMEM, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyalloc
	.addrsig_sym memset
	.addrsig_sym yy_init_globals
	.addrsig_sym EINVAL
	.addrsig_sym errno
	.addrsig_sym ENOMEM