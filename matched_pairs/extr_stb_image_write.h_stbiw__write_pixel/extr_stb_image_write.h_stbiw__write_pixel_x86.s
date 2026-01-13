	.text
	.p2align	4, 0x90                         # -- Begin function stbiw__write_pixel
stbiw__write_pixel:                     # @stbiw__write_pixel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movw	.L__const.stbiw__write_pixel.bg(%rip), %ax
	movw	%ax, -35(%rbp)
	movb	.L__const.stbiw__write_pixel.bg+2(%rip), %al
	movb	%al, -33(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movq	-32(%rbp), %rsi
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movl	$1, %edx
	callq	*%rax
.LBB0_2:
	movl	-16(%rbp), %eax
	movl	%eax, -48(%rbp)                 # 4-byte Spill
	addl	$-1, %eax
	subl	$2, %eax
	jb	.LBB0_3
	jmp	.LBB0_18
.LBB0_18:
	movl	-48(%rbp), %eax                 # 4-byte Reload
	subl	$3, %eax
	je	.LBB0_14
	jmp	.LBB0_19
.LBB0_19:
	movl	-48(%rbp), %eax                 # 4-byte Reload
	subl	$4, %eax
	je	.LBB0_7
	jmp	.LBB0_15
.LBB0_3:
	cmpl	$0, -24(%rbp)
	je	.LBB0_5
# %bb.4:
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movb	(%rax), %dl
	movq	-32(%rbp), %rax
	movb	(%rax), %cl
	movq	-32(%rbp), %rax
	movzbl	%dl, %esi
	movzbl	%cl, %edx
	movzbl	(%rax), %ecx
	callq	stbiw__write3@PLT
	jmp	.LBB0_6
.LBB0_5:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movq	-32(%rbp), %rsi
	movl	$1, %edx
	callq	*%rax
.LBB0_6:
	jmp	.LBB0_15
.LBB0_7:
	cmpl	$0, -20(%rbp)
	jne	.LBB0_13
# %bb.8:
	movl	$0, -44(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$3, -44(%rbp)
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movslq	-44(%rbp), %rax
	movzbl	-35(%rbp,%rax), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %eax
	movslq	-44(%rbp), %rcx
	movzbl	-35(%rbp,%rcx), %ecx
	subl	%ecx, %eax
	movq	-32(%rbp), %rcx
	movzbl	3(%rcx), %ecx
	imull	%ecx, %eax
	movl	$255, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-52(%rbp), %eax                 # 4-byte Reload
	addl	%ecx, %eax
	movb	%al, %cl
	movslq	-44(%rbp), %rax
	movb	%cl, -38(%rbp,%rax)
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_9
.LBB0_12:
	movq	-8(%rbp), %rdi
	movl	$1, %eax
	subl	-12(%rbp), %eax
	cltq
	movb	-38(%rbp,%rax), %dl
	movb	-37(%rbp), %cl
	movl	-12(%rbp), %eax
	addl	$1, %eax
	cltq
	movzbl	%dl, %esi
	movzbl	%cl, %edx
	movzbl	-38(%rbp,%rax), %ecx
	callq	stbiw__write3@PLT
	jmp	.LBB0_15
.LBB0_13:
	jmp	.LBB0_14
.LBB0_14:
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	$1, %ecx
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %sil
	movq	-32(%rbp), %rax
	movb	1(%rax), %dl
	movq	-32(%rbp), %rax
	movl	-12(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movzbl	%sil, %esi
	movzbl	%dl, %edx
	movzbl	(%rax,%rcx), %ecx
	callq	stbiw__write3@PLT
.LBB0_15:
	cmpl	$0, -20(%rbp)
	jle	.LBB0_17
# %bb.16:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edi
	movq	-32(%rbp), %rsi
	movl	-16(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rsi
	movl	$1, %edx
	callq	*%rax
.LBB0_17:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
.L__const.stbiw__write_pixel.bg:
	.ascii	"\377\000\377"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__write_pixel
	.addrsig_sym stbiw__write3