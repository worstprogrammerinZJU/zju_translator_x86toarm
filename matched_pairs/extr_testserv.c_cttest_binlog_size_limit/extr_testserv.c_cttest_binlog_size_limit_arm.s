	.text
	.globl	cttest_binlog_size_limit        // -- Begin function cttest_binlog_size_limit
	.p2align	2
	.type	cttest_binlog_size_limit,@function
cttest_binlog_size_limit:               // @cttest_binlog_size_limit
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	adrp	x8, srv
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	adrp	x8, srv
	add	x8, x8, :lo12:srv
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	stur	wzr, [x29, #-4]
	adrp	x9, size
	str	x9, [sp, #24]                   // 8-byte Folded Spill
	mov	w8, #4096
	str	w8, [x9, :lo12:size]
	bl	ctdir
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x10, [sp, #24]                  // 8-byte Folded Reload
	ldr	x9, [sp, #32]                   // 8-byte Folded Reload
	str	w0, [x8, :lo12:srv]
	mov	w8, #1
	str	w8, [x9, #4]
	ldr	w10, [x10, :lo12:size]
	str	w10, [x9, #8]
	str	xzr, [x9, #16]
	str	w8, [x9, #12]
	bl	SERVER
	stur	w0, [x29, #-12]
	ldur	w0, [x29, #-12]
	bl	mustdiallocal
	stur	w0, [x29, #-16]
	bl	ctdir
	mov	w1, w0
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	fmtalloc
	stur	x0, [x29, #-24]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-24]
	bl	exist
	cbnz	w0, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	add	w1, w8, #1
	stur	w1, [x29, #-4]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	fmtalloc
	stur	x0, [x29, #-32]
	ldur	w0, [x29, #-16]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	mustsend
	ldur	w0, [x29, #-16]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	mustsend
	ldur	w0, [x29, #-16]
	ldur	x1, [x29, #-32]
	bl	ckresp
	ldur	x0, [x29, #-32]
	bl	free
	b	.LBB0_1
.LBB0_3:
	bl	ctdir
	mov	w1, w0
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	fmtalloc
	str	x0, [sp, #40]
	ldr	x0, [sp, #40]
	bl	filesize
	stur	w0, [x29, #-8]
	ldur	w9, [x29, #-8]
	adrp	x8, size
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	w10, [x8, :lo12:size]
	subs	w9, w9, w10
	cset	w9, eq
	and	w0, w9, #0x1
	ldur	w2, [x29, #-8]
	ldr	w3, [x8, :lo12:size]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	assertf
	ldur	x0, [x29, #-24]
	bl	filesize
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	stur	w0, [x29, #-8]
	ldur	w9, [x29, #-8]
	ldr	w10, [x8, :lo12:size]
	subs	w9, w9, w10
	cset	w9, eq
	and	w0, w9, #0x1
	ldur	w2, [x29, #-8]
	ldr	w3, [x8, :lo12:size]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	assertf
	ldr	x0, [sp, #40]
	bl	free
	ldur	x0, [x29, #-24]
	bl	free
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	cttest_binlog_size_limit, .Lfunc_end0-cttest_binlog_size_limit
                                        // -- End function
	.type	size,@object                    // @size
	.bss
	.globl	size
	.p2align	2
size:
	.word	0                               // 0x0
	.size	size, 4
	.type	srv,@object                     // @srv
	.globl	srv
	.p2align	3
srv:
	.zero	24
	.size	srv, 24
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s/binlog.2"
	.size	.L.str, 12
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"INSERTED %d\r\n"
	.size	.L.str.1, 14
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"put 0 0 100 50\r\n"
	.size	.L.str.2, 17
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\r\n"
	.size	.L.str.3, 53
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"%s/binlog.1"
	.size	.L.str.4, 12
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"binlog.1 %d != %d"
	.size	.L.str.5, 18
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"binlog.2 %d != %d"
	.size	.L.str.6, 18
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ctdir
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym fmtalloc
	.addrsig_sym exist
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym free
	.addrsig_sym filesize
	.addrsig_sym assertf
	.addrsig_sym size
	.addrsig_sym srv