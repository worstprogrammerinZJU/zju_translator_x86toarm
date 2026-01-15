	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function fill_truth_iseg
.LCPI0_0:
	.long	0xbf800000                      # float -1
	.text
	.globl	fill_truth_iseg
	.p2align	4, 0x90
fill_truth_iseg:                        # @fill_truth_iseg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$37040, %rsp                    # imm = 0x90B0
	movl	64(%rbp), %eax
	movl	56(%rbp), %eax
	movl	48(%rbp), %eax
	leaq	16(%rbp), %rax
	movq	%rax, -37008(%rbp)              # 8-byte Spill
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movl	%r9d, -36(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-4144(%rbp), %rcx
	leaq	.L.str(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4144(%rbp), %rdi
	leaq	-4144(%rbp), %rcx
	leaq	.L.str.2(%rip), %rsi
	leaq	.L.str.1(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4144(%rbp), %rdi
	leaq	-4144(%rbp), %rcx
	leaq	.L.str.3(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4144(%rbp), %rdi
	leaq	-4144(%rbp), %rcx
	leaq	.L.str.5(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4144(%rbp), %rdi
	leaq	-4144(%rbp), %rcx
	leaq	.L.str.6(%rip), %rsi
	leaq	.L.str.4(%rip), %rdx
	callq	find_replace@PLT
	leaq	-4144(%rbp), %rdi
	leaq	.L.str.7(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, -4152(%rbp)
	cmpq	$0, -4152(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	-4144(%rbp), %rdi
	callq	file_error@PLT
.LBB0_2:
	movl	$0, -36952(%rbp)
	movl	-32(%rbp), %edi
	movl	-36(%rbp), %esi
	movl	$1, %edx
	callq	make_image@PLT
	movq	%rax, -36968(%rbp)
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	movq	-4152(%rbp), %rdi
	leaq	-36944(%rbp), %rcx
	leaq	.L.str.8(%rip), %rsi
	leaq	-36948(%rbp), %rdx
	callq	fscanf@PLT
	movl	%eax, %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$2, %ecx
	movb	%al, -37009(%rbp)               # 1-byte Spill
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-36952(%rbp), %eax
	cmpl	-12(%rbp), %eax
	setl	%al
	movb	%al, -37009(%rbp)               # 1-byte Spill
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movb	-37009(%rbp), %al               # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_13
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$0, -36972(%rbp)
	leaq	-36944(%rbp), %rdi
	leaq	-36972(%rbp), %rsi
	xorl	%edx, %edx
	callq	read_intlist@PLT
	movq	%rax, -36984(%rbp)
	movq	-36984(%rbp), %rsi
	movl	-36972(%rbp), %edx
	movq	-36968(%rbp), %rdi
	callq	load_rle@PLT
                                        # kill: def $ecx killed $eax
	movq	-37008(%rbp), %rax              # 8-byte Reload
	movl	24(%rax), %esi
	movl	20(%rax), %edx
	movl	16(%rax), %ecx
	movl	12(%rax), %r8d
	movl	8(%rax), %r9d
	movl	4(%rax), %r10d
	movl	(%rax), %eax
	movq	-36968(%rbp), %rdi
	movl	%r10d, (%rsp)
	movl	%eax, 8(%rsp)
	callq	rotate_crop_image@PLT
	movq	%rax, -36992(%rbp)
	cmpl	$0, 48(%rbp)
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-36992(%rbp), %rdi
	callq	flip_image@PLT
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	56(%rbp), %esi
	movl	64(%rbp), %edx
	movq	-36992(%rbp), %rdi
	callq	resize_image@PLT
	movq	%rax, -37000(%rbp)
	cvtsi2ssl	-36948(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movl	-36952(%rbp), %ecx
	movl	56(%rbp), %edx
	imull	64(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movl	$0, -36956(%rbp)
.LBB0_9:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36956(%rbp), %eax
	movl	56(%rbp), %ecx
	imull	64(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-37000(%rbp), %rax
	movslq	-36956(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movl	-36952(%rbp), %ecx
	movl	56(%rbp), %edx
	imull	64(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	addl	$1, %ecx
	addl	-36956(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=2
	movl	-36956(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36956(%rbp)
	jmp	.LBB0_9
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	movl	-36952(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36952(%rbp)
	movq	-37000(%rbp), %rdi
	callq	free_image@PLT
	movq	-36992(%rbp), %rdi
	callq	free_image@PLT
	movq	-36984(%rbp), %rdi
	callq	free@PLT
	jmp	.LBB0_3
.LBB0_13:
	movl	-36952(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_15
# %bb.14:
	movq	-24(%rbp), %rax
	movl	-36952(%rbp), %ecx
	movl	56(%rbp), %edx
	imull	64(%rbp), %edx
	addl	$1, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rcx
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax,%rcx,4)
.LBB0_15:
	movq	-4152(%rbp), %rdi
	callq	fclose@PLT
	movq	-36968(%rbp), %rdi
	callq	free_image@PLT
	addq	$37040, %rsp                    # imm = 0x90B0
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"images"
.L.str.1:
	.asciz	"mask"
.L.str.2:
	.asciz	"JPEGImages"
.L.str.3:
	.asciz	".jpg"
.L.str.4:
	.asciz	".txt"
.L.str.5:
	.asciz	".JPG"
.L.str.6:
	.asciz	".JPEG"
.L.str.7:
	.asciz	"r"
.L.str.8:
	.asciz	"%d %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym find_replace
	.addrsig_sym fopen
	.addrsig_sym file_error
	.addrsig_sym make_image
	.addrsig_sym fscanf
	.addrsig_sym read_intlist
	.addrsig_sym load_rle
	.addrsig_sym rotate_crop_image
	.addrsig_sym flip_image
	.addrsig_sym resize_image
	.addrsig_sym free_image
	.addrsig_sym free
	.addrsig_sym fclose