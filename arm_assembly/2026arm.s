	.text
	.p2align	2                               // -- Begin function check_err
	.type	check_err,@function
check_err:                              // @check_err
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	adrp	x8, errno
	ldr	x8, [x8, :lo12:errno]
	adrp	x9, EAGAIN
	ldr	x9, [x9, :lo12:EAGAIN]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_7
.LBB0_2:
	adrp	x8, errno
	ldr	x8, [x8, :lo12:errno]
	adrp	x9, EINTR
	ldr	x9, [x9, :lo12:EINTR]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	b	.LBB0_7
.LBB0_4:
	adrp	x8, errno
	ldr	x8, [x8, :lo12:errno]
	adrp	x9, EWOULDBLOCK
	ldr	x9, [x9, :lo12:EWOULDBLOCK]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_7
.LBB0_6:
	ldr	x1, [sp]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarn
	adrp	x8, STATE_CLOSE
	ldr	w8, [x8, :lo12:STATE_CLOSE]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	b	.LBB0_7
.LBB0_7:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	check_err, .Lfunc_end0-check_err
                                        // -- End function
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	3
errno:
	.xword	0                               // 0x0
	.size	errno, 8
	.type	EAGAIN,@object                  // @EAGAIN
	.globl	EAGAIN
	.p2align	3
EAGAIN:
	.xword	0                               // 0x0
	.size	EAGAIN, 8
	.type	EINTR,@object                   // @EINTR
	.globl	EINTR
	.p2align	3
EINTR:
	.xword	0                               // 0x0
	.size	EINTR, 8
	.type	EWOULDBLOCK,@object             // @EWOULDBLOCK
	.globl	EWOULDBLOCK
	.p2align	3
EWOULDBLOCK:
	.xword	0                               // 0x0
	.size	EWOULDBLOCK, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3
	.type	STATE_CLOSE,@object             // @STATE_CLOSE
	.bss
	.globl	STATE_CLOSE
	.p2align	2
STATE_CLOSE:
	.word	0                               // 0x0
	.size	STATE_CLOSE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym check_err
	.addrsig_sym twarn
	.addrsig_sym errno
	.addrsig_sym EAGAIN
	.addrsig_sym EINTR
	.addrsig_sym EWOULDBLOCK
	.addrsig_sym STATE_CLOSE