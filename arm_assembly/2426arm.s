	.text
	.globl	cttest_delayed_to_ready         // -- Begin function cttest_delayed_to_ready
	.p2align	2
	.type	cttest_delayed_to_ready,@function
cttest_delayed_to_ready:                // @cttest_delayed_to_ready
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
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	str	x1, [sp]                        // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	ckrespsub
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	ckrespsub
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	bl	ckrespsub
	mov	w0, #26960
	movk	w0, #15, lsl #16
	bl	usleep
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	bl	ckrespsub
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	ckrespsub
	ldr	x1, [sp]                        // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	cttest_delayed_to_ready, .Lfunc_end0-cttest_delayed_to_ready
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 1 1 0\r\n"
	.size	.L.str, 14
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
	.asciz	"stats-tube default\r\n"
	.size	.L.str.3, 21
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"OK "
	.size	.L.str.4, 4
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"\ncurrent-jobs-ready: 0\n"
	.size	.L.str.5, 24
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"\ncurrent-jobs-delayed: 1\n"
	.size	.L.str.6, 26
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"\ntotal-jobs: 1\n"
	.size	.L.str.7, 16
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"\ncurrent-jobs-ready: 1\n"
	.size	.L.str.8, 24
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"\ncurrent-jobs-delayed: 0\n"
	.size	.L.str.9, 26
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym ckrespsub
	.addrsig_sym usleep