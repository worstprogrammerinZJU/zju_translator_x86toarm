	.text
	.p2align	2                               // -- Begin function mustdiallocal
	.type	mustdiallocal,@function
mustdiallocal:                          // @mustdiallocal
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	sub	x8, x29, #16
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	wzr, [x29, #-16]
	ldur	w0, [x29, #-4]
	bl	htons
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	stur	w0, [x29, #-12]
	adrp	x8, AF_INET
	ldr	w8, [x8, :lo12:AF_INET]
	stur	w8, [x29, #-8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	inet_aton
	stur	w0, [x29, #-20]
	ldur	w8, [x29, #-20]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, EINVAL
	ldr	w8, [x8, :lo12:EINVAL]
	adrp	x9, errno
	str	w8, [x9, :lo12:errno]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	twarn
	mov	w0, #1
	bl	exit
	b	.LBB0_2
.LBB0_2:
	adrp	x8, AF_INET
	ldr	w0, [x8, :lo12:AF_INET]
	adrp	x8, SOCK_STREAM
	ldr	w1, [x8, :lo12:SOCK_STREAM]
	mov	w2, wzr
	bl	socket
	str	w0, [sp, #24]
	ldr	w8, [sp, #24]
	adds	w8, w8, #1
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	twarn
	mov	w0, #1
	bl	exit
	b	.LBB0_4
.LBB0_4:
	add	x3, sp, #20
	mov	w8, #1
	str	w8, [sp, #20]
	ldr	w0, [sp, #24]
	adrp	x8, IPPROTO_TCP
	ldr	w1, [x8, :lo12:IPPROTO_TCP]
	adrp	x8, TCP_NODELAY
	ldr	w2, [x8, :lo12:TCP_NODELAY]
	mov	w4, #4
	bl	setsockopt
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	w1, [sp, #24]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	twarn
	mov	w0, #1
	bl	exit
	b	.LBB0_6
.LBB0_6:
	ldr	w0, [sp, #24]
	sub	x1, x29, #16
	mov	w2, #12
	bl	connect
	stur	w0, [x29, #-20]
	ldur	w8, [x29, #-20]
	adds	w8, w8, #1
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	twarn
	mov	w0, #1
	bl	exit
	b	.LBB0_8
.LBB0_8:
	ldr	w0, [sp, #24]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	mustdiallocal, .Lfunc_end0-mustdiallocal
                                        // -- End function
	.type	AF_INET,@object                 // @AF_INET
	.bss
	.globl	AF_INET
	.p2align	2
AF_INET:
	.word	0                               // 0x0
	.size	AF_INET, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"127.0.0.1"
	.size	.L.str, 10
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
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"inet_aton"
	.size	.L.str.1, 10
	.type	SOCK_STREAM,@object             // @SOCK_STREAM
	.bss
	.globl	SOCK_STREAM
	.p2align	2
SOCK_STREAM:
	.word	0                               // 0x0
	.size	SOCK_STREAM, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"socket"
	.size	.L.str.2, 7
	.type	IPPROTO_TCP,@object             // @IPPROTO_TCP
	.bss
	.globl	IPPROTO_TCP
	.p2align	2
IPPROTO_TCP:
	.word	0                               // 0x0
	.size	IPPROTO_TCP, 4
	.type	TCP_NODELAY,@object             // @TCP_NODELAY
	.globl	TCP_NODELAY
	.p2align	2
TCP_NODELAY:
	.word	0                               // 0x0
	.size	TCP_NODELAY, 4
	.type	.L.str.3,@object                // @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"setting TCP_NODELAY on fd %d"
	.size	.L.str.3, 29
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"connect"
	.size	.L.str.4, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mustdiallocal
	.addrsig_sym htons
	.addrsig_sym inet_aton
	.addrsig_sym twarn
	.addrsig_sym exit
	.addrsig_sym socket
	.addrsig_sym setsockopt
	.addrsig_sym connect
	.addrsig_sym AF_INET
	.addrsig_sym EINVAL
	.addrsig_sym errno
	.addrsig_sym SOCK_STREAM
	.addrsig_sym IPPROTO_TCP
	.addrsig_sym TCP_NODELAY