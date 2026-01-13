	.text
	.globl	cttest_delete_reserved_by_other // -- Begin function cttest_delete_reserved_by_other
	.p2align	2
	.type	cttest_delete_reserved_by_other,@function
cttest_delete_reserved_by_other:        // @cttest_delete_reserved_by_other
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	SERVER
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	mustdiallocal
	stur	w0, [x29, #-8]
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	ckresp
	ldur	w0, [x29, #-4]
	bl	mustdiallocal
	stur	w0, [x29, #-12]
	ldur	w0, [x29, #-12]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	mustsend
	ldur	w0, [x29, #-12]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	ckresp
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-12]
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	ckresp
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	cttest_delete_reserved_by_other, .Lfunc_end0-cttest_delete_reserved_by_other
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 0 1 1\r\n"
	.size	.L.str, 14
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"a\r\n"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"INSERTED 1\r\n"
	.size	.L.str.2, 13
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"reserve\r\n"
	.size	.L.str.3, 10
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"RESERVED 1 1\r\n"
	.size	.L.str.4, 15
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"delete 1\r\n"
	.size	.L.str.5, 11
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"NOT_FOUND\r\n"
	.size	.L.str.6, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp