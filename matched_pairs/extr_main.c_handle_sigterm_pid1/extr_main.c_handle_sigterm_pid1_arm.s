	.text
	.p2align	2                               // -- Begin function handle_sigterm_pid1
	.type	handle_sigterm_pid1,@function
handle_sigterm_pid1:                    // @handle_sigterm_pid1
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	adrp	x8, SIGKILL
	ldr	w0, [x8, :lo12:SIGKILL]
	bl	raise
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	handle_sigterm_pid1, .Lfunc_end0-handle_sigterm_pid1
                                        // -- End function
	.type	SIGKILL,@object                 // @SIGKILL
	.bss
	.globl	SIGKILL
	.p2align	2
SIGKILL:
	.word	0                               // 0x0
	.size	SIGKILL, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym handle_sigterm_pid1
	.addrsig_sym raise
	.addrsig_sym SIGKILL