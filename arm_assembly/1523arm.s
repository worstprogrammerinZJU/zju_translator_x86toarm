	.text
	.globl	socknext                        // -- Begin function socknext
	.p2align	2
	.type	socknext,@function
socknext:                               // @socknext
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	add	x1, sp, #8
	str	xzr, [sp, #8]
	str	xzr, [sp, #16]
	adrp	x8, epfd
	ldr	w0, [x8, :lo12:epfd]
	ldur	w8, [x29, #-20]
	mov	w9, #16960
	movk	w9, #15, lsl #16
	sdiv	w3, w8, w9
	mov	w2, #1
	bl	epoll_wait
	str	w0, [sp, #24]
	ldr	w8, [sp, #24]
	adds	w8, w8, #1
	b.ne	.LBB0_3
	b	.LBB0_1
.LBB0_1:
	adrp	x8, errno
	ldr	x8, [x8, :lo12:errno]
	adrp	x9, EINTR
	ldr	x9, [x9, :lo12:EINTR]
	subs	x8, x8, x9
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarn
	mov	w0, #1
	bl	exit
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	b.le	.LBB0_13
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	ldr	w8, [sp, #8]
	adrp	x9, EPOLLHUP
	ldr	w9, [x9, :lo12:EPOLLHUP]
	adrp	x10, EPOLLRDHUP
	ldr	w10, [x10, :lo12:EPOLLRDHUP]
	orr	w9, w9, w10
	and	w8, w8, w9
	cbz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	mov	w8, #104
	stur	w8, [x29, #-4]
	b	.LBB0_14
.LBB0_6:
	ldr	w8, [sp, #8]
	adrp	x9, EPOLLIN
	ldr	w9, [x9, :lo12:EPOLLIN]
	and	w8, w8, w9
	cbz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	mov	w8, #114
	stur	w8, [x29, #-4]
	b	.LBB0_14
.LBB0_8:
	ldr	w8, [sp, #8]
	adrp	x9, EPOLLOUT
	ldr	w9, [x9, :lo12:EPOLLOUT]
	and	w8, w8, w9
	cbz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	mov	w8, #119
	stur	w8, [x29, #-4]
	b	.LBB0_14
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	b	.LBB0_13
.LBB0_13:
	stur	wzr, [x29, #-4]
	b	.LBB0_14
.LBB0_14:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	socknext, .Lfunc_end0-socknext
                                        // -- End function
	.type	epfd,@object                    // @epfd
	.bss
	.globl	epfd
	.p2align	2
epfd:
	.word	0                               // 0x0
	.size	epfd, 4
	.type	errno,@object                   // @errno
	.globl	errno
	.p2align	3
errno:
	.xword	0                               // 0x0
	.size	errno, 8
	.type	EINTR,@object                   // @EINTR
	.globl	EINTR
	.p2align	3
EINTR:
	.xword	0                               // 0x0
	.size	EINTR, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"epoll_wait"
	.size	.L.str, 11
	.type	EPOLLHUP,@object                // @EPOLLHUP
	.bss
	.globl	EPOLLHUP
	.p2align	2
EPOLLHUP:
	.word	0                               // 0x0
	.size	EPOLLHUP, 4
	.type	EPOLLRDHUP,@object              // @EPOLLRDHUP
	.globl	EPOLLRDHUP
	.p2align	2
EPOLLRDHUP:
	.word	0                               // 0x0
	.size	EPOLLRDHUP, 4
	.type	EPOLLIN,@object                 // @EPOLLIN
	.globl	EPOLLIN
	.p2align	2
EPOLLIN:
	.word	0                               // 0x0
	.size	EPOLLIN, 4
	.type	EPOLLOUT,@object                // @EPOLLOUT
	.globl	EPOLLOUT
	.p2align	2
EPOLLOUT:
	.word	0                               // 0x0
	.size	EPOLLOUT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym epoll_wait
	.addrsig_sym twarn
	.addrsig_sym exit
	.addrsig_sym epfd
	.addrsig_sym errno
	.addrsig_sym EINTR
	.addrsig_sym EPOLLHUP
	.addrsig_sym EPOLLRDHUP
	.addrsig_sym EPOLLIN
	.addrsig_sym EPOLLOUT