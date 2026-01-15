	.text
	.globl	lex_init                        // -- Begin function lex_init
	.p2align	2
	.type	lex_init,@function
lex_init:                               // @lex_init
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	adrp	x8, buffers
	ldr	w8, [x8, :lo12:buffers]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	bl	make_vector
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	vec_push
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcmp
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, stdin
	ldr	x0, [x8, :lo12:stdin]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	make_file
	bl	stream_push
	b	.LBB0_5
.LBB0_2:
	ldur	x0, [x29, #-8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	fopen
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        // 8-byte Folded Spill
	adrp	x8, errno
	ldr	w0, [x8, :lo12:errno]
	bl	strerror
	ldr	x1, [sp]                        // 8-byte Folded Reload
	mov	x2, x0
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	error
	b	.LBB0_4
.LBB0_4:
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	bl	make_file
	bl	stream_push
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	lex_init, .Lfunc_end0-lex_init
                                        // -- End function
	.type	buffers,@object                 // @buffers
	.bss
	.globl	buffers
	.p2align	2
buffers:
	.word	0                               // 0x0
	.size	buffers, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-"
	.size	.L.str, 2
	.type	stdin,@object                   // @stdin
	.bss
	.globl	stdin
	.p2align	3
stdin:
	.xword	0
	.size	stdin, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"Cannot open %s: %s"
	.size	.L.str.2, 19
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vec_push
	.addrsig_sym make_vector
	.addrsig_sym strcmp
	.addrsig_sym stream_push
	.addrsig_sym make_file
	.addrsig_sym fopen
	.addrsig_sym error
	.addrsig_sym strerror
	.addrsig_sym buffers
	.addrsig_sym stdin
	.addrsig_sym errno