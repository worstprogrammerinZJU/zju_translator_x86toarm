	.text
	.globl	sd_is_fifo                      // -- Begin function sd_is_fifo
	.p2align	2
	.type	sd_is_fifo,@function
sd_is_fifo:                             // @sd_is_fifo
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	w8, [x29, #-8]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, EINVAL
	ldr	w9, [x8, :lo12:EINVAL]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_2:
	sub	x0, x29, #40
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	mov	w1, wzr
	mov	w2, #24
	bl	memset
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-8]
	bl	fstat
	subs	x8, x0, #0
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, errno
	ldr	w9, [x8, :lo12:errno]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_4:
	ldur	w0, [x29, #-24]
	bl	S_ISFIFO
	cbnz	w0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	stur	wzr, [x29, #-4]
	b	.LBB0_16
.LBB0_6:
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB0_15
	b	.LBB0_7
.LBB0_7:
	add	x0, sp, #32
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	mov	w1, wzr
	mov	w2, #24
	bl	memset
	ldr	x1, [sp, #16]                   // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	bl	stat
	subs	x8, x0, #0
	b.ge	.LBB0_12
	b	.LBB0_8
.LBB0_8:
	adrp	x8, errno
	ldr	w8, [x8, :lo12:errno]
	adrp	x9, ENOENT
	ldr	w9, [x9, :lo12:ENOENT]
	subs	w8, w8, w9
	b.eq	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, errno
	ldr	w8, [x8, :lo12:errno]
	adrp	x9, ENOTDIR
	ldr	w9, [x9, :lo12:ENOTDIR]
	subs	w8, w8, w9
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	stur	wzr, [x29, #-4]
	b	.LBB0_16
.LBB0_11:
	adrp	x8, errno
	ldr	w9, [x8, :lo12:errno]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_12:
	ldr	x9, [sp, #32]
	ldur	x10, [x29, #-40]
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.ne	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldr	x8, [sp, #40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	cset	w8, eq
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_14
.LBB0_14:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_15:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_16
.LBB0_16:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	sd_is_fifo, .Lfunc_end0-sd_is_fifo
                                        // -- End function
	.type	EINVAL,@object                  // @EINVAL
	.bss
	.globl	EINVAL
	.p2align	2
EINVAL:
	.word	0                               // 0x0
	.size	EINVAL, 4
	.type	errno,@object                   // @errno
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym memset
	.addrsig_sym fstat
	.addrsig_sym S_ISFIFO
	.addrsig_sym stat
	.addrsig_sym EINVAL
	.addrsig_sym errno
	.addrsig_sym ENOENT
	.addrsig_sym ENOTDIR