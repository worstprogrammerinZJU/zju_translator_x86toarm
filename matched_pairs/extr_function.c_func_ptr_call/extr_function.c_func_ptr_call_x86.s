	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function func_ptr_call
.LCPI0_0:
	.long	0x40000000                      # float 2
	.text
	.p2align	4, 0x90
func_ptr_call:                          # @func_ptr_call
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$2, %edi
	callq	ptrtest3@PLT
	movl	$4, %edi
	callq	expectf@PLT
	movq	ptrtest1@GOTPCREL(%rip), %rax
	movq	%rax, -8(%rbp)
	callq	*-8(%rbp)
	movl	%eax, %esi
	movl	$55, %edi
	callq	expect@PLT
	movq	ptrtest2@GOTPCREL(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$55, %edi
	callq	*-16(%rbp)
	movl	%eax, %esi
	movl	$110, %edi
	callq	expect@PLT
	movq	ptrtest3@GOTPCREL(%rip), %rax
	movq	%rax, -24(%rbp)
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	*-24(%rbp)
	movl	$4, %edi
	callq	expectf@PLT
	movq	ptrtest1@GOTPCREL(%rip), %rax
	movq	%rax, -32(%rbp)
	callq	*-32(%rbp)
	movl	%eax, %esi
	movl	$55, %edi
	callq	expect@PLT
	movq	ptrtest2@GOTPCREL(%rip), %rdi
	movl	$5, %esi
	callq	ptrtest4@PLT
	movl	%eax, %esi
	movl	$10, %edi
	callq	expect@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym func_ptr_call
	.addrsig_sym expectf
	.addrsig_sym ptrtest3
	.addrsig_sym ptrtest1
	.addrsig_sym expect
	.addrsig_sym ptrtest2
	.addrsig_sym ptrtest4