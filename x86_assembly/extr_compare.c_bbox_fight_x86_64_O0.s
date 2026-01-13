	.text
	.globl	bbox_fight                      # -- Begin function bbox_fight
	.p2align	4, 0x90
bbox_fight:                             # @bbox_fight
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -32(%rbp)
	movl	%esi, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	-24(%rbp), %eax
	movl	%eax, -8(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movl	%r8d, -52(%rbp)
	movl	%r9d, -56(%rbp)
	movq	-40(%rbp), %rax
	movl	(%rax), %edi
	movl	-16(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	load_image_color@PLT
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	movl	-16(%rbp), %esi
	movl	-12(%rbp), %edx
	callq	load_image_color@PLT
	movq	%rax, -88(%rbp)
	movq	%rdx, -80(%rbp)
	movl	-16(%rbp), %edi
	imull	-12(%rbp), %edi
	imull	-8(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rdi
	movl	-60(%rbp), %esi
	movl	-72(%rbp), %eax
	imull	-68(%rbp), %eax
	imull	-64(%rbp), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
	movq	-96(%rbp), %rdi
	movl	-72(%rbp), %eax
	imull	-68(%rbp), %eax
	imull	-64(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movl	-76(%rbp), %esi
	movl	-88(%rbp), %eax
	imull	-84(%rbp), %eax
	imull	-80(%rbp), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
	movq	-96(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -112(%rbp)
	movq	-120(%rbp), %rdi
	movl	-112(%rbp), %esi
	callq	network_predict@PLT
	movq	%rax, -104(%rbp)
	movl	total_compares(%rip), %eax
	addl	$1, %eax
	movl	%eax, total_compares(%rip)
	movl	$0, -124(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-124(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB0_7
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -56(%rbp)
	jl	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-56(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jne	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	ucomiss	(%rax,%rcx,4), %xmm0
	seta	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -128(%rbp)
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	-124(%rbp), %edx
	movl	-128(%rbp), %ecx
	callq	bbox_update@PLT
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_6
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	.LBB0_1
.LBB0_7:
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	free_image@PLT
	movq	-88(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	free_image@PLT
	movq	-96(%rbp), %rdi
	callq	free@PLT
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	total_compares
	.p2align	2
total_compares:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym load_image_color
	.addrsig_sym calloc
	.addrsig_sym memcpy
	.addrsig_sym network_predict
	.addrsig_sym bbox_update
	.addrsig_sym free_image
	.addrsig_sym free
	.addrsig_sym total_compares