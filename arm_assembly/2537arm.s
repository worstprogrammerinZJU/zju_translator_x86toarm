	.text
	.globl	jq_util_input_init              // -- Begin function jq_util_input_init
	.p2align	2
	.type	jq_util_input_init,@function
jq_util_input_init:                     // @jq_util_input_init
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, fprinter
	ldr	x8, [x8, :lo12:fprinter]
	stur	x8, [x29, #-8]
	adrp	x8, stderr
	ldr	x8, [x8, :lo12:stderr]
	str	x8, [sp, #16]
	b	.LBB0_2
.LBB0_2:
	mov	w0, #1
	mov	w1, #32
	bl	jv_mem_calloc
	str	x0, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #8]
	str	x8, [x9, #24]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	str	x8, [x9, #16]
	bl	jv_invalid
	ldr	x8, [sp, #8]
	str	x0, [x8, #8]
	bl	jv_invalid
	ldr	x8, [sp, #8]
	str	x0, [x8]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jq_util_input_init, .Lfunc_end0-jq_util_input_init
                                        // -- End function
	.type	fprinter,@object                // @fprinter
	.bss
	.globl	fprinter
	.p2align	3
fprinter:
	.xword	0
	.size	fprinter, 8
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	3
stderr:
	.xword	0
	.size	stderr, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_mem_calloc
	.addrsig_sym jv_invalid
	.addrsig_sym fprinter
	.addrsig_sym stderr