	.text
	.globl	print_network                   # -- Begin function print_network
	.p2align	4, 0x90
print_network:                          # @print_network
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_12
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-12(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	mean_array@PLT
	movss	%xmm0, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	variance_array@PLT
	movss	%xmm0, -52(%rbp)
	movl	stderr(%rip), %edi
	movl	-12(%rbp), %edx
	movss	-48(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	-52(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	leaq	.L.str(%rip), %rsi
	movb	$2, %al
	callq	fprintf@PLT
	cmpl	$100, -44(%rbp)
	jle	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$100, -44(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -16(%rbp)
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	movl	stderr(%rip), %edi
	movq	-40(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	leaq	.L.str.1(%rip), %rsi
	movb	$1, %al
	callq	fprintf@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_5
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$100, -44(%rbp)
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movl	stderr(%rip), %edi
	leaq	.L.str.2(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movl	stderr(%rip), %edi
	leaq	.L.str.3(%rip), %rsi
	movb	$0, %al
	callq	fprintf@PLT
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_12:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Layer %d - Mean: %f, Variance: %f\n"
.L.str.1:
	.asciz	"%f, "
.L.str.2:
	.asciz	".....\n"
.L.str.3:
	.asciz	"\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mean_array
	.addrsig_sym variance_array
	.addrsig_sym fprintf
	.addrsig_sym stderr