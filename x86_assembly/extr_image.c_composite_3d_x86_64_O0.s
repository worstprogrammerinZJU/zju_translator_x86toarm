	.text
	.globl	composite_3d                    # -- Begin function composite_3d
	.p2align	4, 0x90
composite_3d:                           # @composite_3d
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$256, %rsp                      # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rax
	movq	%rax, -24(%rbp)
.LBB0_2:
	movq	-8(%rbp), %rsi
	leaq	-56(%rbp), %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	load_image@PLT
	movq	-16(%rbp), %rsi
	leaq	-80(%rbp), %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movl	%r8d, %ecx
	callq	load_image@PLT
	xorl	%eax, %eax
	subl	-56(%rbp), %eax
	movl	$100, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %edi
	movl	-56(%rbp), %eax
	movl	$100, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %esi
	leaq	-56(%rbp), %rcx
	leaq	-80(%rbp), %rax
	movq	(%rcx), %rdx
	movq	%rdx, (%rsp)
	movq	8(%rcx), %rdx
	movq	%rdx, 8(%rsp)
	movq	16(%rcx), %rcx
	movq	%rcx, 16(%rsp)
	movq	(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 32(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 40(%rsp)
	callq	best_3d_shift_r@PLT
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %edx
	movl	-76(%rbp), %ecx
	movl	-80(%rbp), %r8d
	leaq	-112(%rbp), %rdi
	leaq	-80(%rbp), %rax
	movl	$10, %esi
	movq	(%rax), %r9
	movq	%r9, (%rsp)
	movq	8(%rax), %r9
	movq	%r9, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	crop_image@PLT
	movq	-96(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-52(%rbp), %edx
	imull	-56(%rbp), %edx
	imull	-48(%rbp), %edx
	movl	$100, %ecx
	callq	dist_array@PLT
	movss	%xmm0, -116(%rbp)
	movl	-84(%rbp), %edx
	movl	-76(%rbp), %ecx
	movl	-80(%rbp), %r8d
	leaq	-144(%rbp), %rdi
	leaq	-80(%rbp), %rax
	movl	$4294967286, %esi               # imm = 0xFFFFFFF6
	movq	(%rax), %r9
	movq	%r9, (%rsp)
	movq	8(%rax), %r9
	movq	%r9, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	crop_image@PLT
	movq	-128(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movl	-52(%rbp), %edx
	imull	-56(%rbp), %edx
	imull	-48(%rbp), %edx
	movl	$100, %ecx
	callq	dist_array@PLT
	movss	%xmm0, -148(%rbp)
	movss	-148(%rbp), %xmm1               # xmm1 = mem[0],zero,zero,zero
	movss	-116(%rbp), %xmm0               # xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_5
# %bb.3:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB0_4
	jmp	.LBB0_5
.LBB0_4:
	movq	-56(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -80(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-160(%rbp), %rax
	movq	%rax, -64(%rbp)
	xorl	%eax, %eax
	subl	-84(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-84(%rbp), %esi
	leaq	.L.str.1(%rip), %rdi
	callq	printf@PLT
	jmp	.LBB0_6
.LBB0_5:
	movl	-84(%rbp), %esi
	leaq	.L.str.2(%rip), %rdi
	callq	printf@PLT
.LBB0_6:
	movl	-28(%rbp), %esi
	movl	-84(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-56(%rbp), %r8d
	leaq	-200(%rbp), %rdi
	leaq	-80(%rbp), %rax
	movq	(%rax), %r9
	movq	%r9, (%rsp)
	movq	8(%rax), %r9
	movq	%r9, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	crop_image@PLT
	movl	$0, -204(%rbp)
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	-204(%rbp), %eax
	movl	-196(%rbp), %ecx
	imull	-200(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-40(%rbp), %rax
	movslq	-204(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-184(%rbp), %rax
	movslq	-204(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movl	-204(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB0_7
.LBB0_10:
	movq	-24(%rbp), %rdi
	leaq	-200(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	callq	save_image@PLT
	addq	$256, %rsp                      # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"out"
.L.str.1:
	.asciz	"swapped, %d\n"
.L.str.2:
	.asciz	"%d\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym load_image
	.addrsig_sym best_3d_shift_r
	.addrsig_sym crop_image
	.addrsig_sym dist_array
	.addrsig_sym printf
	.addrsig_sym save_image