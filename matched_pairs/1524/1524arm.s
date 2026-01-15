	.text
	.globl	sockwant                        // -- Begin function sockwant
	.p2align	2
	.type	sockwant,@function
sockwant:                               // @sockwant
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-20]
	cbnz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	stur	wzr, [x29, #-4]
	b	.LBB0_16
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_6
	b	.LBB0_4
.LBB0_4:
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x9, [x29, #-16]
	mov	w8, #1
	str	w8, [x9]
	adrp	x8, EPOLL_CTL_ADD
	ldr	w8, [x8, :lo12:EPOLL_CTL_ADD]
	str	w8, [sp, #24]
	b	.LBB0_10
.LBB0_6:
	ldur	w8, [x29, #-20]
	cbnz	w8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, EPOLL_CTL_DEL
	ldr	w8, [x8, :lo12:EPOLL_CTL_DEL]
	str	w8, [sp, #24]
	b	.LBB0_9
.LBB0_8:
	adrp	x8, EPOLL_CTL_MOD
	ldr	w8, [x8, :lo12:EPOLL_CTL_MOD]
	str	w8, [sp, #24]
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	str	xzr, [sp, #8]
	str	xzr, [sp, #16]
	ldur	w8, [x29, #-20]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	subs	w8, w8, #114
	b.eq	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #119
	b.eq	.LBB0_14
	b	.LBB0_15
.LBB0_13:
	adrp	x8, EPOLLIN
	ldr	w8, [x8, :lo12:EPOLLIN]
	str	w8, [sp, #8]
	b	.LBB0_15
.LBB0_14:
	adrp	x8, EPOLLOUT
	ldr	w8, [x8, :lo12:EPOLLOUT]
	str	w8, [sp, #8]
	b	.LBB0_15
.LBB0_15:
	adrp	x8, EPOLLRDHUP
	ldr	w8, [x8, :lo12:EPOLLRDHUP]
	adrp	x9, EPOLLPRI
	ldr	w9, [x9, :lo12:EPOLLPRI]
	orr	w9, w8, w9
	add	x3, sp, #8
	ldr	w8, [sp, #8]
	orr	w8, w8, w9
	str	w8, [sp, #8]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	adrp	x8, epfd
	ldr	w0, [x8, :lo12:epfd]
	ldr	w1, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #4]
	bl	epoll_ctl
	stur	w0, [x29, #-4]
	b	.LBB0_16
.LBB0_16:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	sockwant, .Lfunc_end0-sockwant
                                        // -- End function
	.type	EPOLL_CTL_ADD,@object           // @EPOLL_CTL_ADD
	.bss
	.globl	EPOLL_CTL_ADD
	.p2align	2
EPOLL_CTL_ADD:
	.word	0                               // 0x0
	.size	EPOLL_CTL_ADD, 4
	.type	EPOLL_CTL_DEL,@object           // @EPOLL_CTL_DEL
	.globl	EPOLL_CTL_DEL
	.p2align	2
EPOLL_CTL_DEL:
	.word	0                               // 0x0
	.size	EPOLL_CTL_DEL, 4
	.type	EPOLL_CTL_MOD,@object           // @EPOLL_CTL_MOD
	.globl	EPOLL_CTL_MOD
	.p2align	2
EPOLL_CTL_MOD:
	.word	0                               // 0x0
	.size	EPOLL_CTL_MOD, 4
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
	.type	EPOLLRDHUP,@object              // @EPOLLRDHUP
	.globl	EPOLLRDHUP
	.p2align	2
EPOLLRDHUP:
	.word	0                               // 0x0
	.size	EPOLLRDHUP, 4
	.type	EPOLLPRI,@object                // @EPOLLPRI
	.globl	EPOLLPRI
	.p2align	2
EPOLLPRI:
	.word	0                               // 0x0
	.size	EPOLLPRI, 4
	.type	epfd,@object                    // @epfd
	.globl	epfd
	.p2align	2
epfd:
	.word	0                               // 0x0
	.size	epfd, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym epoll_ctl
	.addrsig_sym EPOLL_CTL_ADD
	.addrsig_sym EPOLL_CTL_DEL
	.addrsig_sym EPOLL_CTL_MOD
	.addrsig_sym EPOLLIN
	.addrsig_sym EPOLLOUT
	.addrsig_sym EPOLLRDHUP
	.addrsig_sym EPOLLPRI
	.addrsig_sym epfd