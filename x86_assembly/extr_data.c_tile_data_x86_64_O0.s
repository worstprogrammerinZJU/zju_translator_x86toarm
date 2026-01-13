	.text
	.globl	tile_data                       # -- Begin function tile_data
	.p2align	4, 0x90
tile_data:                              # @tile_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	imull	-4(%rbp), %edi
	movl	$40, %esi
	callq	calloc@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-20(%rbp), %eax
	movl	-4(%rbp), %ecx
	imull	-4(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movq	$0, -32(%rbp)
	movl	(%rax), %eax
	cltd
	idivl	-4(%rbp)
	movl	%eax, %ecx
	movq	-88(%rbp), %rax                 # 8-byte Reload
	imull	-8(%rbp), %ecx
	movl	%ecx, -64(%rbp)
	movl	4(%rax), %eax
	cltd
	idivl	-4(%rbp)
	movl	%eax, %ecx
	movq	-88(%rbp), %rax                 # 8-byte Reload
	imull	-8(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	movl	8(%rax), %eax
	movl	%eax, -56(%rbp)
	movl	-64(%rbp), %eax
	imull	-60(%rbp), %eax
	imull	$3, %eax, %eax
	movl	%eax, -52(%rbp)
	movl	-56(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movq	%rcx, -48(%rbp)
	movl	24(%rax), %edi
	callq	copy_matrix@PLT
	movl	%eax, -40(%rbp)
	movl	$0, -24(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	movl	-24(%rbp), %eax
	cmpl	8(%rcx), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-88(%rbp), %rcx                 # 8-byte Reload
	movl	-20(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	movl	%edx, %eax
	imull	(%rcx), %eax
	cltd
	idivl	-4(%rbp)
	movl	%eax, -96(%rbp)                 # 4-byte Spill
	movl	-64(%rbp), %eax
	movl	%eax, -100(%rbp)                # 4-byte Spill
	movl	(%rcx), %eax
	cltd
	idivl	-4(%rbp)
	movl	%eax, %edx
	movl	-100(%rbp), %eax                # 4-byte Reload
	subl	%edx, %eax
	movl	$2, %esi
	cltd
	idivl	%esi
	movl	%eax, %edx
	movl	-96(%rbp), %eax                 # 4-byte Reload
	subl	%edx, %eax
	movl	%eax, -68(%rbp)
	movl	-20(%rbp), %eax
	cltd
	idivl	-4(%rbp)
	imull	4(%rcx), %eax
	cltd
	idivl	-4(%rbp)
	movl	%eax, %ecx
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movl	-60(%rbp), %edx
	movl	%edx, -92(%rbp)                 # 4-byte Spill
	movl	4(%rax), %eax
	cltd
	idivl	-4(%rbp)
	movl	%eax, %edx
	movl	-92(%rbp), %eax                 # 4-byte Reload
	subl	%edx, %eax
	movl	$2, %esi
	cltd
	idivl	%esi
	movl	%eax, %edx
	movq	-88(%rbp), %rax                 # 8-byte Reload
	subl	%edx, %ecx
	movl	%ecx, -72(%rbp)
	movl	(%rax), %edi
	movl	4(%rax), %esi
	movq	16(%rax), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %ecx
	movl	$3, %edx
	callq	float_to_image@PLT
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %edi
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edx
	movl	-64(%rbp), %ecx
	movl	-60(%rbp), %r8d
	callq	crop_image@PLT
	movl	%eax, -80(%rbp)
	movl	-80(%rbp), %edx
	movq	-48(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-20(%rbp), %rax
	imulq	$40, %rax, %rax
	addq	%rax, %rdi
	leaq	-64(%rbp), %rsi
	movl	$40, %edx
	callq	memcpy@PLT
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movq	-16(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym copy_matrix
	.addrsig_sym float_to_image
	.addrsig_sym crop_image