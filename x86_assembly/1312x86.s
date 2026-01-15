	.text
	.p2align	4, 0x90                         # -- Begin function rotl32
rotl32:                                 # @rotl32
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	shll	%cl, %eax
	movl	-4(%rbp), %edx
	movl	$32, %ecx
	subl	-8(%rbp), %ecx
                                        # kill: def $cl killed $ecx
	sarl	%cl, %edx
	movl	%edx, %ecx
	orl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rotl32