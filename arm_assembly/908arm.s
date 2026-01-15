	.text
	.globl	filewopen                       // -- Begin function filewopen
	.p2align	2
	.type	filewopen,@function
filewopen:                              // @filewopen
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	adrp	x8, Walver
	ldr	w8, [x8, :lo12:Walver]
	str	w8, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #32]
	adrp	x8, O_WRONLY
	ldr	w8, [x8, :lo12:O_WRONLY]
	adrp	x9, O_CREAT
	ldr	w9, [x9, :lo12:O_CREAT]
	orr	w1, w8, w9
	mov	w2, #256
	bl	open
	stur	w0, [x29, #-12]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	w1, [x8, #32]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarn
	b	.LBB0_14
.LBB0_2:
	ldur	w0, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldr	x1, [x8]
	bl	falloc
	str	w0, [sp, #16]
	ldr	w8, [sp, #16]
	cbz	w8, .LBB0_8
	b	.LBB0_3
.LBB0_3:
	ldur	w0, [x29, #-12]
	bl	close
	adds	w8, w0, #1
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	twarn
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #16]
	adrp	x9, errno
	str	w8, [x9, :lo12:errno]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8, #32]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	twarn
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #32]
	bl	unlink
	str	w0, [sp, #16]
	ldr	w8, [sp, #16]
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x8, [x29, #-8]
	ldr	w1, [x8, #32]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	twarn
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_14
.LBB0_8:
	ldur	w0, [x29, #-12]
	add	x1, sp, #8
	mov	w2, #4
	bl	write
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	tbnz	w8, #31, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldrsw	x8, [sp, #12]
	subs	x8, x8, #4
	b.hs	.LBB0_13
	b	.LBB0_10
.LBB0_10:
	ldur	x8, [x29, #-8]
	ldr	w1, [x8, #32]
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	twarn
	ldur	w0, [x29, #-12]
	bl	close
	adds	w8, w0, #1
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	twarn
	b	.LBB0_12
.LBB0_12:
	b	.LBB0_14
.LBB0_13:
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldur	x9, [x29, #-8]
	mov	w8, #1
	str	w8, [x9, #4]
	ldur	x0, [x29, #-8]
	bl	fileincref
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	subs	x8, x8, x9
	ldur	x9, [x29, #-8]
	str	x8, [x9, #24]
	ldur	x8, [x29, #-8]
	str	xzr, [x8, #8]
	b	.LBB0_14
.LBB0_14:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	filewopen, .Lfunc_end0-filewopen
                                        // -- End function
	.type	Walver,@object                  // @Walver
	.bss
	.globl	Walver
	.p2align	2
Walver:
	.word	0                               // 0x0
	.size	Walver, 4
	.type	O_WRONLY,@object                // @O_WRONLY
	.globl	O_WRONLY
	.p2align	2
O_WRONLY:
	.word	0                               // 0x0
	.size	O_WRONLY, 4
	.type	O_CREAT,@object                 // @O_CREAT
	.globl	O_CREAT
	.p2align	2
O_CREAT:
	.word	0                               // 0x0
	.size	O_CREAT, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"open %s"
	.size	.L.str, 8
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"close"
	.size	.L.str.1, 6
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"falloc %s"
	.size	.L.str.2, 10
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"unlink %s"
	.size	.L.str.3, 10
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"write %s"
	.size	.L.str.4, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym open
	.addrsig_sym twarn
	.addrsig_sym falloc
	.addrsig_sym close
	.addrsig_sym unlink
	.addrsig_sym write
	.addrsig_sym fileincref
	.addrsig_sym Walver
	.addrsig_sym O_WRONLY
	.addrsig_sym O_CREAT
	.addrsig_sym errno