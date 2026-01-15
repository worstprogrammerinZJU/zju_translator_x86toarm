	.text
	.globl	cttest_reserve_job_ttr_deadline_soon // -- Begin function cttest_reserve_job_ttr_deadline_soon
	.p2align	2
	.type	cttest_reserve_job_ttr_deadline_soon,@function
cttest_reserve_job_ttr_deadline_soon:   // @cttest_reserve_job_ttr_deadline_soon
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
	str	x1, [sp, #24]                   // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	stur	x1, [x29, #-16]                 // 8-byte Folded Spill
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	ckresp
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	mov	w0, #34464
	movk	w0, #1, lsl #16
	bl	usleep
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-16]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	bl	ckresp
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-16]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	mov	w0, #16960
	movk	w0, #15, lsl #16
	bl	usleep
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	bl	ckresp
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-16]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	ckrespsub
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	cttest_reserve_job_ttr_deadline_soon, .Lfunc_end0-cttest_reserve_job_ttr_deadline_soon
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 5 1 1\r\n"
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
	.asciz	"stats-job 1\r\n"
	.size	.L.str.3, 14
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"OK "
	.size	.L.str.4, 4
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"\nstate: delayed\n"
	.size	.L.str.5, 17
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"reserve-job 1\r\n"
	.size	.L.str.6, 16
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"RESERVED 1 1\r\n"
	.size	.L.str.7, 15
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"\nstate: reserved\n"
	.size	.L.str.8, 18
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"reserve-with-timeout 1\r\n"
	.size	.L.str.9, 25
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"DEADLINE_SOON\r\n"
	.size	.L.str.10, 16
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"put 0 0 1 1\r\n"
	.size	.L.str.11, 14
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"B\r\n"
	.size	.L.str.12, 4
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"INSERTED 2\r\n"
	.size	.L.str.13, 13
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"\nstate: ready\n"
	.size	.L.str.14, 15
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym ckrespsub
	.addrsig_sym usleep