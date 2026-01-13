	.text
	.globl	cttest_quit_releases_job        // -- Begin function cttest_quit_releases_job
	.p2align	2
	.type	cttest_quit_releases_job,@function
cttest_quit_releases_job:               // @cttest_quit_releases_job
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	bl	SERVER
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	mustdiallocal
	stur	w0, [x29, #-8]
	ldur	w0, [x29, #-4]
	bl	mustdiallocal
	stur	w0, [x29, #-12]
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-12]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	mustsend
	ldur	w0, [x29, #-12]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	str	x1, [sp, #24]                   // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-12]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	bl	ckresp
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	w0, [x29, #-12]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	mustsend
	ldur	w0, [x29, #-12]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	ckrespsub
	ldur	w0, [x29, #-12]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	bl	mustsend
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-12]
	bl	mustsend
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-12]
	bl	ckresp
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-12]
	bl	ckresp
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	cttest_quit_releases_job, .Lfunc_end0-cttest_quit_releases_job
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"reserve-with-timeout 1\r\n"
	.size	.L.str, 25
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"put 0 0 100 1\r\n"
	.size	.L.str.1, 16
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"a\r\n"
	.size	.L.str.2, 4
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"INSERTED 1\r\n"
	.size	.L.str.3, 13
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"RESERVED 1 1\r\n"
	.size	.L.str.4, 15
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"stats-job 1\r\n"
	.size	.L.str.5, 14
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"OK "
	.size	.L.str.6, 4
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"\nstate: reserved\n"
	.size	.L.str.7, 18
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"quit\r\n"
	.size	.L.str.8, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym ckrespsub