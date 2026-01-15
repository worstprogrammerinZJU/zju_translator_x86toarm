	.text
	.globl	cttest_reserve_job_buried       // -- Begin function cttest_reserve_job_buried
	.p2align	2
	.type	cttest_reserve_job_buried,@function
cttest_reserve_job_buried:              // @cttest_reserve_job_buried
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	bl	SERVER
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	mustdiallocal
	stur	w0, [x29, #-8]
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	str	x1, [sp]                        // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	stur	x1, [x29, #-40]                 // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	str	x1, [sp, #40]                   // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	str	x1, [sp, #48]                   // 8-byte Folded Spill
	bl	ckresp
	ldur	x1, [x29, #-40]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	ckresp
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	str	x1, [sp, #32]                   // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	str	x1, [sp, #24]                   // 8-byte Folded Spill
	bl	ckresp
	ldr	x1, [sp, #32]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	bl	mustsend
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldr	x1, [sp, #32]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldr	x1, [sp, #40]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldr	x1, [sp, #48]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	x1, [x29, #-40]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	stur	x1, [x29, #-32]                 // 8-byte Folded Spill
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	mustsend
	ldur	x1, [x29, #-32]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.15
	add	x1, x1, :lo12:.L.str.15
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.16
	add	x1, x1, :lo12:.L.str.16
	stur	x1, [x29, #-24]                 // 8-byte Folded Spill
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.17
	add	x1, x1, :lo12:.L.str.17
	stur	x1, [x29, #-16]                 // 8-byte Folded Spill
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.18
	add	x1, x1, :lo12:.L.str.18
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	x1, [x29, #-16]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	cttest_reserve_job_buried, .Lfunc_end0-cttest_reserve_job_buried
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 0 1 1\r\n"
	.size	.L.str, 14
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"A\r\n"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"INSERTED 1\r\n"
	.size	.L.str.2, 13
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"reserve-job 1\r\n"
	.size	.L.str.3, 16
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"RESERVED 1 1\r\n"
	.size	.L.str.4, 15
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"bury 1 1\r\n"
	.size	.L.str.5, 11
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"BURIED\r\n"
	.size	.L.str.6, 9
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"B\r\n"
	.size	.L.str.7, 4
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"INSERTED 2\r\n"
	.size	.L.str.8, 13
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"reserve-job 2\r\n"
	.size	.L.str.9, 16
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"RESERVED 2 1\r\n"
	.size	.L.str.10, 15
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"bury 2 1\r\n"
	.size	.L.str.11, 11
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"release 1 1 0\r\n"
	.size	.L.str.12, 16
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"RELEASED\r\n"
	.size	.L.str.13, 11
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"release 2 1 0\r\n"
	.size	.L.str.14, 16
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
	.asciz	"\nstate: ready\n"
	.size	.L.str.17, 15
	.type	.L.str.18,@object               // @.str.18
.L.str.18:
	.asciz	"stats-job 2\r\n"
	.size	.L.str.18, 14
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym ckrespsub