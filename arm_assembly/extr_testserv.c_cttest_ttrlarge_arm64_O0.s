	.text
	.globl	cttest_ttrlarge                 // -- Begin function cttest_ttrlarge
	.p2align	2
	.type	cttest_ttrlarge,@function
cttest_ttrlarge:                        // @cttest_ttrlarge
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
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	mustsend
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	mustsend
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	mustsend
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	mustsend
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	bl	mustsend
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	bl	mustsend
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.15
	add	x1, x1, :lo12:.L.str.15
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.16
	add	x1, x1, :lo12:.L.str.16
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.17
	add	x1, x1, :lo12:.L.str.17
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.18
	add	x1, x1, :lo12:.L.str.18
	bl	mustsend
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.19
	add	x1, x1, :lo12:.L.str.19
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.20
	add	x1, x1, :lo12:.L.str.20
	bl	mustsend
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.21
	add	x1, x1, :lo12:.L.str.21
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.22
	add	x1, x1, :lo12:.L.str.22
	bl	mustsend
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.23
	add	x1, x1, :lo12:.L.str.23
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.24
	add	x1, x1, :lo12:.L.str.24
	bl	mustsend
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.25
	add	x1, x1, :lo12:.L.str.25
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.26
	add	x1, x1, :lo12:.L.str.26
	bl	mustsend
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.27
	add	x1, x1, :lo12:.L.str.27
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.28
	add	x1, x1, :lo12:.L.str.28
	bl	mustsend
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.29
	add	x1, x1, :lo12:.L.str.29
	bl	ckrespsub
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	cttest_ttrlarge, .Lfunc_end0-cttest_ttrlarge
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 0 120 1\r\n"
	.size	.L.str, 16
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
	.asciz	"put 0 0 4294 1\r\n"
	.size	.L.str.3, 17
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"INSERTED 2\r\n"
	.size	.L.str.4, 13
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"put 0 0 4295 1\r\n"
	.size	.L.str.5, 17
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"INSERTED 3\r\n"
	.size	.L.str.6, 13
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"put 0 0 4296 1\r\n"
	.size	.L.str.7, 17
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"INSERTED 4\r\n"
	.size	.L.str.8, 13
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"put 0 0 4297 1\r\n"
	.size	.L.str.9, 17
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"INSERTED 5\r\n"
	.size	.L.str.10, 13
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"put 0 0 5000 1\r\n"
	.size	.L.str.11, 17
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"INSERTED 6\r\n"
	.size	.L.str.12, 13
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"put 0 0 21600 1\r\n"
	.size	.L.str.13, 18
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"INSERTED 7\r\n"
	.size	.L.str.14, 13
	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	"stats-job 1\r\n"
	.size	.L.str.15, 14
	.type	.L.str.16,@object               // @.str.16
.L.str.16:
	.asciz	"OK "
	.size	.L.str.16, 4
	.type	.L.str.17,@object               // @.str.17
.L.str.17:
	.asciz	"\nttr: 120\n"
	.size	.L.str.17, 11
	.type	.L.str.18,@object               // @.str.18
.L.str.18:
	.asciz	"stats-job 2\r\n"
	.size	.L.str.18, 14
	.type	.L.str.19,@object               // @.str.19
.L.str.19:
	.asciz	"\nttr: 4294\n"
	.size	.L.str.19, 12
	.type	.L.str.20,@object               // @.str.20
.L.str.20:
	.asciz	"stats-job 3\r\n"
	.size	.L.str.20, 14
	.type	.L.str.21,@object               // @.str.21
.L.str.21:
	.asciz	"\nttr: 4295\n"
	.size	.L.str.21, 12
	.type	.L.str.22,@object               // @.str.22
.L.str.22:
	.asciz	"stats-job 4\r\n"
	.size	.L.str.22, 14
	.type	.L.str.23,@object               // @.str.23
.L.str.23:
	.asciz	"\nttr: 4296\n"
	.size	.L.str.23, 12
	.type	.L.str.24,@object               // @.str.24
.L.str.24:
	.asciz	"stats-job 5\r\n"
	.size	.L.str.24, 14
	.type	.L.str.25,@object               // @.str.25
.L.str.25:
	.asciz	"\nttr: 4297\n"
	.size	.L.str.25, 12
	.type	.L.str.26,@object               // @.str.26
.L.str.26:
	.asciz	"stats-job 6\r\n"
	.size	.L.str.26, 14
	.type	.L.str.27,@object               // @.str.27
.L.str.27:
	.asciz	"\nttr: 5000\n"
	.size	.L.str.27, 12
	.type	.L.str.28,@object               // @.str.28
.L.str.28:
	.asciz	"stats-job 7\r\n"
	.size	.L.str.28, 14
	.type	.L.str.29,@object               // @.str.29
.L.str.29:
	.asciz	"\nttr: 21600\n"
	.size	.L.str.29, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym ckrespsub