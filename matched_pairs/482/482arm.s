	.text
	.p2align	2                               // -- Begin function failed
	.type	failed,@function
failed:                                 // @failed
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	WIFSIGNALED
	mov	w8, #0
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w0, [x29, #-4]
	bl	WTERMSIG
	adrp	x8, SIGABRT
	ldr	x8, [x8, :lo12:SIGABRT]
	subs	x8, x0, x8
	cset	w8, eq
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	failed, .Lfunc_end0-failed
                                        // -- End function
	.type	SIGABRT,@object                 // @SIGABRT
	.bss
	.globl	SIGABRT
	.p2align	3
SIGABRT:
	.xword	0                               // 0x0
	.size	SIGABRT, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym failed
	.addrsig_sym WIFSIGNALED
	.addrsig_sym WTERMSIG
	.addrsig_sym SIGABRT