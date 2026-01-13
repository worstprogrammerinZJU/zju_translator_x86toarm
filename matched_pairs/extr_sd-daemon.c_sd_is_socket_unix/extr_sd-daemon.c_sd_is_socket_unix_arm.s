	.text
	.globl	sd_is_socket_unix               // -- Begin function sd_is_socket_unix
	.p2align	2
	.type	sd_is_socket_unix,@function
sd_is_socket_unix:                      // @sd_is_socket_unix
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	x3, [x29, #-24]
	stur	x4, [x29, #-32]
	ldur	w0, [x29, #-8]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	bl	sd_is_socket_internal
	str	w0, [sp, #32]
	subs	w8, w0, #0
	b.gt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #32]
	stur	w8, [x29, #-4]
	b	.LBB0_21
.LBB0_2:
	add	x0, sp, #40
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	mov	w1, wzr
	mov	w2, #8
	str	w2, [sp, #20]                   // 4-byte Folded Spill
	bl	memset
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	add	x2, sp, #36
	str	w8, [sp, #36]
	ldur	w0, [x29, #-8]
	bl	getsockname
	subs	x8, x0, #0
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, errno
	ldr	w9, [x8, :lo12:errno]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_21
.LBB0_4:
	ldrsw	x8, [sp, #36]
	subs	x8, x8, #4
	b.hs	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x8, EINVAL
	ldr	w9, [x8, :lo12:EINVAL]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_21
.LBB0_6:
	ldr	x8, [sp, #40]
	adrp	x9, AF_UNIX
	ldr	x9, [x9, :lo12:AF_UNIX]
	subs	x8, x8, x9
	b.eq	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	stur	wzr, [x29, #-4]
	b	.LBB0_21
.LBB0_8:
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_20
	b	.LBB0_9
.LBB0_9:
	ldur	x8, [x29, #-32]
	subs	x8, x8, #0
	b.hi	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x0, [x29, #-24]
	bl	strlen
	stur	x0, [x29, #-32]
	b	.LBB0_11
.LBB0_11:
	ldur	x8, [x29, #-32]
	subs	x8, x8, #0
	b.hi	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldrsw	x8, [sp, #36]
	subs	x8, x8, #4
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_21
.LBB0_13:
	ldur	x8, [x29, #-24]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_17
	b	.LBB0_14
.LBB0_14:
	ldrsw	x9, [sp, #36]
	ldur	x8, [x29, #-32]
	add	x8, x8, #4
	add	x10, x8, #1
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b.lo	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldur	x0, [x29, #-24]
	ldr	w1, [sp, #40]
	ldur	x8, [x29, #-32]
	add	x2, x8, #1
	bl	memcmp
	subs	x8, x0, #0
	cset	w8, eq
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_16
.LBB0_16:
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_21
.LBB0_17:
	ldrsw	x9, [sp, #36]
	ldur	x8, [x29, #-32]
	add	x10, x8, #4
	mov	w8, #0
	subs	x9, x9, x10
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b.ne	.LBB0_19
	b	.LBB0_18
.LBB0_18:
	ldur	x0, [x29, #-24]
	ldr	w1, [sp, #40]
	ldur	x2, [x29, #-32]
	bl	memcmp
	subs	x8, x0, #0
	cset	w8, eq
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_19
.LBB0_19:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_21
.LBB0_20:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_21
.LBB0_21:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	sd_is_socket_unix, .Lfunc_end0-sd_is_socket_unix
                                        // -- End function
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.type	EINVAL,@object                  // @EINVAL
	.globl	EINVAL
	.p2align	2
EINVAL:
	.word	0                               // 0x0
	.size	EINVAL, 4
	.type	AF_UNIX,@object                 // @AF_UNIX
	.globl	AF_UNIX
	.p2align	3
AF_UNIX:
	.xword	0                               // 0x0
	.size	AF_UNIX, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sd_is_socket_internal
	.addrsig_sym memset
	.addrsig_sym getsockname
	.addrsig_sym strlen
	.addrsig_sym memcmp
	.addrsig_sym errno
	.addrsig_sym EINVAL
	.addrsig_sym AF_UNIX