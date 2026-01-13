	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function fill_truth
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.text
	.globl	fill_truth
	.p2align	4, 0x90
fill_truth:                             # @fill_truth
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-32(%rbp), %rdi
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	movl	%eax, %edx
	xorl	%esi, %esi
	callq	memset@PLT
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rsi
	callq	strstr@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax,%rcx,4)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	cmpl	$1, -40(%rbp)
	je	.LBB0_10
# %bb.7:
	cmpl	$1, -20(%rbp)
	jne	.LBB0_9
# %bb.8:
	cmpl	$0, -40(%rbp)
	je	.LBB0_10
.LBB0_9:
	movl	-40(%rbp), %esi
	movq	-8(%rbp), %rdx
	leaq	.L.str(%rip), %rdi
	callq	printf@PLT
.LBB0_10:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Too many or too few labels: %d, %s\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym memset
	.addrsig_sym strstr
	.addrsig_sym printf