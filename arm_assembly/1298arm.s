	.text
	.p2align	2                               // -- Begin function jvp_object_read
	.type	jvp_object_read,@function
jvp_object_read:                        // @jvp_object_read
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-12]
	str	w1, [sp, #16]
	ldr	w0, [sp, #16]
	adrp	x8, JV_KIND_STRING
	ldr	w1, [x8, :lo12:JV_KIND_STRING]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-12]
	ldr	w1, [sp, #16]
	bl	jvp_object_find_bucket
	str	x0, [sp, #8]
	ldur	w0, [x29, #-12]
	ldr	w1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	jvp_object_find_slot
	str	x0, [sp]
	ldr	x8, [sp]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jvp_object_read, .Lfunc_end0-jvp_object_read
                                        // -- End function
	.type	JV_KIND_STRING,@object          // @JV_KIND_STRING
	.bss
	.globl	JV_KIND_STRING
	.p2align	2
JV_KIND_STRING:
	.word	0                               // 0x0
	.size	JV_KIND_STRING, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_read
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jvp_object_find_bucket
	.addrsig_sym jvp_object_find_slot
	.addrsig_sym JV_KIND_STRING