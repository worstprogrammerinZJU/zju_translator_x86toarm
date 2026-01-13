	.text
	.globl	cttest_binlog_disk_full         // -- Begin function cttest_binlog_disk_full
	.p2align	2
	.type	cttest_binlog_disk_full,@function
cttest_binlog_disk_full:                // @cttest_binlog_disk_full
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	adrp	x8, srv
	str	x8, [sp]                        // 8-byte Folded Spill
	adrp	x8, srv
	add	x8, x8, :lo12:srv
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	adrp	x9, size
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	mov	w8, #1000
	str	w8, [x9, :lo12:size]
	adrp	x9, falloc
	adrp	x8, wrapfalloc
	add	x8, x8, :lo12:wrapfalloc
	str	x8, [x9, :lo12:falloc]
	adrp	x9, fallocpat
	ldr	x10, [x9, :lo12:fallocpat]
	mov	w8, #1
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	str	w8, [x10]
	ldr	x9, [x9, :lo12:fallocpat]
	str	w8, [x9, #8]
	bl	ctdir
	ldr	x11, [sp]                       // 8-byte Folded Reload
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [sp, #28]                   // 4-byte Folded Reload
	str	w0, [x9, #24]
	str	w8, [x11, :lo12:srv]
	ldr	w10, [x10, :lo12:size]
	str	w10, [x9, #4]
	str	xzr, [x9, #16]
	str	w8, [x9, #8]
	bl	SERVER
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	mustdiallocal
	stur	w0, [x29, #-8]
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	str	x1, [sp, #32]                   // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	stur	x1, [x29, #-24]                 // 8-byte Folded Spill
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	ckresp
	ldr	x1, [sp, #32]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	ckresp
	ldr	x1, [sp, #32]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	ckresp
	ldr	x1, [sp, #32]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	ckresp
	ldr	x1, [sp, #32]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	ckresp
	ldr	x1, [sp, #32]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	ckresp
	ldr	x1, [sp, #32]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	bl	ckresp
	ldr	x1, [sp, #32]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	ckresp
	ldr	x1, [sp, #32]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	mustsend
	ldur	x1, [x29, #-24]                 // 8-byte Folded Reload
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
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	stur	x1, [x29, #-16]                 // 8-byte Folded Spill
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	bl	mustsend
	ldur	x1, [x29, #-16]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	mustsend
	ldur	x1, [x29, #-16]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.15
	add	x1, x1, :lo12:.L.str.15
	bl	mustsend
	ldur	x1, [x29, #-16]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.16
	add	x1, x1, :lo12:.L.str.16
	bl	mustsend
	ldur	x1, [x29, #-16]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.17
	add	x1, x1, :lo12:.L.str.17
	bl	mustsend
	ldur	x1, [x29, #-16]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.18
	add	x1, x1, :lo12:.L.str.18
	bl	mustsend
	ldur	x1, [x29, #-16]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldur	w0, [x29, #-8]
	adrp	x1, .L.str.19
	add	x1, x1, :lo12:.L.str.19
	bl	mustsend
	ldur	x1, [x29, #-16]                 // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	ckresp
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	cttest_binlog_disk_full, .Lfunc_end0-cttest_binlog_disk_full
                                        // -- End function
	.type	size,@object                    // @size
	.bss
	.globl	size
	.p2align	2
size:
	.word	0                               // 0x0
	.size	size, 4
	.type	wrapfalloc,@object              // @wrapfalloc
	.globl	wrapfalloc
	.p2align	2
wrapfalloc:
	.word	0                               // 0x0
	.size	wrapfalloc, 4
	.type	falloc,@object                  // @falloc
	.globl	falloc
	.p2align	3
falloc:
	.xword	0
	.size	falloc, 8
	.type	fallocpat,@object               // @fallocpat
	.globl	fallocpat
	.p2align	3
fallocpat:
	.xword	0
	.size	fallocpat, 8
	.type	srv,@object                     // @srv
	.globl	srv
	.p2align	3
srv:
	.zero	32
	.size	srv, 32
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 0 100 50\r\n"
	.size	.L.str, 17
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\n"
	.size	.L.str.1, 53
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"INSERTED 1\r\n"
	.size	.L.str.2, 13
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"INSERTED 2\r\n"
	.size	.L.str.3, 13
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"INSERTED 3\r\n"
	.size	.L.str.4, 13
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"INSERTED 4\r\n"
	.size	.L.str.5, 13
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"OUT_OF_MEMORY\r\n"
	.size	.L.str.6, 16
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"INSERTED 6\r\n"
	.size	.L.str.7, 13
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"INSERTED 7\r\n"
	.size	.L.str.8, 13
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"INSERTED 8\r\n"
	.size	.L.str.9, 13
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"INSERTED 9\r\n"
	.size	.L.str.10, 13
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"delete 1\r\n"
	.size	.L.str.11, 11
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"DELETED\r\n"
	.size	.L.str.12, 10
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"delete 2\r\n"
	.size	.L.str.13, 11
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"delete 3\r\n"
	.size	.L.str.14, 11
	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	"delete 4\r\n"
	.size	.L.str.15, 11
	.type	.L.str.16,@object               // @.str.16
.L.str.16:
	.asciz	"delete 6\r\n"
	.size	.L.str.16, 11
	.type	.L.str.17,@object               // @.str.17
.L.str.17:
	.asciz	"delete 7\r\n"
	.size	.L.str.17, 11
	.type	.L.str.18,@object               // @.str.18
.L.str.18:
	.asciz	"delete 8\r\n"
	.size	.L.str.18, 11
	.type	.L.str.19,@object               // @.str.19
.L.str.19:
	.asciz	"delete 9\r\n"
	.size	.L.str.19, 11
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ctdir
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym size
	.addrsig_sym wrapfalloc
	.addrsig_sym falloc
	.addrsig_sym fallocpat
	.addrsig_sym srv