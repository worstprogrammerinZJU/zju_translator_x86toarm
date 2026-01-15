	.text
	.p2align	2                               // -- Begin function local_static
	.type	local_static,@function
local_static:                           // @local_static
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	bl	local_static2
	mov	w1, w0
	mov	w0, #6
	bl	expect
	bl	local_static2
	mov	w1, w0
	mov	w0, #7
	bl	expect
	bl	local_static3
	bl	local_static2
	mov	w1, w0
	mov	w0, #8
	bl	expect
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	local_static, .Lfunc_end0-local_static
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym local_static
	.addrsig_sym expect
	.addrsig_sym local_static2
	.addrsig_sym local_static3