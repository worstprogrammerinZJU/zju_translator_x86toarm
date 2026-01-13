	.text
	.p2align	4, 0x90                         # -- Begin function stbiw__zlib_flushf
stbiw__zlib_flushf:                     # @stbiw__zlib_flushf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpl	$8, (%rax)
	jl	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	STBIW_UCHAR@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	stbiw__sbpush@PLT
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	shrl	$8, %ecx
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	subl	$8, %ecx
	movl	%ecx, (%rax)
	jmp	.LBB0_1
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__zlib_flushf
	.addrsig_sym stbiw__sbpush
	.addrsig_sym STBIW_UCHAR