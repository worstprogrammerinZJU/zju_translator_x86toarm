	.text
	.globl	__yield                         // -- Begin function __yield
	.p2align	2
	.type	__yield,@function
__yield:                                // @__yield
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	bl	vPortYield
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	__yield, .Lfunc_end0-__yield
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym vPortYield