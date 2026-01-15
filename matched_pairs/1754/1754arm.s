	.text
	.globl	get_predicted_class_network     // -- Begin function get_predicted_class_network
	.p2align	2
	.type	get_predicted_class_network,@function
get_predicted_class_network:            // @get_predicted_class_network
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #4]
	ldr	x8, [sp, #8]
	ldr	w1, [x8]
	bl	max_index
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	get_predicted_class_network, .Lfunc_end0-get_predicted_class_network
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym max_index