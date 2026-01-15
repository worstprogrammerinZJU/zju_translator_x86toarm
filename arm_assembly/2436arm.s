	.text
	.globl	cttest_list_tube                // -- Begin function cttest_list_tube
	.p2align	2
	.type	cttest_list_tube,@function
cttest_list_tube:                       // @cttest_list_tube
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
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	str	x1, [sp]                        // 8-byte Folded Spill
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	mustsend
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	mustsend
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	bl	ckresp
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	ckresp
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	cttest_list_tube, .Lfunc_end0-cttest_list_tube
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"watch w\r\n"
	.size	.L.str, 10
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"WATCHING 2\r\n"
	.size	.L.str.1, 13
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"use u\r\n"
	.size	.L.str.2, 8
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"USING u\r\n"
	.size	.L.str.3, 10
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"list-tubes\r\n"
	.size	.L.str.4, 13
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"OK "
	.size	.L.str.5, 4
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"---\n- default\n- w\n- u\n\r\n"
	.size	.L.str.6, 25
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"list-tube-used\r\n"
	.size	.L.str.7, 17
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"list-tubes-watched\r\n"
	.size	.L.str.8, 21
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"---\n- default\n- w\n\r\n"
	.size	.L.str.9, 21
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"ignore default\r\n"
	.size	.L.str.10, 17
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"WATCHING 1\r\n"
	.size	.L.str.11, 13
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"---\n- w\n\r\n"
	.size	.L.str.12, 11
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"ignore w\r\n"
	.size	.L.str.13, 11
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"NOT_IGNORED\r\n"
	.size	.L.str.14, 14
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym ckrespsub