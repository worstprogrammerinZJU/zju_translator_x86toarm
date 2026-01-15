	.text
	.p2align	2                               // -- Begin function f_stderr
	.type	f_stderr,@function
f_stderr:                               // @f_stderr
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w0, [sp, #4]
	bl	jv_copy
	adrp	x8, stderr
	ldr	w1, [x8, :lo12:stderr]
	mov	w2, wzr
	bl	jv_dumpf
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	f_stderr, .Lfunc_end0-f_stderr
                                        // -- End function
	.type	stderr,@object                  // @stderr
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_stderr
	.addrsig_sym jv_dumpf
	.addrsig_sym jv_copy
	.addrsig_sym stderr