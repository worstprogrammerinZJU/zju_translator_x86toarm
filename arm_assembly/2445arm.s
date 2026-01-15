	.text
	.globl	cttest_peek_delayed             // -- Begin function cttest_peek_delayed
	.p2align	2
	.type	cttest_peek_delayed,@function
cttest_peek_delayed:                    // @cttest_peek_delayed
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	bl	SERVER
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	mustdiallocal
	stur	w0, [x29, #-8]
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	str	x1, [sp, #24]                   // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	stur	x1, [x29, #-16]                 // 8-byte Folded Spill
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	str	x1, [sp]                        // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	bl	ckresp
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	bl	ckresp
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	bl	ckresp
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	ckresp
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.15
	add	x1, x1, :lo12:.L.str.15
	bl	mustsend
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-16]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	cttest_peek_delayed, .Lfunc_end0-cttest_peek_delayed
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"peek-delayed\r\n"
	.size	.L.str, 15
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"NOT_FOUND\r\n"
	.size	.L.str.1, 12
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"put 0 0 1 1\r\n"
	.size	.L.str.2, 14
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"A\r\n"
	.size	.L.str.3, 4
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"INSERTED 1\r\n"
	.size	.L.str.4, 13
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"put 0 99 1 1\r\n"
	.size	.L.str.5, 15
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"B\r\n"
	.size	.L.str.6, 4
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"INSERTED 2\r\n"
	.size	.L.str.7, 13
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"put 0 1 1 1\r\n"
	.size	.L.str.8, 14
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"C\r\n"
	.size	.L.str.9, 4
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"INSERTED 3\r\n"
	.size	.L.str.10, 13
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"FOUND 3 1\r\n"
	.size	.L.str.11, 12
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"delete 3\r\n"
	.size	.L.str.12, 11
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"DELETED\r\n"
	.size	.L.str.13, 10
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"FOUND 2 1\r\n"
	.size	.L.str.14, 12
	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	"delete 2\r\n"
	.size	.L.str.15, 11
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp