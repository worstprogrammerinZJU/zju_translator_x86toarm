	.text
	.globl	sd_listen_fds                   // -- Begin function sd_listen_fds
	.p2align	2
	.type	sd_listen_fds,@function
sd_listen_fds:                          // @sd_listen_fds
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	w0, [x29, #-4]
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #32]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	getenv
	stur	x0, [x29, #-24]
	cbnz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-8]
	b	.LBB0_28
.LBB0_2:
	adrp	x8, errno
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	str	wzr, [x8, :lo12:errno]
	ldur	x0, [x29, #-24]
	add	x1, sp, #32
	mov	w2, #10
	bl	strtoul
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [sp, #24]
	ldr	w8, [x8, :lo12:errno]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x8, errno
	ldr	w9, [x8, :lo12:errno]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-8]
	b	.LBB0_28
.LBB0_4:
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_7
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #32]
	ldrb	w8, [x8]
	cbnz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	b.hi	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	adrp	x8, EINVAL
	ldr	w9, [x8, :lo12:EINVAL]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-8]
	b	.LBB0_28
.LBB0_8:
	bl	getpid
	ldr	x8, [sp, #24]
	subs	x8, x0, x8
	b.eq	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	stur	wzr, [x29, #-8]
	b	.LBB0_28
.LBB0_10:
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	getenv
	stur	x0, [x29, #-24]
	cbnz	x0, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	stur	wzr, [x29, #-8]
	b	.LBB0_28
.LBB0_12:
	adrp	x8, errno
	str	x8, [sp]                        // 8-byte Folded Spill
	str	wzr, [x8, :lo12:errno]
	ldur	x0, [x29, #-24]
	add	x1, sp, #32
	mov	w2, #10
	bl	strtoul
	ldr	x8, [sp]                        // 8-byte Folded Reload
	str	x0, [sp, #24]
	ldr	w8, [x8, :lo12:errno]
	cbz	w8, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	adrp	x8, errno
	ldr	w9, [x8, :lo12:errno]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-8]
	b	.LBB0_28
.LBB0_14:
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldr	x8, [sp, #32]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	adrp	x8, EINVAL
	ldr	w9, [x8, :lo12:EINVAL]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-8]
	b	.LBB0_28
.LBB0_17:
	adrp	x8, SD_LISTEN_FDS_START
	ldr	w8, [x8, :lo12:SD_LISTEN_FDS_START]
	stur	w8, [x29, #-12]
	b	.LBB0_18
.LBB0_18:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-12]
	adrp	x9, SD_LISTEN_FDS_START
	ldr	w9, [x9, :lo12:SD_LISTEN_FDS_START]
	ldr	x10, [sp, #24]
                                        // kill: def $w10 killed $w10 killed $x10
	add	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_27
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_18 Depth=1
	ldur	w0, [x29, #-12]
	adrp	x8, F_GETFD
	ldr	w1, [x8, :lo12:F_GETFD]
	bl	fcntl
	str	w0, [sp, #20]
	subs	w8, w0, #0
	b.ge	.LBB0_21
	b	.LBB0_20
.LBB0_20:
	adrp	x8, errno
	ldr	w9, [x8, :lo12:errno]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-8]
	b	.LBB0_28
.LBB0_21:                               //   in Loop: Header=BB0_18 Depth=1
	ldr	w8, [sp, #20]
	adrp	x9, FD_CLOEXEC
	ldr	w9, [x9, :lo12:FD_CLOEXEC]
	and	w8, w8, w9
	cbz	w8, .LBB0_23
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_18 Depth=1
	b	.LBB0_26
.LBB0_23:                               //   in Loop: Header=BB0_18 Depth=1
	ldur	w0, [x29, #-12]
	adrp	x8, F_SETFD
	ldr	w1, [x8, :lo12:F_SETFD]
	ldr	w8, [sp, #20]
	adrp	x9, FD_CLOEXEC
	ldr	w9, [x9, :lo12:FD_CLOEXEC]
	orr	w2, w8, w9
	bl	fcntl
	subs	w8, w0, #0
	b.ge	.LBB0_25
	b	.LBB0_24
.LBB0_24:
	adrp	x8, errno
	ldr	w9, [x8, :lo12:errno]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-8]
	b	.LBB0_28
.LBB0_25:                               //   in Loop: Header=BB0_18 Depth=1
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_18 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_18
.LBB0_27:
	ldr	x8, [sp, #24]
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-8]
	b	.LBB0_28
.LBB0_28:
	ldur	w8, [x29, #-4]
	cbz	w8, .LBB0_30
	b	.LBB0_29
.LBB0_29:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	unsetenv
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	unsetenv
	b	.LBB0_30
.LBB0_30:
	ldur	w0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	sd_listen_fds, .Lfunc_end0-sd_listen_fds
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LISTEN_PID"
	.size	.L.str, 11
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
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"LISTEN_FDS"
	.size	.L.str.1, 11
	.type	SD_LISTEN_FDS_START,@object     // @SD_LISTEN_FDS_START
	.bss
	.globl	SD_LISTEN_FDS_START
	.p2align	2
SD_LISTEN_FDS_START:
	.word	0                               // 0x0
	.size	SD_LISTEN_FDS_START, 4
	.type	F_GETFD,@object                 // @F_GETFD
	.globl	F_GETFD
	.p2align	2
F_GETFD:
	.word	0                               // 0x0
	.size	F_GETFD, 4
	.type	FD_CLOEXEC,@object              // @FD_CLOEXEC
	.globl	FD_CLOEXEC
	.p2align	2
FD_CLOEXEC:
	.word	0                               // 0x0
	.size	FD_CLOEXEC, 4
	.type	F_SETFD,@object                 // @F_SETFD
	.globl	F_SETFD
	.p2align	2
F_SETFD:
	.word	0                               // 0x0
	.size	F_SETFD, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym getenv
	.addrsig_sym strtoul
	.addrsig_sym getpid
	.addrsig_sym fcntl
	.addrsig_sym unsetenv
	.addrsig_sym errno
	.addrsig_sym EINVAL
	.addrsig_sym SD_LISTEN_FDS_START
	.addrsig_sym F_GETFD
	.addrsig_sym FD_CLOEXEC
	.addrsig_sym F_SETFD