	.text
	.p2align	2                               // -- Begin function jvp_object_size
	.type	jvp_object_size,@function
jvp_object_size:                        // @jvp_object_size
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w8, w0
	stur	w8, [x29, #-4]
	adrp	x8, JV_KIND_OBJECT
	ldr	w1, [x8, :lo12:JV_KIND_OBJECT]
	ldur	w8, [x29, #-4]
	mov	w0, w8
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jvp_object_size, .Lfunc_end0-jvp_object_size
                                        // -- End function
	.type	JV_KIND_OBJECT,@object          // @JV_KIND_OBJECT
	.bss
	.globl	JV_KIND_OBJECT
	.p2align	2
JV_KIND_OBJECT:
	.word	0                               // 0x0
	.size	JV_KIND_OBJECT, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_size
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym JV_KIND_OBJECT