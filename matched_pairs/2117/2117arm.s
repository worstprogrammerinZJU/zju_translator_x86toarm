	.text
	.p2align	2                               // -- Begin function sd_is_socket_internal
	.type	sd_is_socket_internal,@function
sd_is_socket_internal:                  // @sd_is_socket_internal
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	ldur	w8, [x29, #-8]
	tbnz	w8, #31, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	b.ge	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x8, EINVAL
	ldr	w9, [x8, :lo12:EINVAL]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_24
.LBB0_3:
	ldur	w0, [x29, #-8]
	sub	x1, x29, #20
	bl	fstat
	subs	x8, x0, #0
	b.ge	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x8, errno
	ldr	w9, [x8, :lo12:errno]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_24
.LBB0_5:
	ldur	w0, [x29, #-20]
	bl	S_ISSOCK
	cbnz	w0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	stur	wzr, [x29, #-4]
	b	.LBB0_24
.LBB0_7:
	ldur	w8, [x29, #-12]
	cbz	w8, .LBB0_15
	b	.LBB0_8
.LBB0_8:
	add	x3, sp, #24
	str	wzr, [sp, #24]
	add	x4, sp, #20
	mov	w8, #4
	str	w8, [sp, #20]
	ldur	w0, [x29, #-8]
	adrp	x8, SOL_SOCKET
	ldr	w1, [x8, :lo12:SOL_SOCKET]
	adrp	x8, SO_TYPE
	ldr	w2, [x8, :lo12:SO_TYPE]
	bl	getsockopt
	subs	x8, x0, #0
	b.ge	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, errno
	ldr	w9, [x8, :lo12:errno]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_24
.LBB0_10:
	ldrsw	x8, [sp, #20]
	subs	x8, x8, #4
	b.eq	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x8, EINVAL
	ldr	w9, [x8, :lo12:EINVAL]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_24
.LBB0_12:
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.eq	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	stur	wzr, [x29, #-4]
	b	.LBB0_24
.LBB0_14:
	b	.LBB0_15
.LBB0_15:
	ldur	w8, [x29, #-16]
	tbnz	w8, #31, .LBB0_23
	b	.LBB0_16
.LBB0_16:
	add	x3, sp, #16
	str	wzr, [sp, #16]
	add	x4, sp, #12
	mov	w8, #4
	str	w8, [sp, #12]
	ldur	w0, [x29, #-8]
	adrp	x8, SOL_SOCKET
	ldr	w1, [x8, :lo12:SOL_SOCKET]
	adrp	x8, SO_ACCEPTCONN
	ldr	w2, [x8, :lo12:SO_ACCEPTCONN]
	bl	getsockopt
	subs	x8, x0, #0
	b.ge	.LBB0_18
	b	.LBB0_17
.LBB0_17:
	adrp	x8, errno
	ldr	w9, [x8, :lo12:errno]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_24
.LBB0_18:
	ldrsw	x8, [sp, #12]
	subs	x8, x8, #4
	b.eq	.LBB0_20
	b	.LBB0_19
.LBB0_19:
	adrp	x8, EINVAL
	ldr	w9, [x8, :lo12:EINVAL]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_24
.LBB0_20:
	ldr	w8, [sp, #16]
	subs	w8, w8, #0
	cset	w8, eq
	and	w8, w8, #0x1
	ldur	w9, [x29, #-16]
	subs	w9, w9, #0
	cset	w9, eq
	and	w9, w9, #0x1
	subs	w8, w8, w9
	b.eq	.LBB0_22
	b	.LBB0_21
.LBB0_21:
	stur	wzr, [x29, #-4]
	b	.LBB0_24
.LBB0_22:
	b	.LBB0_23
.LBB0_23:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_24
.LBB0_24:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	sd_is_socket_internal, .Lfunc_end0-sd_is_socket_internal
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
	.type	SOL_SOCKET,@object              // @SOL_SOCKET
	.globl	SOL_SOCKET
	.p2align	2
SOL_SOCKET:
	.word	0                               // 0x0
	.size	SOL_SOCKET, 4
	.type	SO_TYPE,@object                 // @SO_TYPE
	.globl	SO_TYPE
	.p2align	2
SO_TYPE:
	.word	0                               // 0x0
	.size	SO_TYPE, 4
	.type	SO_ACCEPTCONN,@object           // @SO_ACCEPTCONN
	.globl	SO_ACCEPTCONN
	.p2align	2
SO_ACCEPTCONN:
	.word	0                               // 0x0
	.size	SO_ACCEPTCONN, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sd_is_socket_internal
	.addrsig_sym fstat
	.addrsig_sym S_ISSOCK
	.addrsig_sym getsockopt
	.addrsig_sym EINVAL
	.addrsig_sym errno
	.addrsig_sym SOL_SOCKET
	.addrsig_sym SO_TYPE
	.addrsig_sym SO_ACCEPTCONN