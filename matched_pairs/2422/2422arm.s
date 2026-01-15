	.text
	.globl	cttest_binlog_read              // -- Begin function cttest_binlog_read
	.p2align	2
	.type	cttest_binlog_read,@function
cttest_binlog_read:                     // @cttest_binlog_read
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	adrp	x8, srv
	str	x8, [sp]                        // 8-byte Folded Spill
	adrp	x8, srv
	add	x8, x8, :lo12:srv
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	bl	ctdir
	ldr	x10, [sp]                       // 8-byte Folded Reload
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	str	w0, [x9, #16]
	mov	w8, #1
	str	w8, [x10, :lo12:srv]
	str	xzr, [x9, #8]
	str	w8, [x9, #4]
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
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	stur	x1, [x29, #-32]                 // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	ckresp
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	str	x1, [sp, #24]                   // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	str	x1, [sp, #32]                   // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	str	x1, [sp, #40]                   // 8-byte Folded Spill
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	str	x1, [sp, #48]                   // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	stur	x1, [x29, #-40]                 // 8-byte Folded Spill
	bl	ckresp
	ldur	x1, [x29, #-32]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	bl	ckresp
	ldr	x1, [sp, #48]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	bl	ckresp
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	stur	x1, [x29, #-16]                 // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.15
	add	x1, x1, :lo12:.L.str.15
	stur	x1, [x29, #-24]                 // 8-byte Folded Spill
	bl	ckresp
	bl	kill_srvpid
	bl	SERVER
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	mustdiallocal
	ldr	x1, [sp, #32]                   // 8-byte Folded Reload
	stur	w0, [x29, #-8]
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldr	x1, [sp, #40]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldr	x1, [sp, #48]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-40]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	x1, [x29, #-32]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.16
	add	x1, x1, :lo12:.L.str.16
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	x1, [x29, #-16]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.17
	add	x1, x1, :lo12:.L.str.17
	bl	ckresp
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	cttest_binlog_read, .Lfunc_end0-cttest_binlog_read
                                        // -- End function
	.type	srv,@object                     // @srv
	.bss
	.globl	srv
	.p2align	3
srv:
	.zero	24
	.size	srv, 24
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"use test\r\n"
	.size	.L.str, 11
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"USING test\r\n"
	.size	.L.str.1, 13
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"put 0 0 120 4\r\n"
	.size	.L.str.2, 16
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"test\r\n"
	.size	.L.str.3, 7
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"INSERTED 1\r\n"
	.size	.L.str.4, 13
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"tes1\r\n"
	.size	.L.str.5, 7
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"INSERTED 2\r\n"
	.size	.L.str.6, 13
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"watch test\r\n"
	.size	.L.str.7, 13
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"WATCHING 2\r\n"
	.size	.L.str.8, 13
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"reserve\r\n"
	.size	.L.str.9, 10
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"RESERVED 1 4\r\n"
	.size	.L.str.10, 15
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"release 1 1 1\r\n"
	.size	.L.str.11, 16
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"RELEASED\r\n"
	.size	.L.str.12, 11
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"RESERVED 2 4\r\n"
	.size	.L.str.13, 15
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"delete 2\r\n"
	.size	.L.str.14, 11
	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	"DELETED\r\n"
	.size	.L.str.15, 10
	.type	.L.str.16,@object               // @.str.16
.L.str.16:
	.asciz	"delete 1\r\n"
	.size	.L.str.16, 11
	.type	.L.str.17,@object               // @.str.17
.L.str.17:
	.asciz	"NOT_FOUND\r\n"
	.size	.L.str.17, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ctdir
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym kill_srvpid
	.addrsig_sym srv