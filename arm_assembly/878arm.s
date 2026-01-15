	.text
	.globl	jq_set_error_cb                 // -- Begin function jq_set_error_cb
	.p2align	2
	.type	jq_set_error_cb,@function
jq_set_error_cb:                        // @jq_set_error_cb
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, default_err_cb
	ldr	x8, [x8, :lo12:default_err_cb]
	ldr	x9, [sp, #24]
	str	x8, [x9, #8]
	adrp	x8, stderr
	ldr	x8, [x8, :lo12:stderr]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #24]
	str	x8, [x9, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	b	.LBB0_3
.LBB0_3:
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jq_set_error_cb, .Lfunc_end0-jq_set_error_cb
                                        // -- End function
	.type	default_err_cb,@object          // @default_err_cb
	.bss
	.globl	default_err_cb
	.p2align	3
default_err_cb:
	.xword	0
	.size	default_err_cb, 8
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	3
stderr:
	.xword	0
	.size	stderr, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym default_err_cb
	.addrsig_sym stderr