	.text
	.p2align	2                               // -- Begin function jv2tm
	.type	jv2tm,@function
jv2tm:                                  // @jv2tm
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	mov	w1, wzr
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	mov	w2, #32
	bl	memset
	ldr	w2, [sp, #8]                    // 4-byte Folded Reload
	ldr	x8, [sp, #16]
	ldr	w0, [x8]
	ldur	w1, [x29, #-4]
	bl	TO_TM_FIELD
	ldr	x9, [sp, #16]
	ldr	w8, [x9]
	subs	w8, w8, #1900
	str	w8, [x9]
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #4]
	ldur	w1, [x29, #-4]
	mov	w2, #1
	str	w2, [sp, #12]                   // 4-byte Folded Spill
	bl	TO_TM_FIELD
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #8]
	ldur	w1, [x29, #-4]
	mov	w2, #2
	bl	TO_TM_FIELD
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #12]
	ldur	w1, [x29, #-4]
	mov	w2, #3
	bl	TO_TM_FIELD
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #16]
	ldur	w1, [x29, #-4]
	mov	w2, #4
	bl	TO_TM_FIELD
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #20]
	ldur	w1, [x29, #-4]
	mov	w2, #5
	bl	TO_TM_FIELD
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #24]
	ldur	w1, [x29, #-4]
	mov	w2, #6
	bl	TO_TM_FIELD
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #28]
	ldur	w1, [x29, #-4]
	mov	w2, #7
	bl	TO_TM_FIELD
	ldur	w0, [x29, #-4]
	bl	jv_free
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	jv2tm, .Lfunc_end0-jv2tm
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv2tm
	.addrsig_sym memset
	.addrsig_sym TO_TM_FIELD
	.addrsig_sym jv_free