	.text
	.p2align	2                               // -- Begin function read_default_label
	.type	read_default_label,@function
read_default_label:                     // @read_default_label
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	mov	w0, #58
	bl	expect
	adrp	x8, defaultcase
	ldr	x8, [x8, :lo12:defaultcase]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	bl	make_label
	adrp	x8, defaultcase
	str	x0, [x8, :lo12:defaultcase]
	ldr	x0, [x8, :lo12:defaultcase]
	bl	ast_dest
	bl	read_label_tail
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	read_default_label, .Lfunc_end0-read_default_label
                                        // -- End function
	.type	defaultcase,@object             // @defaultcase
	.bss
	.globl	defaultcase
	.p2align	3
defaultcase:
	.xword	0                               // 0x0
	.size	defaultcase, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"duplicate default"
	.size	.L.str, 18
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_default_label
	.addrsig_sym expect
	.addrsig_sym errort
	.addrsig_sym make_label
	.addrsig_sym read_label_tail
	.addrsig_sym ast_dest
	.addrsig_sym defaultcase