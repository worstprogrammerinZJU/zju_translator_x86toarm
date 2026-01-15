	.text
	.globl	bbox_comparator                 # -- Begin function bbox_comparator
	.p2align	4, 0x90
bbox_comparator:                        # @bbox_comparator
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	total_compares(%rip), %eax
	addl	$1, %eax
	movl	%eax, total_compares(%rip)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movl	16(%rax), %eax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movl	16(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -80(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -92(%rbp)
	movl	-44(%rbp), %edi
	movl	-88(%rbp), %esi
	movl	-84(%rbp), %edx
	callq	load_image_color@PLT
	movq	%rax, -112(%rbp)
	movq	%rdx, -104(%rbp)
	movl	-68(%rbp), %edi
	movl	-88(%rbp), %esi
	movl	-84(%rbp), %edx
	callq	load_image_color@PLT
	movq	%rax, -128(%rbp)
	movq	%rdx, -120(%rbp)
	movl	-88(%rbp), %edi
	imull	-84(%rbp), %edi
	imull	-80(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rdi
	movl	-100(%rbp), %esi
	movl	-112(%rbp), %eax
	imull	-108(%rbp), %eax
	imull	-104(%rbp), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
	movq	-136(%rbp), %rdi
	movl	-112(%rbp), %eax
	imull	-108(%rbp), %eax
	imull	-104(%rbp), %eax
	cltq
	shlq	$2, %rax
	addq	%rax, %rdi
	movl	-116(%rbp), %esi
	movl	-128(%rbp), %eax
	imull	-124(%rbp), %eax
	imull	-120(%rbp), %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
	movq	-136(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rax, -160(%rbp)
	movl	-80(%rbp), %eax
	movl	%eax, -152(%rbp)
	movq	-160(%rbp), %rdi
	movl	-152(%rbp), %esi
	callq	network_predict@PLT
	movq	%rax, -144(%rbp)
	movq	-112(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	free_image@PLT
	movq	-128(%rbp), %rdi
	movq	-120(%rbp), %rsi
	callq	free_image@PLT
	movq	-136(%rbp), %rdi
	callq	free@PLT
	movq	-144(%rbp), %rax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-144(%rbp), %rax
	movl	-92(%rbp), %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	ucomiss	(%rax,%rcx,4), %xmm0
	jbe	.LBB0_2
# %bb.1:
	movl	$1, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	$-1, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$160, %rsp
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
	.addrsig_sym free_image
	.addrsig_sym free
	.addrsig_sym total_compares