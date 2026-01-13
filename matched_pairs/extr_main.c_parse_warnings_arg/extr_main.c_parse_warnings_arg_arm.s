	.text
	.p2align	2                               // -- Begin function parse_warnings_arg
	.type	parse_warnings_arg,@function
parse_warnings_arg:                     // @parse_warnings_arg
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcmp
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x9, warning_is_error
	mov	w8, #1
	str	w8, [x9, :lo12:warning_is_error]
	b	.LBB0_5
.LBB0_2:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x1, [sp, #8]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	error
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	parse_warnings_arg, .Lfunc_end0-parse_warnings_arg
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"error"
	.size	.L.str, 6
	.type	warning_is_error,@object        // @warning_is_error
	.bss
	.globl	warning_is_error
	.p2align	2
warning_is_error:
	.word	0                               // 0x0
	.size	warning_is_error, 4
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"all"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"unknown -W option: %s"
	.size	.L.str.2, 22
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_warnings_arg
	.addrsig_sym strcmp
	.addrsig_sym error
	.addrsig_sym warning_is_error