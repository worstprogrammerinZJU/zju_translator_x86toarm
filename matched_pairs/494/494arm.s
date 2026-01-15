	.text
	.p2align	2                               // -- Begin function runbenchn
	.type	runbenchn,@function
runbenchn:                              // @runbenchn
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	bl	tmpfd
	str	w0, [sp, #16]
	bl	tmpfd
	str	w0, [sp, #12]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #12]
	adrp	x8, TmpDirPat
	ldr	w1, [x8, :lo12:TmpDirPat]
	bl	strcpy
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #12]
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
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #0
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, errno
	ldr	w1, [x8, :lo12:errno]
	mov	w0, #1
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	bl	die
	b	.LBB0_17
.LBB0_4:
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB0_16
	b	.LBB0_5
.LBB0_5:
	mov	w1, wzr
	mov	w0, w1
	bl	setpgid
	ldr	w0, [sp, #16]
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
	ldr	w0, [sp, #16]
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
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #12]
	adrp	x9, curdir
	str	w8, [x9, :lo12:curdir]
	bl	ctstarttimer
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldur	w0, [x29, #-12]
	blr	x8
	bl	ctstoptimer
	ldr	w0, [sp, #12]
	adrp	x1, bdur
	add	x1, x1, :lo12:bdur
	mov	w2, #4
	bl	write
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	subs	x8, x8, #4
	b.eq	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	adrp	x8, errno
	ldr	w1, [x8, :lo12:errno]
	mov	w0, #3
	adrp	x2, .L.str.4
	add	x2, x2, :lo12:.L.str.4
	bl	die
	b	.LBB0_13
.LBB0_13:
	ldr	w0, [sp, #12]
	adrp	x1, bbytes
	add	x1, x1, :lo12:bbytes
	mov	w2, #4
	bl	write
                                        // implicit-def: $x8
	mov	w8, w0
	sxtw	x8, w8
	subs	x8, x8, #4
	b.eq	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	adrp	x8, errno
	ldr	w1, [x8, :lo12:errno]
	mov	w0, #3
	adrp	x2, .L.str.4
	add	x2, x2, :lo12:.L.str.4
	bl	die
	b	.LBB0_15
.LBB0_15:
	mov	w0, wzr
	bl	exit
	b	.LBB0_16
.LBB0_16:
	b	.LBB0_17
.LBB0_17:
	ldr	w0, [sp, #8]
	ldr	w1, [sp, #8]
	bl	setpgid
	ldr	w0, [sp, #8]
	ldur	x1, [x29, #-8]
	mov	w2, wzr
	bl	waitpid
	str	w0, [sp, #8]
	ldr	w8, [sp, #8]
	adds	w8, w8, #1
	b.ne	.LBB0_19
	b	.LBB0_18
.LBB0_18:
	adrp	x8, errno
	ldr	w1, [x8, :lo12:errno]
	mov	w0, #3
	adrp	x2, .L.str.5
	add	x2, x2, :lo12:.L.str.5
	bl	die
	b	.LBB0_19
.LBB0_19:
	ldr	w0, [sp, #8]
	adrp	x8, SIGKILL
	ldr	w1, [x8, :lo12:SIGKILL]
	bl	killpg
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #12]
	bl	rmtree
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	cbz	w8, .LBB0_21
	b	.LBB0_20
.LBB0_20:
	mov	w0, #10
	bl	putchar
	ldr	w0, [sp, #16]
	adrp	x8, SEEK_SET
	ldr	w2, [x8, :lo12:SEEK_SET]
	mov	w1, wzr
	bl	lseek
	adrp	x8, stdout
	ldr	w0, [x8, :lo12:stdout]
	ldr	w1, [sp, #16]
	bl	copyfd
	b	.LBB0_25
.LBB0_21:
	ldr	w0, [sp, #12]
	adrp	x8, SEEK_SET
	ldr	w2, [x8, :lo12:SEEK_SET]
	mov	w1, wzr
	bl	lseek
	ldr	w0, [sp, #12]
	ldur	x8, [x29, #-8]
	add	x1, x8, #8
	mov	w2, #4
	bl	read
	str	w0, [sp, #4]
	ldrsw	x8, [sp, #4]
	subs	x8, x8, #4
	b.eq	.LBB0_23
	b	.LBB0_22
.LBB0_22:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	perror
	ldur	x9, [x29, #-8]
	mov	w8, #1
	str	w8, [x9]
	b	.LBB0_23
.LBB0_23:
	ldr	w0, [sp, #12]
	ldur	x8, [x29, #-8]
	add	x1, x8, #4
	mov	w2, #4
	bl	read
	str	w0, [sp, #4]
	ldrsw	x8, [sp, #4]
	subs	x8, x8, #4
	b.eq	.LBB0_25
	b	.LBB0_24
.LBB0_24:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	perror
	ldur	x9, [x29, #-8]
	mov	w8, #1
	str	w8, [x9]
	b	.LBB0_25
.LBB0_25:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	runbenchn, .Lfunc_end0-runbenchn
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
	.type	bdur,@object                    // @bdur
	.globl	bdur
	.p2align	2
bdur:
	.word	0                               // 0x0
	.size	bdur, 4
	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"write"
	.size	.L.str.4, 6
	.type	bbytes,@object                  // @bbytes
	.bss
	.globl	bbytes
	.p2align	2
bbytes:
	.word	0                               // 0x0
	.size	bbytes, 4
	.type	.L.str.5,@object                // @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"wait"
	.size	.L.str.5, 5
	.type	SIGKILL,@object                 // @SIGKILL
	.bss
	.globl	SIGKILL
	.p2align	2
SIGKILL:
	.word	0                               // 0x0
	.size	SIGKILL, 4
	.type	SEEK_SET,@object                // @SEEK_SET
	.globl	SEEK_SET
	.p2align	2
SEEK_SET:
	.word	0                               // 0x0
	.size	SEEK_SET, 4
	.type	stdout,@object                  // @stdout
	.globl	stdout
	.p2align	2
stdout:
	.word	0                               // 0x0
	.size	stdout, 4
	.type	.L.str.6,@object                // @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"read"
	.size	.L.str.6, 5
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym runbenchn
	.addrsig_sym tmpfd
	.addrsig_sym strcpy
	.addrsig_sym mkdtemp
	.addrsig_sym die
	.addrsig_sym fflush
	.addrsig_sym fork
	.addrsig_sym setpgid
	.addrsig_sym dup2
	.addrsig_sym close
	.addrsig_sym ctstarttimer
	.addrsig_sym ctstoptimer
	.addrsig_sym write
	.addrsig_sym exit
	.addrsig_sym waitpid
	.addrsig_sym killpg
	.addrsig_sym rmtree
	.addrsig_sym putchar
	.addrsig_sym lseek
	.addrsig_sym copyfd
	.addrsig_sym read
	.addrsig_sym perror
	.addrsig_sym TmpDirPat
	.addrsig_sym errno
	.addrsig_sym curdir
	.addrsig_sym bdur
	.addrsig_sym bbytes
	.addrsig_sym SIGKILL
	.addrsig_sym SEEK_SET
	.addrsig_sym stdout