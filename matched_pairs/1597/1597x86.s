	.text
	.p2align	4, 0x90                         # -- Begin function optimizejumps
optimizejumps:                          # @optimizejumps
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	cmpq	IEnd(%rip), %rax
	je	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	callq	isjmp@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	dest@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	target@PLT
	movq	%rax, %rcx
	movslq	-12(%rbp), %rax
	subq	%rax, %rcx
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rcx, 8(%rax)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movslq	-12(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	callq	sizei@PLT
	movq	%rax, %rcx
	movslq	-12(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	IEnd
	.p2align	3
IEnd:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optimizejumps
	.addrsig_sym isjmp
	.addrsig_sym target
	.addrsig_sym dest
	.addrsig_sym sizei
	.addrsig_sym IEnd