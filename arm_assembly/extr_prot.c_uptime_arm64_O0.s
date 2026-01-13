	.text
	.p2align	2                               // -- Begin function uptime
	.type	uptime,@function
uptime:                                 // @uptime
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	bl	nanoseconds
	adrp	x8, started_at
	ldr	w8, [x8, :lo12:started_at]
	subs	w8, w0, w8
	mov	w9, #51712
	movk	w9, #15258, lsl #16
	sdiv	w0, w8, w9
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	uptime, .Lfunc_end0-uptime
                                        // -- End function
	.type	started_at,@object              // @started_at
	.bss
	.globl	started_at
	.p2align	2
started_at:
	.word	0                               // 0x0
	.size	started_at, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym uptime
	.addrsig_sym nanoseconds
	.addrsig_sym started_at