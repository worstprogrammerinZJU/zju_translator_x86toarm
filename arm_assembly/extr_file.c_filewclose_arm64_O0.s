	.text
	.globl	filewclose                      // -- Begin function filewclose
	.p2align	2
	.type	filewclose,@function
filewclose:                             // @filewclose
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_11
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_11
.LBB0_4:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_8
	b	.LBB0_5
.LBB0_5:
	adrp	x8, errno
	str	xzr, [x8, :lo12:errno]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #24]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #16]
	subs	x1, x8, x9
	bl	ftruncate
	cbz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarn
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	bl	close
	adds	w8, w0, #1
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	twarn
	b	.LBB0_10
.LBB0_10:
	ldr	x8, [sp, #8]
	str	xzr, [x8]
	ldr	x0, [sp, #8]
	bl	filedecref
	b	.LBB0_11
.LBB0_11:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	filewclose, .Lfunc_end0-filewclose
                                        // -- End function
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	3
errno:
	.xword	0                               // 0x0
	.size	errno, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"ftruncate"
	.size	.L.str, 10
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"close"
	.size	.L.str.1, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ftruncate
	.addrsig_sym twarn
	.addrsig_sym close
	.addrsig_sym filedecref
	.addrsig_sym errno