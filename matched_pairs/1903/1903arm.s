	.text
	.p2align	2                               // -- Begin function read_label_addr
	.type	read_label_addr,@function
read_label_addr:                        // @read_label_addr
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	bl	get
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #8]
	bl	ast_label_addr
	str	x0, [sp, #8]
	adrp	x8, gotos
	ldr	w0, [x8, :lo12:gotos]
	ldr	x1, [sp, #8]
	bl	vec_push
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_label_addr, .Lfunc_end0-read_label_addr
                                        // -- End function
	.type	TIDENT,@object                  // @TIDENT
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.xword	0                               // 0x0
	.size	TIDENT, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"label name expected after &&, but got %s"
	.size	.L.str, 41
	.type	gotos,@object                   // @gotos
	.bss
	.globl	gotos
	.p2align	2
gotos:
	.word	0                               // 0x0
	.size	gotos, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_label_addr
	.addrsig_sym get
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym ast_label_addr
	.addrsig_sym vec_push
	.addrsig_sym TIDENT
	.addrsig_sym gotos