	.text
	.globl	sd_is_socket                    // -- Begin function sd_is_socket
	.p2align	2
	.type	sd_is_socket,@function
sd_is_socket:                           // @sd_is_socket
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	w0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, EINVAL
	ldr	w9, [x8, :lo12:EINVAL]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_11
.LBB0_2:
	ldur	w0, [x29, #-8]
	ldur	w1, [x29, #-16]
	ldur	w2, [x29, #-20]
	bl	sd_is_socket_internal
	str	w0, [sp, #24]
	subs	w8, w0, #0
	b.gt	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #24]
	stur	w8, [x29, #-4]
	b	.LBB0_11
.LBB0_4:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	b.le	.LBB0_10
	b	.LBB0_5
.LBB0_5:
	add	x0, sp, #20
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	mov	w1, wzr
	mov	w2, #4
	str	w2, [sp, #4]                    // 4-byte Folded Spill
	bl	memset
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	add	x2, sp, #16
	str	w8, [sp, #16]
	ldur	w0, [x29, #-8]
	bl	getsockname
	subs	x8, x0, #0
	b.ge	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x8, errno
	ldr	w9, [x8, :lo12:errno]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_11
.LBB0_7:
	ldrsw	x8, [sp, #16]
	subs	x8, x8, #4
	b.hs	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	adrp	x8, EINVAL
	ldr	w9, [x8, :lo12:EINVAL]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-4]
	b	.LBB0_11
.LBB0_9:
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_11
.LBB0_10:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_11
.LBB0_11:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	sd_is_socket, .Lfunc_end0-sd_is_socket
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sd_is_socket_internal
	.addrsig_sym memset
	.addrsig_sym getsockname
	.addrsig_sym EINVAL
	.addrsig_sym errno