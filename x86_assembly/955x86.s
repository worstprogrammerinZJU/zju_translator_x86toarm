	.text
	.globl	time_random_matrix              # -- Begin function time_random_matrix
	.p2align	4, 0x90
time_random_matrix:                     # @time_random_matrix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$152, %rsp
	movl	%edi, -28(%rbp)
	movl	%esi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB0_2
# %bb.1:
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	callq	random_matrix@PLT
	movq	%rax, -56(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	-40(%rbp), %edi
	movl	-36(%rbp), %esi
	callq	random_matrix@PLT
	movq	%rax, -56(%rbp)
.LBB0_3:
	cmpl	$0, -28(%rbp)
	jne	.LBB0_5
# %bb.4:
	movl	-40(%rbp), %eax
	movl	%eax, -116(%rbp)                # 4-byte Spill
	jmp	.LBB0_6
.LBB0_5:
	movl	-36(%rbp), %eax
	movl	%eax, -116(%rbp)                # 4-byte Spill
.LBB0_6:
	movl	-116(%rbp), %eax                # 4-byte Reload
	movl	%eax, -60(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.LBB0_8
# %bb.7:
	movl	-40(%rbp), %edi
	movl	-44(%rbp), %esi
	callq	random_matrix@PLT
	movq	%rax, -72(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	movl	-44(%rbp), %edi
	movl	-40(%rbp), %esi
	callq	random_matrix@PLT
	movq	%rax, -72(%rbp)
.LBB0_9:
	cmpl	$0, -32(%rbp)
	jne	.LBB0_11
# %bb.10:
	movl	-44(%rbp), %eax
	movl	%eax, -120(%rbp)                # 4-byte Spill
	jmp	.LBB0_12
.LBB0_11:
	movl	-40(%rbp), %eax
	movl	%eax, -120(%rbp)                # 4-byte Spill
.LBB0_12:
	movl	-120(%rbp), %eax                # 4-byte Reload
	movl	%eax, -76(%rbp)
	movl	-36(%rbp), %edi
	movl	-44(%rbp), %esi
	callq	random_matrix@PLT
	movq	%rax, -88(%rbp)
	movb	$0, %al
	callq	clock@PLT
	movq	%rax, -104(%rbp)
	movl	$0, -92(%rbp)
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	cmpl	$10, -92(%rbp)
	jge	.LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	movl	-28(%rbp), %edi
	movl	-32(%rbp), %esi
	movl	-36(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-40(%rbp), %r8d
	movq	-56(%rbp), %r15
	movl	-60(%rbp), %r14d
	movq	-72(%rbp), %rbx
	movl	-76(%rbp), %r11d
	movq	-88(%rbp), %r10
	movl	-44(%rbp), %eax
	movl	$1, %r9d
	movq	%r15, (%rsp)
	movl	%r14d, 8(%rsp)
	movq	%rbx, 16(%rsp)
	movl	%r11d, 24(%rsp)
	movl	$1, 32(%rsp)
	movq	%r10, 40(%rsp)
	movl	%eax, 48(%rsp)
	callq	gemm_cpu@PLT
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=1
	movl	-92(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -92(%rbp)
	jmp	.LBB0_13
.LBB0_16:
	movb	$0, %al
	callq	clock@PLT
	movq	%rax, -112(%rbp)
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-40(%rbp), %ecx
	movl	-44(%rbp), %r8d
	movl	-28(%rbp), %r9d
	movl	-32(%rbp), %eax
	movq	-112(%rbp), %rdi
	subq	-104(%rbp), %rdi
	cvtsi2ss	%rdi, %xmm0
	divss	CLOCKS_PER_SEC(%rip), %xmm0
	leaq	.L.str(%rip), %rdi
	movl	%eax, (%rsp)
	callq	printf@PLT
	movq	-56(%rbp), %rdi
	callq	free@PLT
	movq	-72(%rbp), %rdi
	callq	free@PLT
	movq	-88(%rbp), %rdi
	callq	free@PLT
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Matrix Multiplication %dx%d * %dx%d, TA=%d, TB=%d: %lf ms\n"
	.bss
	.globl	CLOCKS_PER_SEC
	.p2align	2
CLOCKS_PER_SEC:
	.long	0x00000000                      # float 0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym random_matrix
	.addrsig_sym clock
	.addrsig_sym gemm_cpu
	.addrsig_sym printf
	.addrsig_sym free
	.addrsig_sym CLOCKS_PER_SEC