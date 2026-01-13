	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function maybe_rehash
.LCPI0_0:
	.quad	0x3fe6666666666666              # double 0.69999999999999996
.LCPI0_1:
	.quad	0x3fd6666666666666              # double 0.34999999999999998
	.text
	.p2align	4, 0x90
maybe_rehash:                           # @maybe_rehash
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_2
# %bb.1:
	movl	INIT_SIZE(%rip), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movl	INIT_SIZE(%rip), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movl	INIT_SIZE(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 16(%rax)
	jmp	.LBB0_20
.LBB0_2:
	movq	-8(%rbp), %rax
	movsd	24(%rax), %xmm1                 # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	16(%rax), %xmm0
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_4
# %bb.3:
	jmp	.LBB0_20
.LBB0_4:
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm1                 # xmm1 = mem[0],zero
	movq	-8(%rbp), %rax
	cvtsi2sdl	16(%rax), %xmm0
	movsd	.LCPI0_1(%rip), %xmm2           # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	jmp	.LBB0_7
.LBB0_6:
	movq	-8(%rbp), %rax
	movl	16(%rax), %eax
	shll	$1, %eax
	movl	%eax, -48(%rbp)                 # 4-byte Spill
.LBB0_7:
	movl	-48(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %edi
	movl	$8, %esi
	callq	calloc@PLT
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
	movl	-40(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB0_19
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-40(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	cmpq	TOMBSTONE(%rip), %rax
	jne	.LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_18
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	hash@PLT
	andl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB0_13:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	cmpq	$0, (%rax,%rcx,8)
	je	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	jmp	.LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movslq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	jmp	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_13 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	andl	-36(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_13
.LBB0_17:                               #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_18
.LBB0_18:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB0_8
.LBB0_19:
	movq	-24(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, 8(%rax)
	movl	-12(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-8(%rbp), %rax
	movsd	32(%rax), %xmm0                 # xmm0 = mem[0],zero
	movq	-8(%rbp), %rax
	movsd	%xmm0, 24(%rax)
.LBB0_20:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	INIT_SIZE
	.p2align	2
INIT_SIZE:
	.long	0                               # 0x0
	.globl	TOMBSTONE
	.p2align	3
TOMBSTONE:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_rehash
	.addrsig_sym calloc
	.addrsig_sym hash
	.addrsig_sym INIT_SIZE
	.addrsig_sym TOMBSTONE