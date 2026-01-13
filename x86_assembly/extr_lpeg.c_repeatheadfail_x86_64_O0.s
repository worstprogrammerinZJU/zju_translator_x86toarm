	.text
	.p2align	4, 0x90                         # -- Begin function repeatheadfail
repeatheadfail:                         # @repeatheadfail
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %esi
	addl	$1, %esi
	imull	-12(%rbp), %esi
	addl	$1, %esi
	callq	newpatt@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	$1, %edx
	callq	addpatt@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	$1, %edx
	callq	addpatt@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$2, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movslq	-12(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	subq	%rcx, %rax
	shlq	$2, %rax
	addq	%rax, %rdi
	movl	-12(%rbp), %esi
	addl	$1, %esi
	callq	check2test@PLT
	movq	-32(%rbp), %rdi
	movl	IJmp(%rip), %esi
	xorl	%edx, %edx
	subl	-12(%rbp), %edx
	callq	setinst@PLT
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	IJmp
	.p2align	2
IJmp:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym repeatheadfail
	.addrsig_sym newpatt
	.addrsig_sym addpatt
	.addrsig_sym check2test
	.addrsig_sym setinst
	.addrsig_sym IJmp