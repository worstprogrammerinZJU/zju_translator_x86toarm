	.text
	.globl	jv_object_iter                  // -- Begin function jv_object_iter
	.p2align	2
	.type	jv_object_iter,@function
jv_object_iter:                         // @jv_object_iter
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	adrp	x8, JV_KIND_OBJECT
	ldr	w1, [x8, :lo12:JV_KIND_OBJECT]
	bl	JVP_HAS_KIND
	bl	assert
	ldur	w0, [x29, #-4]
	mov	w1, #-1
	bl	jv_object_iter_next
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jv_object_iter, .Lfunc_end0-jv_object_iter
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
	.addrsig_sym assert
	.addrsig_sym JVP_HAS_KIND
	.addrsig_sym jv_object_iter_next
	.addrsig_sym JV_KIND_OBJECT