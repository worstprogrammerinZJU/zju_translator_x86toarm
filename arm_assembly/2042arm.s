	.text
	.globl	h_accept                        // -- Begin function h_accept
	.p2align	2
	.type	h_accept,@function
h_accept:                               // @h_accept
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-4]
	sturh	w1, [x29, #-6]
	stur	x2, [x29, #-16]
	ldurh	w0, [x29, #-6]
	bl	UNUSED_PARAMETER
	add	x2, sp, #24
	mov	w8, #4
	str	w8, [sp, #24]
	ldur	w0, [x29, #-4]
	sub	x1, x29, #20
	bl	accept
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	adds	w8, w8, #1
	b.ne	.LBB0_5
	b	.LBB0_1
.LBB0_1:
	adrp	x8, errno
	ldr	x8, [x8, :lo12:errno]
	adrp	x9, EAGAIN
	ldr	x9, [x9, :lo12:EAGAIN]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_2
.LBB0_2:
	adrp	x8, errno
	ldr	x8, [x8, :lo12:errno]
	adrp	x9, EWOULDBLOCK
	ldr	x9, [x9, :lo12:EWOULDBLOCK]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	twarn
	b	.LBB0_4
.LBB0_4:
	bl	epollq_apply
	b	.LBB0_24
.LBB0_5:
	adrp	x8, verbose
	ldr	x8, [x8, :lo12:verbose]
	cbz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	w1, [sp, #20]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	b	.LBB0_7
.LBB0_7:
	ldr	w0, [sp, #20]
	adrp	x8, F_GETFL
	ldr	w1, [x8, :lo12:F_GETFL]
	mov	w2, wzr
	bl	fcntl
	str	w0, [sp, #16]
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	b.ge	.LBB0_11
	b	.LBB0_8
.LBB0_8:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	twarn
	ldr	w0, [sp, #20]
	bl	close
	adrp	x8, verbose
	ldr	x8, [x8, :lo12:verbose]
	cbz	x8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	w1, [sp, #20]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	printf
	b	.LBB0_10
.LBB0_10:
	bl	epollq_apply
	b	.LBB0_24
.LBB0_11:
	ldr	w0, [sp, #20]
	adrp	x8, F_SETFL
	ldr	w1, [x8, :lo12:F_SETFL]
	ldr	w8, [sp, #16]
	adrp	x9, O_NONBLOCK
	ldr	w9, [x9, :lo12:O_NONBLOCK]
	orr	w2, w8, w9
	bl	fcntl
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	b.ge	.LBB0_15
	b	.LBB0_12
.LBB0_12:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	twarn
	ldr	w0, [sp, #20]
	bl	close
	adrp	x8, verbose
	ldr	x8, [x8, :lo12:verbose]
	cbz	x8, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldr	w1, [sp, #20]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	printf
	b	.LBB0_14
.LBB0_14:
	bl	epollq_apply
	b	.LBB0_24
.LBB0_15:
	ldr	w0, [sp, #20]
	adrp	x8, STATE_WANT_COMMAND
	ldr	w1, [x8, :lo12:STATE_WANT_COMMAND]
	adrp	x8, default_tube
	ldr	w2, [x8, :lo12:default_tube]
	ldr	w3, [x8, :lo12:default_tube]
	bl	make_conn
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_19
	b	.LBB0_16
.LBB0_16:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	bl	twarnx
	ldr	w0, [sp, #20]
	bl	close
	adrp	x8, verbose
	ldr	x8, [x8, :lo12:verbose]
	cbz	x8, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldr	w1, [sp, #20]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	printf
	b	.LBB0_18
.LBB0_18:
	bl	epollq_apply
	b	.LBB0_24
.LBB0_19:
	ldur	x8, [x29, #-16]
	ldr	x9, [sp]
	str	x8, [x9, #24]
	ldr	x8, [sp]
	ldr	x9, [sp]
	str	x8, [x9, #16]
	adrp	x8, prothandle
	ldr	x8, [x8, :lo12:prothandle]
	ldr	x9, [sp]
	str	x8, [x9, #8]
	ldr	w8, [sp, #20]
	ldr	x9, [sp]
	str	w8, [x9]
	ldr	x0, [sp]
	mov	w1, #114
	bl	sockwant
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	adds	w8, w8, #1
	b.ne	.LBB0_23
	b	.LBB0_20
.LBB0_20:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	bl	twarn
	ldr	w0, [sp, #20]
	bl	close
	adrp	x8, verbose
	ldr	x8, [x8, :lo12:verbose]
	cbz	x8, .LBB0_22
	b	.LBB0_21
.LBB0_21:
	ldr	w1, [sp, #20]
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	printf
	b	.LBB0_22
.LBB0_22:
	b	.LBB0_23
.LBB0_23:
	bl	epollq_apply
	b	.LBB0_24
.LBB0_24:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	h_accept, .Lfunc_end0-h_accept
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
	.type	EWOULDBLOCK,@object             // @EWOULDBLOCK
	.globl	EWOULDBLOCK
	.p2align	3
EWOULDBLOCK:
	.xword	0                               // 0x0
	.size	EWOULDBLOCK, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"accept()"
	.size	.L.str, 9
	.type	verbose,@object                 // @verbose
	.bss
	.globl	verbose
	.p2align	3
verbose:
	.xword	0                               // 0x0
	.size	verbose, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"accept %d\n"
	.size	.L.str.1, 11
	.type	F_GETFL,@object                 // @F_GETFL
	.bss
	.globl	F_GETFL
	.p2align	2
F_GETFL:
	.word	0                               // 0x0
	.size	F_GETFL, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"getting flags"
	.size	.L.str.2, 14
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"close %d\n"
	.size	.L.str.3, 10
	.type	F_SETFL,@object                 // @F_SETFL
	.bss
	.globl	F_SETFL
	.p2align	2
F_SETFL:
	.word	0                               // 0x0
	.size	F_SETFL, 4
	.type	O_NONBLOCK,@object              // @O_NONBLOCK
	.globl	O_NONBLOCK
	.p2align	2
O_NONBLOCK:
	.word	0                               // 0x0
	.size	O_NONBLOCK, 4
	.type	.L.str.4,@object                // @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"setting O_NONBLOCK"
	.size	.L.str.4, 19
	.type	STATE_WANT_COMMAND,@object      // @STATE_WANT_COMMAND
	.bss
	.globl	STATE_WANT_COMMAND
	.p2align	2
STATE_WANT_COMMAND:
	.word	0                               // 0x0
	.size	STATE_WANT_COMMAND, 4
	.type	default_tube,@object            // @default_tube
	.globl	default_tube
	.p2align	2
default_tube:
	.word	0                               // 0x0
	.size	default_tube, 4
	.type	.L.str.5,@object                // @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"make_conn() failed"
	.size	.L.str.5, 19
	.type	prothandle,@object              // @prothandle
	.bss
	.globl	prothandle
	.p2align	3
prothandle:
	.xword	0                               // 0x0
	.size	prothandle, 8
	.type	.L.str.6,@object                // @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"sockwant"
	.size	.L.str.6, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym UNUSED_PARAMETER
	.addrsig_sym accept
	.addrsig_sym twarn
	.addrsig_sym epollq_apply
	.addrsig_sym printf
	.addrsig_sym fcntl
	.addrsig_sym close
	.addrsig_sym make_conn
	.addrsig_sym twarnx
	.addrsig_sym sockwant
	.addrsig_sym errno
	.addrsig_sym EAGAIN
	.addrsig_sym EWOULDBLOCK
	.addrsig_sym verbose
	.addrsig_sym F_GETFL
	.addrsig_sym F_SETFL
	.addrsig_sym O_NONBLOCK
	.addrsig_sym STATE_WANT_COMMAND
	.addrsig_sym default_tube
	.addrsig_sym prothandle