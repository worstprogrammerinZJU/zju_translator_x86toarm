	.text
	.p2align	2                               // -- Begin function parse_f_arg
	.type	parse_f_arg,@function
parse_f_arg:                            // @parse_f_arg
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcmp
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x9, dumpast
	mov	w8, #1
	str	w8, [x9, :lo12:dumpast]
	b	.LBB0_9
.LBB0_2:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	cbnz	w0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x9, dumpstack
	mov	w8, #1
	str	w8, [x9, :lo12:dumpstack]
	b	.LBB0_8
.LBB0_4:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	strcmp
	cbnz	w0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, dumpsource
	str	wzr, [x8, :lo12:dumpsource]
	b	.LBB0_7
.LBB0_6:
	mov	w0, #1
	bl	usage
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	parse_f_arg, .Lfunc_end0-parse_f_arg
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"dump-ast"
	.size	.L.str, 9
	.type	dumpast,@object                 // @dumpast
	.bss
	.globl	dumpast
	.p2align	2
dumpast:
	.word	0                               // 0x0
	.size	dumpast, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"dump-stack"
	.size	.L.str.1, 11
	.type	dumpstack,@object               // @dumpstack
	.bss
	.globl	dumpstack
	.p2align	2
dumpstack:
	.word	0                               // 0x0
	.size	dumpstack, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"no-dump-source"
	.size	.L.str.2, 15
	.type	dumpsource,@object              // @dumpsource
	.bss
	.globl	dumpsource
	.p2align	2
dumpsource:
	.word	0                               // 0x0
	.size	dumpsource, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_f_arg
	.addrsig_sym strcmp
	.addrsig_sym usage
	.addrsig_sym dumpast
	.addrsig_sym dumpstack
	.addrsig_sym dumpsource