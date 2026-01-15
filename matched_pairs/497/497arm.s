	.text
	.p2align	2                               // -- Begin function waittest
	.type	waittest,@function
waittest:                               // @waittest
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	add	x0, sp, #8
	mov	w2, wzr
	mov	w1, w2
	bl	wait3
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	adds	w8, w8, #1
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, errno
	ldr	w1, [x8, :lo12:errno]
	mov	w0, #3
	adrp	x2, .L.str
	add	x2, x2, :lo12:.L.str
	bl	die
	b	.LBB0_2
.LBB0_2:
	ldr	w0, [sp, #12]
	adrp	x8, SIGKILL
	ldr	w1, [x8, :lo12:SIGKILL]
	bl	killpg
	ldur	x8, [x29, #-8]
	str	x8, [sp, #16]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_14
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ne	.LBB0_12
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #16]
	str	w8, [x9, #4]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #4]
	cbnz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	mov	w0, #46
	bl	putchar
	b	.LBB0_11
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #4]
	bl	failed
	cbz	x0, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	mov	w0, #70
	bl	putchar
	b	.LBB0_10
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=1
	mov	w0, #69
	bl	putchar
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_3 Depth=1
	adrp	x8, stdout
	ldr	w0, [x8, :lo12:stdout]
	bl	fflush
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #16
	str	x8, [sp, #16]
	b	.LBB0_3
.LBB0_14:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	waittest, .Lfunc_end0-waittest
                                        // -- End function
	.type	errno,@object                   // @errno
	.bss
	.globl	errno
	.p2align	2
errno:
	.word	0                               // 0x0
	.size	errno, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"wait"
	.size	.L.str, 5
	.type	SIGKILL,@object                 // @SIGKILL
	.bss
	.globl	SIGKILL
	.p2align	2
SIGKILL:
	.word	0                               // 0x0
	.size	SIGKILL, 4
	.type	stdout,@object                  // @stdout
	.globl	stdout
	.p2align	2
stdout:
	.word	0                               // 0x0
	.size	stdout, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym waittest
	.addrsig_sym wait3
	.addrsig_sym die
	.addrsig_sym killpg
	.addrsig_sym putchar
	.addrsig_sym failed
	.addrsig_sym fflush
	.addrsig_sym errno
	.addrsig_sym SIGKILL
	.addrsig_sym stdout