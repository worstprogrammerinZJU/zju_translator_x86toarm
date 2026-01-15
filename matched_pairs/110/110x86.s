	.text
	.globl	do_nms_obj                      # -- Begin function do_nms_obj
	.p2align	4, 0x90
do_nms_obj:                             # @do_nms_obj
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
	movl	$0, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jg	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	-8(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	16(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	24(%rcx), %rcx
	movq	%rcx, 24(%rax)
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	-64(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-56(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-48(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movq	-40(%rbp), %rcx
	movq	%rcx, 24(%rax)
	movl	-32(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -32(%rbp)
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -24(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movl	$-1, 8(%rax)
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_7
.LBB0_10:
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	nms_comparator(%rip), %ecx
	movl	$32, %edx
	callq	qsort@PLT
	movl	$0, -24(%rbp)
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_20 Depth 3
	movl	-24(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_28
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	jne	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_27
.LBB0_14:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movl	24(%rax), %eax
	movl	%eax, -68(%rbp)
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
.LBB0_15:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_20 Depth 3
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_26
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	jne	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	jmp	.LBB0_25
.LBB0_18:                               #   in Loop: Header=BB0_15 Depth=2
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movl	24(%rax), %eax
	movl	%eax, -72(%rbp)
	movl	-68(%rbp), %edi
	movl	-72(%rbp), %esi
	callq	box_iou@PLT
	ucomiss	-20(%rbp), %xmm0
	jbe	.LBB0_24
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	$0, (%rax)
	movl	$0, -32(%rbp)
.LBB0_20:                               #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-32(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	.LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=3
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	16(%rax), %rax
	movslq	-32(%rbp), %rcx
	movq	$0, (%rax,%rcx,8)
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=3
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_20
.LBB0_23:                               #   in Loop: Header=BB0_15 Depth=2
	jmp	.LBB0_24
.LBB0_24:                               #   in Loop: Header=BB0_15 Depth=2
	jmp	.LBB0_25
.LBB0_25:                               #   in Loop: Header=BB0_15 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_15
.LBB0_26:                               #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_27
.LBB0_27:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_11
.LBB0_28:
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	nms_comparator
	.p2align	2
nms_comparator:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym qsort
	.addrsig_sym box_iou
	.addrsig_sym nms_comparator