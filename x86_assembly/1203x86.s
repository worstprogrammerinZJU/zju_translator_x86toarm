	.text
	.globl	jq_testsuite                    # -- Begin function jq_testsuite
	.p2align	4, 0x90
jq_testsuite:                           # @jq_testsuite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, -24(%rbp)
	movq	stdin(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	$-1, -36(%rbp)
	movl	$-1, -40(%rbp)
	movb	$0, %al
	callq	jv_test@PLT
	cmpl	$0, -12(%rbp)
	jle	.LBB0_14
# %bb.1:
	movl	$0, -44(%rbp)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_13
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	leaq	.L.str(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-24(%rbp), %rax
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	atoi@PLT
	movl	%eax, -36(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_11
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-24(%rbp), %rax
	movl	-44(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	atoi@PLT
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_10
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	leaq	.L.str.3(%rip), %rdi
	callq	perror@PLT
	movl	$1, %edi
	callq	exit@PLT
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_2 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_2
.LBB0_13:
	jmp	.LBB0_14
.LBB0_14:
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	movq	-32(%rbp), %rdx
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r8d
	callq	run_jq_tests@PLT
	xorl	%eax, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stdin
	.p2align	3
stdin:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"--skip"
.L.str.1:
	.asciz	"--take"
.L.str.2:
	.asciz	"r"
.L.str.3:
	.asciz	"fopen"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_test
	.addrsig_sym strcmp
	.addrsig_sym atoi
	.addrsig_sym fopen
	.addrsig_sym perror
	.addrsig_sym exit
	.addrsig_sym run_jq_tests
	.addrsig_sym stdin