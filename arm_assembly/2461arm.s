	.text
	.globl	cttest_stats_tube               // -- Begin function cttest_stats_tube
	.p2align	2
	.type	cttest_stats_tube,@function
cttest_stats_tube:                      // @cttest_stats_tube
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
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
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	stur	x1, [x29, #-24]                 // 8-byte Folded Spill
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	ckrespsub
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	bl	ckrespsub
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	str	x1, [sp, #24]                   // 8-byte Folded Spill
	bl	ckrespsub
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	str	x1, [sp, #32]                   // 8-byte Folded Spill
	bl	ckrespsub
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	str	x1, [sp, #40]                   // 8-byte Folded Spill
	bl	ckrespsub
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	str	x1, [sp, #48]                   // 8-byte Folded Spill
	bl	ckrespsub
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.15
	add	x1, x1, :lo12:.L.str.15
	bl	ckrespsub
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.16
	add	x1, x1, :lo12:.L.str.16
	bl	ckrespsub
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.17
	add	x1, x1, :lo12:.L.str.17
	bl	ckrespsub
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.18
	add	x1, x1, :lo12:.L.str.18
	str	x1, [sp, #56]                   // 8-byte Folded Spill
	bl	ckrespsub
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.19
	add	x1, x1, :lo12:.L.str.19
	bl	ckrespsub
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.20
	add	x1, x1, :lo12:.L.str.20
	stur	x1, [x29, #-48]                 // 8-byte Folded Spill
	bl	ckrespsub
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.21
	add	x1, x1, :lo12:.L.str.21
	stur	x1, [x29, #-40]                 // 8-byte Folded Spill
	bl	ckrespsub
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.22
	add	x1, x1, :lo12:.L.str.22
	stur	x1, [x29, #-16]                 // 8-byte Folded Spill
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.23
	add	x1, x1, :lo12:.L.str.23
	stur	x1, [x29, #-32]                 // 8-byte Folded Spill
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.24
	add	x1, x1, :lo12:.L.str.24
	bl	ckrespsub
	ldur	x1, [x29, #-32]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	x1, [x29, #-32]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	x1, [x29, #-32]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldr	x1, [sp, #32]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	x1, [x29, #-32]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldr	x1, [sp, #40]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	x1, [x29, #-32]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldr	x1, [sp, #48]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	x1, [x29, #-32]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.25
	add	x1, x1, :lo12:.L.str.25
	bl	ckrespsub
	ldur	x1, [x29, #-32]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.26
	add	x1, x1, :lo12:.L.str.26
	bl	ckrespsub
	ldur	x1, [x29, #-32]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.27
	add	x1, x1, :lo12:.L.str.27
	bl	ckrespsub
	ldur	x1, [x29, #-32]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldr	x1, [sp, #56]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	x1, [x29, #-32]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.28
	add	x1, x1, :lo12:.L.str.28
	bl	ckrespsub
	ldur	x1, [x29, #-32]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	x1, [x29, #-48]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	x1, [x29, #-32]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	x1, [x29, #-40]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	x1, [x29, #-32]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldur	x1, [x29, #-16]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckrespsub
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	cttest_stats_tube, .Lfunc_end0-cttest_stats_tube
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"use tubea\r\n"
	.size	.L.str, 12
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"USING tubea\r\n"
	.size	.L.str.1, 14
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"put 0 0 0 1\r\n"
	.size	.L.str.2, 14
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"x\r\n"
	.size	.L.str.3, 4
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"INSERTED 1\r\n"
	.size	.L.str.4, 13
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"delete 1\r\n"
	.size	.L.str.5, 11
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"DELETED\r\n"
	.size	.L.str.6, 10
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"stats-tube tubea\r\n"
	.size	.L.str.7, 19
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"OK "
	.size	.L.str.8, 4
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"\nname: tubea\n"
	.size	.L.str.9, 14
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"\ncurrent-jobs-urgent: 0\n"
	.size	.L.str.10, 25
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"\ncurrent-jobs-ready: 0\n"
	.size	.L.str.11, 24
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"\ncurrent-jobs-reserved: 0\n"
	.size	.L.str.12, 27
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"\ncurrent-jobs-delayed: 0\n"
	.size	.L.str.13, 26
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"\ncurrent-jobs-buried: 0\n"
	.size	.L.str.14, 25
	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	"\ntotal-jobs: 1\n"
	.size	.L.str.15, 16
	.type	.L.str.16,@object               // @.str.16
.L.str.16:
	.asciz	"\ncurrent-using: 1\n"
	.size	.L.str.16, 19
	.type	.L.str.17,@object               // @.str.17
.L.str.17:
	.asciz	"\ncurrent-watching: 0\n"
	.size	.L.str.17, 22
	.type	.L.str.18,@object               // @.str.18
.L.str.18:
	.asciz	"\ncurrent-waiting: 0\n"
	.size	.L.str.18, 21
	.type	.L.str.19,@object               // @.str.19
.L.str.19:
	.asciz	"\ncmd-delete: 1\n"
	.size	.L.str.19, 16
	.type	.L.str.20,@object               // @.str.20
.L.str.20:
	.asciz	"\ncmd-pause-tube: 0\n"
	.size	.L.str.20, 20
	.type	.L.str.21,@object               // @.str.21
.L.str.21:
	.asciz	"\npause: 0\n"
	.size	.L.str.21, 11
	.type	.L.str.22,@object               // @.str.22
.L.str.22:
	.asciz	"\npause-time-left: 0\n"
	.size	.L.str.22, 21
	.type	.L.str.23,@object               // @.str.23
.L.str.23:
	.asciz	"stats-tube default\r\n"
	.size	.L.str.23, 21
	.type	.L.str.24,@object               // @.str.24
.L.str.24:
	.asciz	"\nname: default\n"
	.size	.L.str.24, 16
	.type	.L.str.25,@object               // @.str.25
.L.str.25:
	.asciz	"\ntotal-jobs: 0\n"
	.size	.L.str.25, 16
	.type	.L.str.26,@object               // @.str.26
.L.str.26:
	.asciz	"\ncurrent-using: 0\n"
	.size	.L.str.26, 19
	.type	.L.str.27,@object               // @.str.27
.L.str.27:
	.asciz	"\ncurrent-watching: 1\n"
	.size	.L.str.27, 22
	.type	.L.str.28,@object               // @.str.28
.L.str.28:
	.asciz	"\ncmd-delete: 0\n"
	.size	.L.str.28, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym ckrespsub