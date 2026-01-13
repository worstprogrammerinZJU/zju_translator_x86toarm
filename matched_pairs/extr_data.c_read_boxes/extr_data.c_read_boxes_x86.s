	.text
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function read_boxes
.LCPI0_0:
	.long	0x40000000                      # float 2
	.text
	.globl	read_boxes
	.p2align	4, 0x90
read_boxes:                             # @read_boxes
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	file_error@PLT
.LBB0_2:
	movl	$0, -48(%rbp)
	movl	$64, -52(%rbp)
	movl	-52(%rbp), %edi
	movl	$36, %esi
	callq	calloc@PLT
	movq	%rax, -64(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	leaq	-44(%rbp), %rdx
	leaq	-28(%rbp), %rcx
	leaq	-32(%rbp), %r8
	leaq	-40(%rbp), %r9
	leaq	-36(%rbp), %rax
	movq	%rax, (%rsp)
	callq	fscanf@PLT
	cmpl	$5, %eax
	jne	.LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-52(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -52(%rbp)
	movq	-64(%rbp), %rdi
	movslq	-52(%rbp), %rax
	imulq	$36, %rax, %rax
	movl	%eax, %esi
	callq	realloc@PLT
	movq	%rax, -64(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-44(%rbp), %ecx
	movq	-64(%rbp), %rax
	movslq	-48(%rbp), %rdx
	imulq	$36, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, (%rax)
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-64(%rbp), %rax
	movslq	-48(%rbp), %rcx
	imulq	$36, %rcx, %rcx
	addq	%rcx, %rax
	movss	%xmm0, 4(%rax)
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-64(%rbp), %rax
	movslq	-48(%rbp), %rcx
	imulq	$36, %rcx, %rcx
	addq	%rcx, %rax
	movss	%xmm0, 8(%rax)
	movss	-36(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-64(%rbp), %rax
	movslq	-48(%rbp), %rcx
	imulq	$36, %rcx, %rcx
	addq	%rcx, %rax
	movss	%xmm0, 12(%rax)
	movss	-40(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movq	-64(%rbp), %rax
	movslq	-48(%rbp), %rcx
	imulq	$36, %rcx, %rcx
	addq	%rcx, %rax
	movss	%xmm0, 16(%rax)
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movq	-64(%rbp), %rax
	movslq	-48(%rbp), %rcx
	imulq	$36, %rcx, %rcx
	addq	%rcx, %rax
	movss	%xmm0, 20(%rax)
	movss	-28(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-40(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movq	-64(%rbp), %rax
	movslq	-48(%rbp), %rcx
	imulq	$36, %rcx, %rcx
	addq	%rcx, %rax
	movss	%xmm0, 24(%rax)
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movq	-64(%rbp), %rax
	movslq	-48(%rbp), %rcx
	imulq	$36, %rcx, %rcx
	addq	%rcx, %rax
	movss	%xmm0, 28(%rax)
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	-36(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	movq	-64(%rbp), %rax
	movslq	-48(%rbp), %rcx
	imulq	$36, %rcx, %rcx
	addq	%rcx, %rax
	movss	%xmm0, 32(%rax)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_3
.LBB0_7:
	movq	-24(%rbp), %rdi
	callq	fclose@PLT
	movl	-48(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-64(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
.L.str.1:
	.asciz	"%d %f %f %f %f"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fopen
	.addrsig_sym file_error
	.addrsig_sym calloc
	.addrsig_sym fscanf
	.addrsig_sym realloc
	.addrsig_sym fclose