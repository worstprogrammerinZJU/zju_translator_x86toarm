	.text
	.globl	make_network_boxes              # -- Begin function make_network_boxes
	.p2align	4, 0x90
make_network_boxes:                     # @make_network_boxes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movss	-12(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	callq	num_detections@PLT
	movl	%eax, -40(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_2
# %bb.1:
	movl	-40(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_2:
	movl	-40(%rbp), %edi
	movl	$16, %esi
	callq	calloc@PLT
	movq	%rax, -48(%rbp)
	movl	$0, -36(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-32(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movslq	-36(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rcx, 8(%rax)
	cmpl	$4, -28(%rbp)
	jle	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-28(%rbp), %edi
	subl	$4, %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	movslq	-36(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rcx, (%rax)
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_3
.LBB0_8:
	movq	-48(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym num_detections
	.addrsig_sym calloc