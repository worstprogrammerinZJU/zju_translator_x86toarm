	.text
	.p2align	2                               // -- Begin function jvp_object_find_bucket
	.type	jvp_object_find_bucket,@function
jvp_object_find_bucket:                 // @jvp_object_find_bucket
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	ldur	w0, [x29, #-4]
	bl	jvp_object_buckets
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	ldur	w0, [x29, #-4]
	bl	jvp_object_mask
	str	w0, [sp, #12]                   // 4-byte Folded Spill
	ldur	w0, [x29, #-8]
	bl	jvp_string_hash
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	mov	w9, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	and	w8, w8, w9
	add	x0, x0, w8, sxtw #2
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jvp_object_find_bucket, .Lfunc_end0-jvp_object_find_bucket
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_find_bucket
	.addrsig_sym jvp_object_buckets
	.addrsig_sym jvp_object_mask
	.addrsig_sym jvp_string_hash