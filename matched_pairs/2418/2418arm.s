	.text
	.globl	cttest_binlog_bury              // -- Begin function cttest_binlog_bury
	.p2align	2
	.type	cttest_binlog_bury,@function
cttest_binlog_bury:                     // @cttest_binlog_bury
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x8, srv
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	adrp	x8, srv
	add	x8, x8, :lo12:srv
	str	x8, [sp]                        // 8-byte Folded Spill
	bl	ctdir
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	w0, [x8, #4]
	mov	w8, #1
	str	w8, [x9, :lo12:srv]
	adrp	x9, job_data_size_limit
	mov	w8, #10
	str	w8, [x9, :lo12:job_data_size_limit]
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
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	ckresp
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
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
	.size	cttest_binlog_bury, .Lfunc_end0-cttest_binlog_bury
                                        // -- End function
	.type	srv,@object                     // @srv
	.bss
	.globl	srv
	.p2align	2
srv:
	.zero	8
	.size	srv, 8
	.type	job_data_size_limit,@object     // @job_data_size_limit
	.globl	job_data_size_limit
	.p2align	2
job_data_size_limit:
	.word	0                               // 0x0
	.size	job_data_size_limit, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 0 100 0\r\n"
	.size	.L.str, 16
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"\r\n"
	.size	.L.str.1, 3
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
	.asciz	"RESERVED 1 0\r\n"
	.size	.L.str.4, 15
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"bury 1 0\r\n"
	.size	.L.str.5, 11
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"BURIED\r\n"
	.size	.L.str.6, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ctdir
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym srv
	.addrsig_sym job_data_size_limit