	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function forward_batchnorm_layer
.LCPI0_0:
	.quad	0x3f847ae147ae147b              # double 0.01
.LCPI0_1:
	.quad	0x3fefae147ae147ae              # double 0.98999999999999999
	.text
	.globl	forward_batchnorm_layer
	.p2align	4, 0x90
forward_batchnorm_layer:                # @forward_batchnorm_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	%rdi, -16(%rbp)
	movl	%esi, -8(%rbp)
	movq	(%rax), %rax
	cmpq	BATCHNORM(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	8(%rax), %edi
	imull	12(%rax), %edi
	movl	-8(%rbp), %esi
	movl	32(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
.LBB0_2:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	8(%rax), %edi
	imull	12(%rax), %edi
	movl	32(%rax), %esi
	movl	60(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
	cmpq	$0, -16(%rbp)
	je	.LBB0_4
# %bb.3:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	32(%rax), %edi
	movl	12(%rax), %esi
	movl	24(%rax), %edx
	movl	16(%rax), %ecx
	imull	20(%rax), %ecx
	movl	56(%rax), %r8d
	callq	mean_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	32(%rax), %edi
	movl	56(%rax), %esi
	movl	12(%rax), %edx
	movl	24(%rax), %ecx
	movl	16(%rax), %r8d
	imull	20(%rax), %r8d
	movl	52(%rax), %r9d
	callq	variance_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	24(%rax), %edi
	movl	44(%rax), %esi
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	movl	$1, %edx
	callq	scal_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	24(%rax), %edi
	movl	56(%rax), %esi
	movl	44(%rax), %ecx
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	24(%rax), %edi
	movl	40(%rax), %esi
	movsd	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero
	movl	$1, %edx
	callq	scal_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	24(%rax), %edi
	movl	52(%rax), %esi
	movl	40(%rax), %ecx
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	axpy_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	32(%rax), %edi
	movl	56(%rax), %esi
	movl	52(%rax), %edx
	movl	12(%rax), %ecx
	movl	24(%rax), %r8d
	movl	16(%rax), %r9d
	imull	20(%rax), %r9d
	callq	normalize_cpu@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	8(%rax), %edi
	imull	12(%rax), %edi
	movl	32(%rax), %esi
	movl	48(%rax), %ecx
	movl	$1, %r8d
	movl	%r8d, %edx
	callq	copy_cpu@PLT
	jmp	.LBB0_5
.LBB0_4:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	32(%rax), %edi
	movl	44(%rax), %esi
	movl	40(%rax), %edx
	movl	12(%rax), %ecx
	movl	24(%rax), %r8d
	movl	16(%rax), %r9d
	imull	20(%rax), %r9d
	callq	normalize_cpu@PLT
.LBB0_5:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	32(%rax), %edi
	movl	36(%rax), %esi
	movl	12(%rax), %edx
	movl	24(%rax), %ecx
	movl	16(%rax), %r8d
	imull	20(%rax), %r8d
	callq	scale_bias@PLT
                                        # kill: def $ecx killed $eax
	movq	-24(%rbp), %rax                 # 8-byte Reload
	movl	32(%rax), %edi
	movl	28(%rax), %esi
	movl	12(%rax), %edx
	movl	24(%rax), %ecx
	movl	16(%rax), %r8d
	imull	20(%rax), %r8d
	callq	add_bias@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	BATCHNORM
	.p2align	3
BATCHNORM:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_cpu
	.addrsig_sym mean_cpu
	.addrsig_sym variance_cpu
	.addrsig_sym scal_cpu
	.addrsig_sym axpy_cpu
	.addrsig_sym normalize_cpu
	.addrsig_sym scale_bias
	.addrsig_sym add_bias
	.addrsig_sym BATCHNORM