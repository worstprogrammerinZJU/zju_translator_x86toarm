	.text
	.globl	socknext                        // -- Begin function socknext
	.p2align	2
	.type	socknext,@function
socknext:                               // @socknext
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	sub	x3, x29, #28
	mov	w2, #1
	stur	w2, [x29, #-28]
	ldur	w8, [x29, #-20]
	mov	w10, #51712
	movk	w10, #15258, lsl #16
	sdiv	w8, w8, w10
	add	x4, sp, #8
	str	w8, [sp, #8]
	ldur	w8, [x29, #-20]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #12]
	adrp	x8, portfd
	ldr	w0, [x8, :lo12:portfd]
	add	x1, sp, #16
	bl	port_getn
	stur	w0, [x29, #-24]
	ldur	w8, [x29, #-24]
	adds	w8, w8, #1
	b.ne	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	adrp	x8, errno
	ldr	x8, [x8, :lo12:errno]
	adrp	x9, ETIME
	ldr	x9, [x9, :lo12:ETIME]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_2
.LBB0_2:
	adrp	x8, errno
	ldr	x8, [x8, :lo12:errno]
	adrp	x9, EINTR
	ldr	x9, [x9, :lo12:EINTR]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarn
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_4:
	ldur	w8, [x29, #-24]
	cbnz	w8, .LBB0_18
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	ldr	w8, [sp, #16]
	adrp	x9, POLLHUP
	ldr	w9, [x9, :lo12:POLLHUP]
	and	w8, w8, w9
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	mov	w8, #104
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_7:
	ldr	w8, [sp, #16]
	adrp	x9, POLLIN
	ldr	w9, [x9, :lo12:POLLIN]
	and	w8, w8, w9
	cbz	w8, .LBB0_11
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	mov	w1, #114
	bl	sockwant
	adds	w8, w0, #1
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_10:
	mov	w8, #114
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_11:
	ldr	w8, [sp, #16]
	adrp	x9, POLLOUT
	ldr	w9, [x9, :lo12:POLLOUT]
	and	w8, w8, w9
	cbz	w8, .LBB0_15
	b	.LBB0_12
.LBB0_12:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	mov	w1, #119
	bl	sockwant
	adds	w8, w0, #1
	b.ne	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_14:
	mov	w8, #119
	stur	w8, [x29, #-4]
	b	.LBB0_19
.LBB0_15:
	b	.LBB0_16
.LBB0_16:
	b	.LBB0_17
.LBB0_17:
	b	.LBB0_18
.LBB0_18:
	stur	wzr, [x29, #-4]
	b	.LBB0_19
.LBB0_19:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	socknext, .Lfunc_end0-socknext
                                        // -- End function
	.type	portfd,@object                  // @portfd
	.bss
	.globl	portfd
	.p2align	2
portfd:
	.word	0                               // 0x0
	.size	portfd, 4
	.type	errno,@object                   // @errno
	.globl	errno
	.p2align	3
errno:
	.xword	0                               // 0x0
	.size	errno, 8
	.type	ETIME,@object                   // @ETIME
	.globl	ETIME
	.p2align	3
ETIME:
	.xword	0                               // 0x0
	.size	ETIME, 8
	.type	EINTR,@object                   // @EINTR
	.globl	EINTR
	.p2align	3
EINTR:
	.xword	0                               // 0x0
	.size	EINTR, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"port_getn"
	.size	.L.str, 10
	.type	POLLHUP,@object                 // @POLLHUP
	.bss
	.globl	POLLHUP
	.p2align	2
POLLHUP:
	.word	0                               // 0x0
	.size	POLLHUP, 4
	.type	POLLIN,@object                  // @POLLIN
	.globl	POLLIN
	.p2align	2
POLLIN:
	.word	0                               // 0x0
	.size	POLLIN, 4
	.type	POLLOUT,@object                 // @POLLOUT
	.globl	POLLOUT
	.p2align	2
POLLOUT:
	.word	0                               // 0x0
	.size	POLLOUT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym port_getn
	.addrsig_sym twarn
	.addrsig_sym sockwant
	.addrsig_sym portfd
	.addrsig_sym errno
	.addrsig_sym ETIME
	.addrsig_sym EINTR
	.addrsig_sym POLLHUP
	.addrsig_sym POLLIN
	.addrsig_sym POLLOUT