	.text
	.p2align	2                               // -- Begin function start
	.type	start,@function
start:                                  // @start
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	bl	tmpfd
	ldr	x8, [sp, #8]
	str	w0, [x8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #24]
	adrp	x8, TmpDirPat
	ldr	w1, [x8, :lo12:TmpDirPat]
	bl	strcpy
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #24]
	bl	mkdtemp
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, errno
	ldr	w1, [x8, :lo12:errno]
	mov	w0, #1
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	die
	b	.LBB0_2
.LBB0_2:
	mov	x0, xzr
	bl	fflush
	bl	fork
	ldr	x8, [sp, #8]
	str	x0, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	subs	x8, x8, #0
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, errno
	ldr	w1, [x8, :lo12:errno]
	mov	w0, #1
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	die
	b	.LBB0_15
.LBB0_4:
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_14
	b	.LBB0_5
.LBB0_5:
	mov	x1, xzr
	mov	x0, x1
	bl	setpgid
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	mov	w1, #1
	bl	dup2
	adds	w8, w0, #1
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x8, errno
	ldr	w1, [x8, :lo12:errno]
	mov	w0, #3
	adrp	x2, .L.str.2
	add	x2, x2, :lo12:.L.str.2
	bl	die
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	close
	adds	w8, w0, #1
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	adrp	x8, errno
	ldr	w1, [x8, :lo12:errno]
	mov	w0, #3
	adrp	x2, .L.str.3
	add	x2, x2, :lo12:.L.str.3
	bl	die
	b	.LBB0_9
.LBB0_9:
	mov	w0, #1
	mov	w1, #2
	bl	dup2
	adds	w8, w0, #1
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	adrp	x8, errno
	ldr	w1, [x8, :lo12:errno]
	mov	w0, #3
	adrp	x2, .L.str.2
	add	x2, x2, :lo12:.L.str.2
	bl	die
	b	.LBB0_11
.LBB0_11:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #24]
	adrp	x9, curdir
	str	w8, [x9, :lo12:curdir]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	blr	x8
	adrp	x8, fail
	ldr	x8, [x8, :lo12:fail]
	cbz	x8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	bl	ctfailnow
	b	.LBB0_13
.LBB0_13:
	mov	w0, wzr
	bl	exit
	b	.LBB0_14
.LBB0_14:
	b	.LBB0_15
.LBB0_15:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	x1, [x8, #8]
	bl	setpgid
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	start, .Lfunc_end0-start
                                        // -- End function
	.type	TmpDirPat,@object               // @TmpDirPat
	.bss
	.globl	TmpDirPat
	.p2align	2
TmpDirPat:
	.word	0                               // 0x0
	.size	TmpDirPat, 4
	.type	errno,@object                   // @errno
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"mkdtemp"
	.size	.L.str, 8
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"fork"
	.size	.L.str.1, 5
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"dup2"
	.size	.L.str.2, 5
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"fclose"
	.size	.L.str.3, 7
	.type	curdir,@object                  // @curdir
	.bss
	.globl	curdir
	.p2align	2
curdir:
	.word	0                               // 0x0
	.size	curdir, 4
	.type	fail,@object                    // @fail
	.globl	fail
	.p2align	3
fail:
	.xword	0                               // 0x0
	.size	fail, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym start
	.addrsig_sym tmpfd
	.addrsig_sym strcpy
	.addrsig_sym mkdtemp
	.addrsig_sym die
	.addrsig_sym fflush
	.addrsig_sym fork
	.addrsig_sym setpgid
	.addrsig_sym dup2
	.addrsig_sym close
	.addrsig_sym ctfailnow
	.addrsig_sym exit
	.addrsig_sym TmpDirPat
	.addrsig_sym errno
	.addrsig_sym curdir
	.addrsig_sym fail