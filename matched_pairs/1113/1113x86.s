	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function load_image_stb
.LCPI0_0:
	.quad	0x406fe00000000000              # double 255
	.text
	.globl	load_image_stb
	.p2align	4, 0x90
load_image_stb:                         # @load_image_stb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %r8d
	leaq	-24(%rbp), %rsi
	leaq	-28(%rbp), %rdx
	leaq	-32(%rbp), %rcx
	callq	stbi_load@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	stderr(%rip), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	stbi_failure_reason@PLT
	movl	-76(%rbp), %edi                 # 4-byte Reload
	movq	-72(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, %rcx
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	xorl	%edi, %edi
	callq	exit@PLT
.LBB0_2:
	cmpl	$0, -20(%rbp)
	je	.LBB0_4
# %bb.3:
	movl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB0_4:
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	make_image@PLT
	movq	%rax, -8(%rbp)
	movl	$0, -52(%rbp)
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #       Child Loop BB0_9 Depth 3
	movl	-52(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB0_16
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	$0, -48(%rbp)
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_9 Depth 3
	movl	-48(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB0_14
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	movl	$0, -44(%rbp)
.LBB0_9:                                #   Parent Loop BB0_5 Depth=1
                                        #     Parent Loop BB0_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-44(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=3
	movl	-44(%rbp), %eax
	movl	-24(%rbp), %ecx
	movl	-48(%rbp), %esi
	movl	%ecx, %edx
	imull	%esi, %edx
	addl	%edx, %eax
	movl	-28(%rbp), %edx
	imull	%edx, %ecx
	movl	-52(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -56(%rbp)
	movl	-52(%rbp), %eax
	movl	-32(%rbp), %ecx
	movl	-44(%rbp), %esi
	movl	%ecx, %edx
	imull	%esi, %edx
	addl	%edx, %eax
	movl	-24(%rbp), %edx
	imull	%edx, %ecx
	movl	-48(%rbp), %edx
	imull	%edx, %ecx
	addl	%ecx, %eax
	movl	%eax, -60(%rbp)
	movq	-40(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=3
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_9
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=2
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_7
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               #   in Loop: Header=BB0_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_5
.LBB0_16:
	movq	-40(%rbp), %rdi
	callq	free@PLT
	movq	-8(%rbp), %rax
	addq	$80, %rsp
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
	.asciz	"Cannot load image \"%s\"\nSTB Reason: %s\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi_load
	.addrsig_sym fprintf
	.addrsig_sym stbi_failure_reason
	.addrsig_sym exit
	.addrsig_sym make_image
	.addrsig_sym free
	.addrsig_sym stderr