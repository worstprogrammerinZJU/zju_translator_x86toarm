	.text
	.p2align	4, 0x90                         # -- Begin function local_static3
local_static3:                          # @local_static3
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$100, local_static3.z(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.data
	.p2align	2
local_static3.x:
	.long	5                               # 0x5
local_static3.y:
	.asciz	"8"
	.local	local_static3.z
	.comm	local_static3.z,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym local_static3
	.addrsig_sym local_static3.z