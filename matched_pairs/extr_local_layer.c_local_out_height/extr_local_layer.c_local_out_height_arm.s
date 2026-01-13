	.text
	.globl	local_out_height                // -- Begin function local_out_height
	.p2align	2
	.type	local_out_height,@function
local_out_height:                       // @local_out_height
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp]                        // 8-byte Folded Spill
	ldr	w8, [x0]
	str	w8, [sp, #12]
	ldr	w8, [x0, #16]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x9, [x8, #8]
	ldrsw	x8, [sp, #12]
	subs	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_3:
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #12]
	ldr	w9, [x9, #4]
	sdiv	w8, w8, w9
	add	w0, w8, #1
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	local_out_height, .Lfunc_end0-local_out_height
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig