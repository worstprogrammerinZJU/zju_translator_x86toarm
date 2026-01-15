	.text
	.p2align	2                               // -- Begin function parse_pragma_operand
	.type	parse_pragma_operand,@function
parse_pragma_operand:                   // @parse_pragma_operand
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	ldr	x0, [sp, #16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcmp
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldr	w0, [x8]
	bl	fullpath
	str	x0, [sp, #8]
	adrp	x8, once
	ldr	w0, [x8, :lo12:once]
	ldr	x1, [sp, #8]
	mov	x2, #1
	bl	map_put
	b	.LBB0_9
.LBB0_2:
	ldr	x0, [sp, #16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	cbnz	w0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x9, enable_warning
	mov	w8, #1
	str	w8, [x9, :lo12:enable_warning]
	b	.LBB0_8
.LBB0_4:
	ldr	x0, [sp, #16]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	strcmp
	cbnz	w0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, enable_warning
	str	wzr, [x8, :lo12:enable_warning]
	b	.LBB0_7
.LBB0_6:
	ldur	x0, [x29, #-8]
	ldr	x2, [sp, #16]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	errort
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	parse_pragma_operand, .Lfunc_end0-parse_pragma_operand
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"once"
	.size	.L.str, 5
	.type	once,@object                    // @once
	.bss
	.globl	once
	.p2align	2
once:
	.word	0                               // 0x0
	.size	once, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"enable_warning"
	.size	.L.str.1, 15
	.type	enable_warning,@object          // @enable_warning
	.bss
	.globl	enable_warning
	.p2align	2
enable_warning:
	.word	0                               // 0x0
	.size	enable_warning, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"disable_warning"
	.size	.L.str.2, 16
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"unknown #pragma: %s"
	.size	.L.str.3, 20
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_pragma_operand
	.addrsig_sym strcmp
	.addrsig_sym fullpath
	.addrsig_sym map_put
	.addrsig_sym errort
	.addrsig_sym once
	.addrsig_sym enable_warning