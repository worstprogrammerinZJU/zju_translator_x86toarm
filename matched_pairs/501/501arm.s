	.text
	.globl	socknext                        // -- Begin function socknext
	.p2align	2
	.type	socknext,@function
socknext:                               // @socknext
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	adrp	x9, socknext.ts
	adrp	x5, socknext.ts
	add	x5, x5, :lo12:socknext.ts
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	ldur	w8, [x29, #-20]
	mov	w10, #51712
	movk	w10, #15258, lsl #16
	sdiv	w8, w8, w10
	str	w8, [x9, :lo12:socknext.ts]
	ldur	w8, [x29, #-20]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [x5, #4]
	adrp	x8, kq
	ldr	w0, [x8, :lo12:kq]
	mov	x1, xzr
	mov	w2, wzr
	add	x3, sp, #8
	mov	w4, #1
	bl	kevent
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
	mov	w8, #-1
	stur	w8, [x29, #-4]
	b	.LBB0_12
.LBB0_3:
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	b.le	.LBB0_11
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-16]
	str	x8, [x9]
	ldr	w8, [sp, #8]
	adrp	x9, EV_EOF
	ldr	w9, [x9, :lo12:EV_EOF]
	and	w8, w8, w9
	cbz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	mov	w8, #104
	stur	w8, [x29, #-4]
	b	.LBB0_12
.LBB0_6:
	ldr	w8, [sp, #12]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	subs	w8, w8, #128
	b.eq	.LBB0_9
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #129
	b.ne	.LBB0_10
	b	.LBB0_8
.LBB0_8:
	mov	w8, #114
	stur	w8, [x29, #-4]
	b	.LBB0_12
.LBB0_9:
	mov	w8, #119
	stur	w8, [x29, #-4]
	b	.LBB0_12
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	stur	wzr, [x29, #-4]
	b	.LBB0_12
.LBB0_12:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	socknext, .Lfunc_end0-socknext
                                        // -- End function
	.type	socknext.ts,@object             // @socknext.ts
	.local	socknext.ts
	.comm	socknext.ts,8,4
	.type	kq,@object                      // @kq
	.bss
	.globl	kq
	.p2align	2
kq:
	.word	0                               // 0x0
	.size	kq, 4
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
	.asciz	"kevent"
	.size	.L.str, 7
	.type	EV_EOF,@object                  // @EV_EOF
	.bss
	.globl	EV_EOF
	.p2align	2
EV_EOF:
	.word	0                               // 0x0
	.size	EV_EOF, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym kevent
	.addrsig_sym twarn
	.addrsig_sym socknext.ts
	.addrsig_sym kq
	.addrsig_sym errno
	.addrsig_sym EINTR
	.addrsig_sym EV_EOF