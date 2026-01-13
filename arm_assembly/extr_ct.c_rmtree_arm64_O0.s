	.text
	.p2align	2                               // -- Begin function rmtree
	.type	rmtree,@function
rmtree:                                 // @rmtree
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #80
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	unlink
	stur	w0, [x29, #-12]
	ldur	w8, [x29, #-12]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, errno
	ldr	w8, [x8, :lo12:errno]
	adrp	x9, ENOENT
	ldr	w9, [x9, :lo12:ENOENT]
	subs	w8, w8, w9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_16
.LBB0_3:
	adrp	x8, errno
	ldr	w8, [x8, :lo12:errno]
	stur	w8, [x29, #-16]
	ldur	x0, [x29, #-8]
	bl	opendir
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	cbnz	x8, .LBB0_8
	b	.LBB0_4
.LBB0_4:
	adrp	x8, errno
	ldr	w8, [x8, :lo12:errno]
	adrp	x9, ENOTDIR
	ldr	w9, [x9, :lo12:ENOTDIR]
	subs	w8, w8, w9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, stderr
	ldr	w8, [x8, :lo12:stderr]
	stur	w8, [x29, #-60]                 // 4-byte Folded Spill
	ldur	w0, [x29, #-16]
	bl	strerror
	mov	x2, x0
	ldur	w0, [x29, #-60]                 // 4-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	fprintf
	b	.LBB0_7
.LBB0_6:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	perror
	b	.LBB0_7
.LBB0_7:
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	x2, [x29, #-8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	fprintf
	b	.LBB0_16
.LBB0_8:
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-24]
	bl	readdir
	stur	x0, [x29, #-32]
	cbz	x0, .LBB0_14
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	x8, [x29, #-32]
	ldr	x0, [x8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	strcmp
	cbz	x0, .LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	x8, [x29, #-32]
	ldr	x0, [x8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	strcmp
	cbnz	x0, .LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_9 Depth=1
	b	.LBB0_9
.LBB0_13:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	x0, [x29, #-8]
	bl	strlen
	add	w8, w0, #1
	stur	w8, [x29, #-76]                 // 4-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldr	x0, [x8]
	bl	strlen
	ldur	w8, [x29, #-76]                 // 4-byte Folded Reload
	add	w8, w8, w0
	stur	w8, [x29, #-36]
	ldur	w8, [x29, #-36]
	add	w8, w8, #1
                                        // kill: def $x8 killed $w8
	mov	x9, sp
	stur	x9, [x29, #-48]
	lsr	x9, x8, #0
	add	x9, x9, #15
	and	x10, x9, #0xfffffffffffffff0
	mov	x9, sp
	subs	x0, x9, x10
	stur	x0, [x29, #-72]                 // 8-byte Folded Spill
	mov	sp, x0
	stur	x8, [x29, #-56]
	ldur	x2, [x29, #-8]
	ldur	x8, [x29, #-32]
	ldr	x3, [x8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	sprintf
	ldur	x0, [x29, #-72]                 // 8-byte Folded Reload
	bl	rmtree
	ldur	x8, [x29, #-48]
	mov	sp, x8
	b	.LBB0_9
.LBB0_14:
	ldur	x0, [x29, #-24]
	bl	closedir
	ldur	x0, [x29, #-8]
	bl	rmdir
	stur	w0, [x29, #-12]
	ldur	w8, [x29, #-12]
	adds	w8, w8, #1
	b.ne	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	perror
	adrp	x8, stderr
	ldr	w0, [x8, :lo12:stderr]
	ldur	x2, [x29, #-8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	fprintf
	b	.LBB0_16
.LBB0_16:
	mov	sp, x29
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	rmtree, .Lfunc_end0-rmtree
                                        // -- End function
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.type	ENOENT,@object                  // @ENOENT
	.globl	ENOENT
	.p2align	2
ENOENT:
	.word	0                               // 0x0
	.size	ENOENT, 4
	.type	ENOTDIR,@object                 // @ENOTDIR
	.globl	ENOTDIR
	.p2align	2
ENOTDIR:
	.word	0                               // 0x0
	.size	ENOTDIR, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ct: unlink: %s\n"
	.size	.L.str, 16
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"ct: opendir"
	.size	.L.str.1, 12
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"ct: path %s\n"
	.size	.L.str.2, 13
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"."
	.size	.L.str.3, 2
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	".."
	.size	.L.str.4, 3
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"%s/%s"
	.size	.L.str.5, 6
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"ct: rmdir"
	.size	.L.str.6, 10
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rmtree
	.addrsig_sym unlink
	.addrsig_sym opendir
	.addrsig_sym fprintf
	.addrsig_sym strerror
	.addrsig_sym perror
	.addrsig_sym readdir
	.addrsig_sym strcmp
	.addrsig_sym strlen
	.addrsig_sym sprintf
	.addrsig_sym closedir
	.addrsig_sym rmdir
	.addrsig_sym errno
	.addrsig_sym ENOENT
	.addrsig_sym ENOTDIR
	.addrsig_sym stderr