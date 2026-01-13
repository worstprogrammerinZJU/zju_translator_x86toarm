	.text
	.globl	crc32                           # -- Begin function crc32
	.p2align	4, 0x90
crc32:                                  # @crc32
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -20(%rbp)
	movl	-20(%rbp), %eax
	xorl	$-1, %eax
	movl	%eax, -24(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -12(%rbp)
	cmpl	$0, %eax
	je	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	sarl	$8, %eax
	andl	$16777215, %eax                 # imm = 0xFFFFFF
	movq	crc32tab(%rip), %rcx
	movl	-24(%rbp), %edx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi), %esi
	xorl	%esi, %edx
	andl	$255, %edx
	movslq	%edx, %rdx
	xorl	(%rcx,%rdx,4), %eax
	movl	%eax, -24(%rbp)
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	-24(%rbp), %eax
	xorl	$-1, %eax
	movl	%eax, %eax
                                        # kill: def $rax killed $eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	crc32tab
	.p2align	3
crc32tab:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym crc32tab