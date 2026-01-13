	.text
	.globl	cttest_reserve_with_timeout_2conns // -- Begin function cttest_reserve_with_timeout_2conns
	.p2align	2
	.type	cttest_reserve_with_timeout_2conns,@function
cttest_reserve_with_timeout_2conns:     // @cttest_reserve_with_timeout_2conns
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	adrp	x9, job_data_size_limit
	mov	w8, #10
	str	w8, [x9, :lo12:job_data_size_limit]
	bl	SERVER
	stur	w0, [x29, #-12]
	ldur	w0, [x29, #-12]
	bl	mustdiallocal
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-12]
	bl	mustdiallocal
	stur	w0, [x29, #-8]
	ldur	w0, [x29, #-4]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	str	x1, [sp]                        // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-4]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	ckresp
	ldur	w0, [x29, #-4]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	mustsend
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	adrp	x9, timeout
	mov	w8, #43776
	movk	w8, #16784, lsl #16
	str	w8, [x9, :lo12:timeout]
	ldur	w0, [x29, #-4]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	ckresp
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	cttest_reserve_with_timeout_2conns, .Lfunc_end0-cttest_reserve_with_timeout_2conns
                                        // -- End function
	.type	job_data_size_limit,@object     // @job_data_size_limit
	.bss
	.globl	job_data_size_limit
	.p2align	2
job_data_size_limit:
	.word	0                               // 0x0
	.size	job_data_size_limit, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"watch foo\r\n"
	.size	.L.str, 12
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"WATCHING 2\r\n"
	.size	.L.str.1, 13
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"reserve-with-timeout 1\r\n"
	.size	.L.str.2, 25
	.type	timeout,@object                 // @timeout
	.bss
	.globl	timeout
	.p2align	2
timeout:
	.word	0                               // 0x0
	.size	timeout, 4
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"TIMED_OUT\r\n"
	.size	.L.str.3, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym job_data_size_limit
	.addrsig_sym timeout