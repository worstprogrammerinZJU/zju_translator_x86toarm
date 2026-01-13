	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function get_current_rate
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_1:
	.long	0x3f800000                      # float 1
	.text
	.globl	get_current_rate
	.p2align	4, 0x90
get_current_rate:                       # @get_current_rate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	get_current_batch@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	jae	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movss	8(%rax), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)                # 4-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	shrq	%rdx
	movl	%eax, %ecx
	andl	$1, %ecx
                                        # kill: def $rcx killed $ecx
	orq	%rdx, %rcx
	cvtsi2ss	%rcx, %xmm0
	addss	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm1
	movss	%xmm1, -40(%rbp)                # 4-byte Spill
	testq	%rax, %rax
	movss	%xmm0, -36(%rbp)                # 4-byte Spill
	js	.LBB0_20
# %bb.19:
	movss	-40(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -36(%rbp)                # 4-byte Spill
.LBB0_20:
	movq	-56(%rbp), %rax                 # 8-byte Reload
	movss	-36(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -68(%rbp)                # 4-byte Spill
	movq	(%rax), %rax
	movq	%rax, %rdx
	shrq	%rdx
	movl	%eax, %ecx
	andl	$1, %ecx
                                        # kill: def $rcx killed $ecx
	orq	%rdx, %rcx
	cvtsi2ss	%rcx, %xmm0
	addss	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm1
	movss	%xmm1, -64(%rbp)                # 4-byte Spill
	testq	%rax, %rax
	movss	%xmm0, -60(%rbp)                # 4-byte Spill
	js	.LBB0_22
# %bb.21:
	movss	-64(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -60(%rbp)                # 4-byte Spill
.LBB0_22:
	movss	-68(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	-60(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	pow@PLT
	movaps	%xmm0, %xmm1
	movss	-44(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_17
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	24(%rax), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)                 # 8-byte Spill
	subl	$6, %eax
	ja	.LBB0_16
# %bb.18:
	movq	-80(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_3:
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_17
.LBB0_4:
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -84(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movl	28(%rax), %edi
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	xorl	%edx, %edx
                                        # kill: def $rdx killed $edx
	divq	32(%rcx)
	movq	%rax, %rsi
	callq	pow@PLT
	movaps	%xmm0, %xmm1
	movss	-84(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_17
.LBB0_5:
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	40(%rcx), %eax
	jge	.LBB0_11
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	cmpq	-24(%rbp), %rax
	jbe	.LBB0_9
# %bb.8:
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_17
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	mulss	-32(%rbp), %xmm0
	movss	%xmm0, -32(%rbp)
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_6
.LBB0_11:
	movss	-32(%rbp), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_17
.LBB0_12:
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -88(%rbp)                # 4-byte Spill
	movq	-16(%rbp), %rax
	movl	64(%rax), %edi
	movq	-24(%rbp), %rsi
	callq	pow@PLT
	movaps	%xmm0, %xmm1
	movss	-88(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_17
.LBB0_13:
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -100(%rbp)               # 4-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, %rdx
	shrq	%rdx
	movl	%eax, %ecx
	andl	$1, %ecx
                                        # kill: def $rcx killed $ecx
	orq	%rdx, %rcx
	cvtsi2ss	%rcx, %xmm0
	addss	%xmm0, %xmm0
	cvtsi2ss	%rax, %xmm1
	movss	%xmm1, -96(%rbp)                # 4-byte Spill
	testq	%rax, %rax
	movss	%xmm0, -92(%rbp)                # 4-byte Spill
	js	.LBB0_24
# %bb.23:
	movss	-96(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -92(%rbp)                # 4-byte Spill
.LBB0_24:
	movss	-92(%rbp), %xmm1                # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movq	-16(%rbp), %rax
	divss	68(%rax), %xmm1
	movss	.LCPI0_1(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	subss	%xmm1, %xmm0
	cvttss2si	%xmm0, %edi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	pow@PLT
	movaps	%xmm0, %xmm1
	movss	-100(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_17
.LBB0_14:
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -104(%rbp)               # 4-byte Spill
	xorl	%edi, %edi
	movl	$1, %esi
	callq	rand_uniform@PLT
	movl	%eax, %edi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	pow@PLT
	movaps	%xmm0, %xmm1
	movss	-104(%rbp), %xmm0               # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_17
.LBB0_15:
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)               # 8-byte Spill
	movq	-16(%rbp), %rax
	movslq	64(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	-16(%rbp), %rdx
	subq	32(%rdx), %rcx
	imulq	%rcx, %rax
	movl	%eax, %edi
	callq	exp@PLT
	movsd	-112(%rbp), %xmm0               # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsi2sd	%eax, %xmm1
	movsd	.LCPI0_0(%rip), %xmm2           # xmm2 = mem[0],zero
	addsd	%xmm1, %xmm2
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.LBB0_17
.LBB0_16:
	movl	stderr(%rip), %edi
	leaq	.L.str(%rip), %rsi
	callq	fprintf@PLT
	movq	-16(%rbp), %rax
	movss	8(%rax), %xmm0                  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
.LBB0_17:
	movss	-4(%rbp), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_15-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_12-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
                                        # -- End function
	.bss
	.globl	stderr
	.p2align	2
stderr:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Policy is weird!\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_current_batch
	.addrsig_sym pow
	.addrsig_sym rand_uniform
	.addrsig_sym exp
	.addrsig_sym fprintf
	.addrsig_sym stderr