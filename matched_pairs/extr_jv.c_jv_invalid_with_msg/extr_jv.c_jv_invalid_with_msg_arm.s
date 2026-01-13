	.text
	.globl	jv_invalid_with_msg             // -- Begin function jv_invalid_with_msg
	.p2align	2
	.type	jv_invalid_with_msg,@function
jv_invalid_with_msg:                    // @jv_invalid_with_msg
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	str	x8, [sp]                        // 8-byte Folded Spill
	mov	x8, x0
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	adrp	x9, JV_KIND_NULL
	ldr	w1, [x9, :lo12:JV_KIND_NULL]
	ldr	q0, [x8]
	sub	x0, x29, #32
	stur	q0, [x29, #-32]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-16]
	bl	JVP_HAS_KIND
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x9, [sp]                        // 8-byte Folded Reload
	adrp	x8, JV_INVALID
	add	x8, x8, :lo12:JV_INVALID
	ldr	q0, [x8]
	str	q0, [x9]
	ldr	x8, [x8, #16]
	str	x8, [x9, #16]
	b	.LBB0_3
.LBB0_2:
	mov	w0, #32
	bl	jv_mem_alloc
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [sp]                        // 8-byte Folded Reload
	str	x0, [sp, #40]
	adrp	x10, JV_REFCNT_INIT
	ldr	w10, [x10, :lo12:JV_REFCNT_INIT]
	ldr	x11, [sp, #40]
	str	w10, [x11]
	ldr	x10, [sp, #40]
	ldr	q0, [x8]
	stur	q0, [x10, #8]
	ldr	x8, [x8, #16]
	str	x8, [x10, #24]
	adrp	x8, JVP_FLAGS_INVALID_MSG
	ldrsw	x8, [x8, :lo12:JVP_FLAGS_INVALID_MSG]
	str	x8, [sp, #16]
	str	wzr, [sp, #24]
	str	wzr, [sp, #28]
	str	wzr, [sp, #32]
	ldr	x8, [sp, #40]
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #36]
	ldr	q0, [sp, #16]
	str	q0, [x9]
	ldr	x8, [sp, #32]
	str	x8, [x9, #16]
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	jv_invalid_with_msg, .Lfunc_end0-jv_invalid_with_msg
                                        // -- End function
	.type	JV_KIND_NULL,@object            // @JV_KIND_NULL
	.bss
	.globl	JV_KIND_NULL
	.p2align	2
JV_KIND_NULL:
	.word	0                               // 0x0
	.size	JV_KIND_NULL, 4
	.type	JV_INVALID,@object              // @JV_INVALID
	.globl	JV_INVALID
	.p2align	3
JV_INVALID:
	.zero	24
	.size	JV_INVALID, 24
	.type	JV_REFCNT_INIT,@object          // @JV_REFCNT_INIT
	.globl	JV_REFCNT_INIT
	.p2align	2
JV_REFCNT_INIT:
	.word	0                               // 0x0
	.size	JV_REFCNT_INIT, 4
	.type	JVP_FLAGS_INVALID_MSG,@object   // @JVP_FLAGS_INVALID_MSG
	.globl	JVP_FLAGS_INVALID_MSG
	.p2align	2
JVP_FLAGS_INVALID_MSG:
	.word	0                               // 0x0
	.size	JVP_FLAGS_INVALID_MSG, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jv_mem_alloc
	.addrsig_sym JV_KIND_NULL
	.addrsig_sym JV_INVALID
	.addrsig_sym JV_REFCNT_INIT
	.addrsig_sym JVP_FLAGS_INVALID_MSG