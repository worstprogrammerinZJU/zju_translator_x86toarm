	.text
	.globl	decFloatIsLogical               # -- Begin function decFloatIsLogical
	.p2align	4, 0x90
decFloatIsLogical:                      # @decFloatIsLogical
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	DFISUINT01@PLT
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	DFISCC01@PLT
	movl	%eax, %ecx
	movl	-12(%rbp), %eax                 # 4-byte Reload
	andl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISUINT01
	.addrsig_sym DFISCC01