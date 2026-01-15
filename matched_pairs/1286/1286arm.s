	.text
	.p2align	2                               // -- Begin function jvp_object_buckets
	.type	jvp_object_buckets,@function
jvp_object_buckets:                     // @jvp_object_buckets
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	jvp_object_ptr
	ldr	x8, [x0]
	ldr	x9, [sp, #8]
	add	x0, x8, x9, lsl #2
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	jvp_object_buckets, .Lfunc_end0-jvp_object_buckets
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_buckets
	.addrsig_sym jvp_object_ptr