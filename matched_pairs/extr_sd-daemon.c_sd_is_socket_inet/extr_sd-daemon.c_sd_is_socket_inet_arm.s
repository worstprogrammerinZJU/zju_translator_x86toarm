	.text
	.globl	sd_is_socket_inet               // -- Begin function sd_is_socket_inet
	.p2align	2
	.type	sd_is_socket_inet,@function
sd_is_socket_inet:                      // @sd_is_socket_inet
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	str	x4, [sp, #32]
	ldur	w8, [x29, #-12]
	cbz	w8, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-12]
	adrp	x9, AF_INET
	ldr	w9, [x9, :lo12:AF_INET]
	subs	w8, w8, w9
	b.eq	.LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-12]
	adrp	x9, AF_INET6
	ldr	w9, [x9, :lo12:AF_INET6]
	subs	w8, w8, w9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, EINVAL
	ldr	w9, [x8, :lo12:EINVAL]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_26
.LBB0_4:
	ldur	w0, [x29, #-8]
	ldur	w1, [x29, #-16]
	ldur	w2, [x29, #-20]
	bl	sd_is_socket_internal
	str	w0, [sp, #16]
	subs	w8, w0, #0
	b.gt	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #16]
	stur	w8, [x29, #-4]
	b	.LBB0_26
.LBB0_6:
	add	x0, sp, #24
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	mov	w1, wzr
	mov	w2, #8
	str	w2, [sp, #4]                    // 4-byte Folded Spill
	bl	memset
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	add	x2, sp, #20
	str	w8, [sp, #20]
	ldur	w0, [x29, #-8]
	bl	getsockname
	subs	x8, x0, #0
	b.ge	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, errno
	ldr	w9, [x8, :lo12:errno]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_26
.LBB0_8:
	ldrsw	x8, [sp, #20]
	subs	x8, x8, #4
	b.hs	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, EINVAL
	ldr	w9, [x8, :lo12:EINVAL]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_26
.LBB0_10:
	ldr	w8, [sp, #24]
	adrp	x9, AF_INET
	ldr	w9, [x9, :lo12:AF_INET]
	subs	w8, w8, w9
	b.eq	.LBB0_13
	b	.LBB0_11
.LBB0_11:
	ldr	w8, [sp, #24]
	adrp	x9, AF_INET6
	ldr	w9, [x9, :lo12:AF_INET6]
	subs	w8, w8, w9
	b.eq	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	stur	wzr, [x29, #-4]
	b	.LBB0_26
.LBB0_13:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	b.le	.LBB0_17
	b	.LBB0_14
.LBB0_14:
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.eq	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	stur	wzr, [x29, #-4]
	b	.LBB0_26
.LBB0_16:
	b	.LBB0_17
.LBB0_17:
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	b.le	.LBB0_25
	b	.LBB0_18
.LBB0_18:
	ldr	w8, [sp, #24]
	adrp	x9, AF_INET
	ldr	w9, [x9, :lo12:AF_INET]
	subs	w8, w8, w9
	b.ne	.LBB0_22
	b	.LBB0_19
.LBB0_19:
	ldrsw	x8, [sp, #20]
	subs	x8, x8, #4
	b.hs	.LBB0_21
	b	.LBB0_20
.LBB0_20:
	adrp	x8, EINVAL
	ldr	w9, [x8, :lo12:EINVAL]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_26
.LBB0_21:
	ldr	x0, [sp, #32]
	bl	htons
	ldr	x8, [sp, #24]
	subs	x8, x0, x8
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_26
.LBB0_22:
	ldrsw	x8, [sp, #20]
	subs	x8, x8, #4
	b.hs	.LBB0_24
	b	.LBB0_23
.LBB0_23:
	adrp	x8, EINVAL
	ldr	w9, [x8, :lo12:EINVAL]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_26
.LBB0_24:
	ldr	x0, [sp, #32]
	bl	htons
	ldr	x8, [sp, #24]
	subs	x8, x0, x8
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_26
.LBB0_25:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_26
.LBB0_26:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	sd_is_socket_inet, .Lfunc_end0-sd_is_socket_inet
                                        // -- End function
	.type	AF_INET,@object                 // @AF_INET
	.bss
	.globl	AF_INET
	.p2align	2
AF_INET:
	.word	0                               // 0x0
	.size	AF_INET, 4
	.type	AF_INET6,@object                // @AF_INET6
	.globl	AF_INET6
	.p2align	2
AF_INET6:
	.word	0                               // 0x0
	.size	AF_INET6, 4
	.type	EINVAL,@object                  // @EINVAL
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sd_is_socket_internal
	.addrsig_sym memset
	.addrsig_sym getsockname
	.addrsig_sym htons
	.addrsig_sym AF_INET
	.addrsig_sym AF_INET6
	.addrsig_sym EINVAL
	.addrsig_sym errno