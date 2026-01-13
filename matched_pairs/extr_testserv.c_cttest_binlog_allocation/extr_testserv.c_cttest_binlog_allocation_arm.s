	.text
	.globl	cttest_binlog_allocation        // -- Begin function cttest_binlog_allocation
	.p2align	2
	.type	cttest_binlog_allocation,@function
cttest_binlog_allocation:               // @cttest_binlog_allocation
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	adrp	x8, srv
	str	x8, [sp]                        // 8-byte Folded Spill
	adrp	x8, srv
	add	x8, x8, :lo12:srv
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	stur	wzr, [x29, #-4]
	adrp	x9, size
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	mov	w8, #601
	str	w8, [x9, :lo12:size]
	bl	ctdir
	ldr	x11, [sp]                       // 8-byte Folded Reload
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	str	w0, [x9, #24]
	mov	w8, #1
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	str	w8, [x11, :lo12:srv]
	ldr	w10, [x10, :lo12:size]
	str	w10, [x9, #4]
	str	xzr, [x9, #16]
	str	w8, [x9, #8]
	bl	SERVER
	stur	w0, [x29, #-8]
	ldur	w0, [x29, #-8]
	bl	mustdiallocal
	ldr	w8, [sp, #28]                   // 4-byte Folded Reload
	stur	w0, [x29, #-12]
	stur	w8, [x29, #-4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #96
	b.gt	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w1, [x29, #-4]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	fmtalloc
	stur	x0, [x29, #-24]
	ldur	w0, [x29, #-12]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	mustsend
	ldur	w0, [x29, #-12]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	mustsend
	ldur	w0, [x29, #-12]
	ldur	x1, [x29, #-24]
	bl	ckresp
	ldur	x0, [x29, #-24]
	bl	free
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_1
.LBB0_4:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #96
	b.gt	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w1, [x29, #-4]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	fmtalloc
	str	x0, [sp, #32]
	ldur	w0, [x29, #-12]
	ldr	x1, [sp, #32]
	bl	mustsend
	ldur	w0, [x29, #-12]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	ckresp
	ldr	x0, [sp, #32]
	bl	free
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_8:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	cttest_binlog_allocation, .Lfunc_end0-cttest_binlog_allocation
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
	.zero	32
	.size	srv, 32
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"INSERTED %d\r\n"
	.size	.L.str, 14
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"put 0 0 120 22\r\n"
	.size	.L.str.1, 17
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"job payload xxxxxxxxxx\r\n"
	.size	.L.str.2, 25
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"delete %d\r\n"
	.size	.L.str.3, 12
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"DELETED\r\n"
	.size	.L.str.4, 10
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ctdir
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym fmtalloc
	.addrsig_sym mustsend
	.addrsig_sym ckresp
	.addrsig_sym free
	.addrsig_sym size
	.addrsig_sym srv