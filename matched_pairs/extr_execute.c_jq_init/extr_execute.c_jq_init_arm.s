	.text
	.globl	jq_init                         // -- Begin function jq_init
	.p2align	2
	.type	jq_init,@function
jq_init:                                // @jq_init
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #128
	bl	jv_mem_alloc_unguarded
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #8]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp]
	str	xzr, [x8, #120]
	ldr	x8, [sp]
	str	xzr, [x8, #112]
	ldr	x8, [sp]
	add	x0, x8, #104
	bl	stack_init
	ldr	x8, [sp]
	str	xzr, [x8, #96]
	ldr	x8, [sp]
	str	xzr, [x8, #88]
	ldr	x8, [sp]
	str	xzr, [x8, #80]
	bl	jv_null
	ldr	x8, [sp]
	str	x0, [x8, #72]
	ldr	x8, [sp]
	str	xzr, [x8, #64]
	bl	jv_invalid
	ldr	x8, [sp]
	str	x0, [x8, #56]
	bl	jv_invalid
	ldr	x8, [sp]
	str	x0, [x8, #48]
	adrp	x8, default_err_cb
	ldr	w8, [x8, :lo12:default_err_cb]
	ldr	x9, [sp]
	str	w8, [x9, #40]
	adrp	x8, stderr
	ldr	w8, [x8, :lo12:stderr]
	ldr	x9, [sp]
	str	w8, [x9, #36]
	bl	jv_object
	ldr	x8, [sp]
	str	w0, [x8, #32]
	bl	jv_null
	ldr	x8, [sp]
	str	x0, [x8, #24]
	bl	jv_null
	ldr	x8, [sp]
	str	x0, [x8, #16]
	ldr	x8, [sp]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #8]
	ldr	x8, [sp]
	str	xzr, [x8]
	ldr	x8, [sp]
	str	x8, [sp, #8]
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jq_init, .Lfunc_end0-jq_init
                                        // -- End function
	.type	default_err_cb,@object          // @default_err_cb
	.bss
	.globl	default_err_cb
	.p2align	2
default_err_cb:
	.word	0                               // 0x0
	.size	default_err_cb, 4
	.type	stderr,@object                  // @stderr
	.globl	stderr
	.p2align	2
stderr:
	.word	0                               // 0x0
	.size	stderr, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_mem_alloc_unguarded
	.addrsig_sym stack_init
	.addrsig_sym jv_null
	.addrsig_sym jv_invalid
	.addrsig_sym jv_object
	.addrsig_sym default_err_cb
	.addrsig_sym stderr