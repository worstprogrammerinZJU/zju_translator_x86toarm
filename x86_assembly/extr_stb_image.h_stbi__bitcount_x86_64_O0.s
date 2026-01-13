	.text
	.p2align	4, 0x90                         # -- Begin function stbi__bitcount
stbi__bitcount:                         # @stbi__bitcount
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$1431655765, %eax               # imm = 0x55555555
	movl	-4(%rbp), %ecx
	shrl	$1, %ecx
	andl	$1431655765, %ecx               # imm = 0x55555555
	addl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$858993459, %eax                # imm = 0x33333333
	movl	-4(%rbp), %ecx
	shrl	$2, %ecx
	andl	$858993459, %ecx                # imm = 0x33333333
	addl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	-4(%rbp), %ecx
	shrl	$4, %ecx
	addl	%ecx, %eax
	andl	$252645135, %eax                # imm = 0xF0F0F0F
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	-4(%rbp), %ecx
	shrl	$8, %ecx
	addl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	-4(%rbp), %ecx
	shrl	$16, %ecx
	addl	%ecx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$255, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__bitcount