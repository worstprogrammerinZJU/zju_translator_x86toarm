	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function fill_truth_mask
.LCPI0_0:
	.quad	0x4000000000000000              # double 2
	.text
	.globl	fill_truth_mask
	.p2align	4, 0x90
fill_truth_mask:                        # @fill_truth_mask
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$37104, %rsp                    # imm = 0x90F0
	movl	64(%rbp), %eax
	movl	56(%rbp), %eax
	movl	48(%rbp), %eax
	leaq	16(%rbp), %rax
	movq	%rax, -37064(%rbp)              # 8-byte Spill
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
	movq	%rdx, -36960(%rbp)
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	movq	-4152(%rbp), %rdi
	leaq	-36944(%rbp), %rcx
	leaq	.L.str.8(%rip), %rsi
	leaq	-36948(%rbp), %rdx
	callq	fscanf@PLT
	movl	%eax, %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$2, %ecx
	movb	%al, -37065(%rbp)               # 1-byte Spill
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-36952(%rbp), %eax
	cmpl	-12(%rbp), %eax
	setl	%al
	movb	%al, -37065(%rbp)               # 1-byte Spill
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movb	-37065(%rbp), %al               # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_15
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$0, -36972(%rbp)
	leaq	-36944(%rbp), %rdi
	leaq	-36972(%rbp), %rsi
	xorl	%edx, %edx
	callq	read_intlist@PLT
	movq	%rax, -36984(%rbp)
	movq	-36984(%rbp), %rdx
	movl	-36972(%rbp), %ecx
	movq	-36968(%rbp), %rdi
	movq	-36960(%rbp), %rsi
	callq	load_rle@PLT
                                        # kill: def $ecx killed $eax
	movq	-37064(%rbp), %rax              # 8-byte Reload
	movl	24(%rax), %edx
	movl	20(%rax), %ecx
	movl	16(%rax), %r8d
	movl	12(%rax), %r9d
	movl	8(%rax), %r11d
	movl	4(%rax), %r10d
	movl	(%rax), %eax
	movq	-36968(%rbp), %rdi
	movq	-36960(%rbp), %rsi
	movl	%r11d, (%rsp)
	movl	%r10d, 8(%rsp)
	movl	%eax, 16(%rsp)
	callq	rotate_crop_image@PLT
	movq	%rax, -37000(%rbp)
	movq	%rdx, -36992(%rbp)
	cmpl	$0, 48(%rbp)
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-37000(%rbp), %rdi
	movq	-36992(%rbp), %rsi
	callq	flip_image@PLT
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-37000(%rbp), %rdi
	movq	-36992(%rbp), %rsi
	callq	bound_image@PLT
	movq	%rax, -37016(%rbp)
	movq	%rdx, -37008(%rbp)
	cmpl	$0, -37016(%rbp)
	jle	.LBB0_14
# %bb.9:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-37012(%rbp), %edx
	movl	-37008(%rbp), %ecx
	movl	-37016(%rbp), %r8d
	movl	-37004(%rbp), %r9d
	movq	-37000(%rbp), %rdi
	movq	-36992(%rbp), %rsi
	callq	crop_image@PLT
	movq	%rax, -37032(%rbp)
	movq	%rdx, -37024(%rbp)
	movl	56(%rbp), %edx
	movl	64(%rbp), %ecx
	movq	-37032(%rbp), %rdi
	movq	-37024(%rbp), %rsi
	callq	resize_image@PLT
	movq	%rax, -37048(%rbp)
	movq	%rdx, -37040(%rbp)
	cvtsi2sdl	-37012(%rbp), %xmm0
	cvtsi2sdl	-37016(%rbp), %xmm1
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-37000(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movl	-36952(%rbp), %ecx
	movl	56(%rbp), %edx
	imull	64(%rbp), %edx
	addl	$4, %edx
	addl	$1, %edx
	imull	%edx, %ecx
	addl	$0, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	cvtsi2sdl	-37008(%rbp), %xmm0
	cvtsi2sdl	-37004(%rbp), %xmm1
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	cvtsi2sdl	-36996(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-24(%rbp), %rax
	movl	-36952(%rbp), %ecx
	movl	56(%rbp), %edx
	imull	64(%rbp), %edx
	addl	$4, %edx
	addl	$1, %edx
	imull	%edx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movl	-37016(%rbp), %eax
	cltd
	idivl	-37000(%rbp)
	cvtsi2ss	%eax, %xmm0
	movq	-24(%rbp), %rax
	movl	-36952(%rbp), %ecx
	movl	56(%rbp), %edx
	imull	64(%rbp), %edx
	addl	$4, %edx
	addl	$1, %edx
	imull	%edx, %ecx
	addl	$2, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movl	-37004(%rbp), %eax
	cltd
	idivl	-36996(%rbp)
	cvtsi2ss	%eax, %xmm0
	movq	-24(%rbp), %rax
	movl	-36952(%rbp), %ecx
	movl	56(%rbp), %edx
	imull	64(%rbp), %edx
	addl	$4, %edx
	addl	$1, %edx
	imull	%edx, %ecx
	addl	$3, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movl	$0, -37052(%rbp)
.LBB0_10:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-37052(%rbp), %eax
	movl	56(%rbp), %ecx
	imull	64(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	movq	-37040(%rbp), %rax
	movslq	-37052(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movl	-36952(%rbp), %ecx
	movl	56(%rbp), %edx
	imull	64(%rbp), %edx
	addl	$4, %edx
	addl	$1, %edx
	imull	%edx, %ecx
	addl	$4, %ecx
	addl	-37052(%rbp), %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
# %bb.12:                               #   in Loop: Header=BB0_10 Depth=2
	movl	-37052(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -37052(%rbp)
	jmp	.LBB0_10
.LBB0_13:                               #   in Loop: Header=BB0_3 Depth=1
	cvtsi2ssl	-36948(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movl	-36952(%rbp), %ecx
	movl	56(%rbp), %edx
	imull	64(%rbp), %edx
	addl	$4, %edx
	addl	$1, %edx
	imull	%edx, %ecx
	addl	$4, %ecx
	movl	56(%rbp), %edx
	imull	64(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movq	-37032(%rbp), %rdi
	movq	-37024(%rbp), %rsi
	callq	free_image@PLT
	movq	-37048(%rbp), %rdi
	movq	-37040(%rbp), %rsi
	callq	free_image@PLT
	movl	-36952(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36952(%rbp)
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-37000(%rbp), %rdi
	movq	-36992(%rbp), %rsi
	callq	free_image@PLT
	movq	-36984(%rbp), %rdi
	callq	free@PLT
	jmp	.LBB0_3
.LBB0_15:
	movq	-4152(%rbp), %rdi
	callq	fclose@PLT
	movq	-36968(%rbp), %rdi
	movq	-36960(%rbp), %rsi
	callq	free_image@PLT
	addq	$37104, %rsp                    # imm = 0x90F0
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
	.addrsig_sym bound_image
	.addrsig_sym crop_image
	.addrsig_sym resize_image
	.addrsig_sym free_image
	.addrsig_sym free
	.addrsig_sym fclose