	.text
	.globl	cttest_multi_tube               // -- Begin function cttest_multi_tube
	.p2align	2
	.type	cttest_multi_tube,@function
cttest_multi_tube:                      // @cttest_multi_tube
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	bl	SERVER
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	mustdiallocal
	str	w0, [sp, #8]
	ldr	w0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	mustsend
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	ckresp
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	mustsend
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	str	x1, [sp]                        // 8-byte Folded Spill
	bl	mustsend
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	ckresp
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	mustsend
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	ckresp
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	mustsend
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldr	w0, [sp, #8]
	bl	mustsend
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	bl	ckresp
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	mustsend
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	bl	ckresp
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	bl	mustsend
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	bl	ckresp
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	bl	mustsend
	ldr	w0, [sp, #8]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	ckresp
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	cttest_multi_tube, .Lfunc_end0-cttest_multi_tube
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"use abc\r\n"
	.size	.L.str, 10
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"USING abc\r\n"
	.size	.L.str.1, 12
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"put 999999 0 0 0\r\n"
	.size	.L.str.2, 19
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"\r\n"
	.size	.L.str.3, 3
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"INSERTED 1\r\n"
	.size	.L.str.4, 13
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"use def\r\n"
	.size	.L.str.5, 10
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"USING def\r\n"
	.size	.L.str.6, 12
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"put 99 0 0 0\r\n"
	.size	.L.str.7, 15
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"INSERTED 2\r\n"
	.size	.L.str.8, 13
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"watch abc\r\n"
	.size	.L.str.9, 12
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"WATCHING 2\r\n"
	.size	.L.str.10, 13
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"watch def\r\n"
	.size	.L.str.11, 12
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"WATCHING 3\r\n"
	.size	.L.str.12, 13
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"reserve\r\n"
	.size	.L.str.13, 10
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"RESERVED 2 0\r\n"
	.size	.L.str.14, 15
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp