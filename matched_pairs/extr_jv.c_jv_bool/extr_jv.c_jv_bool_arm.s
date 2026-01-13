	.text
	.globl	jv_bool                         // -- Begin function jv_bool
	.p2align	2
	.type	jv_bool,@function
jv_bool:                                // @jv_bool
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x8, JV_TRUE
	ldr	w8, [x8, :lo12:JV_TRUE]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	adrp	x8, JV_FALSE
	ldr	w8, [x8, :lo12:JV_FALSE]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	jv_bool, .Lfunc_end0-jv_bool
                                        // -- End function
	.type	JV_TRUE,@object                 // @JV_TRUE
	.bss
	.globl	JV_TRUE
	.p2align	2
JV_TRUE:
	.word	0                               // 0x0
	.size	JV_TRUE, 4
	.type	JV_FALSE,@object                // @JV_FALSE
	.globl	JV_FALSE
	.p2align	2
JV_FALSE:
	.word	0                               // 0x0
	.size	JV_FALSE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JV_TRUE
	.addrsig_sym JV_FALSE