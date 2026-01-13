	.text
	.p2align	4, 0x90                         # -- Begin function local_static2
local_static2:                          # @local_static2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$3, local_static2.z(%rip)
	movl	local_static2.x(%rip), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, local_static2.x(%rip)
	movsbl	local_static2.y(%rip), %ecx
	subl	$48, %ecx
	addl	%ecx, %eax
	addl	local_static2.z(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.data
	.p2align	2
local_static2.x:
	.long	1                               # 0x1
local_static2.y:
	.asciz	"2"
	.local	local_static2.z
	.comm	local_static2.z,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym local_static2
	.addrsig_sym local_static2.x
	.addrsig_sym local_static2.y
	.addrsig_sym local_static2.z