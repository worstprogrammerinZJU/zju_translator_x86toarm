	.text
	.p2align	4, 0x90                         # -- Begin function clean
clean:                                  # @clean
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movb	(%rax), %al
	subb	$47, %al
	sete	%al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	PATH_MAX(%rip), %eax
	movl	%eax, %ecx
	movq	%rsp, %rax
	movq	%rax, -16(%rbp)
	movq	%rcx, %rdx
	addq	$15, %rdx
	andq	$-16, %rdx
	movq	%rsp, %rax
	subq	%rdx, %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	%rax, %rsp
	movq	%rcx, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -32(%rbp)
	movb	$47, (%rax)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
                                        #     Child Loop BB0_14 Depth 2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$47, %eax
	jne	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rsi
	leaq	.L.str(%rip), %rdi
	movl	$2, %edx
	callq	memcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rsi
	leaq	.L.str.1(%rip), %rdi
	movl	$3, %edx
	callq	memcmp@PLT
	cmpl	$0, %eax
	jne	.LBB0_13
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rcx                 # 8-byte Reload
	movq	-8(%rbp), %rax
	addq	$3, %rax
	movq	%rax, -8(%rbp)
	movq	-32(%rbp), %rax
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
.LBB0_9:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	movsbl	-1(%rax), %eax
	cmpl	$47, %eax
	je	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=2
	movq	-32(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB0_9
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_14
.LBB0_14:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$47, %ecx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	je	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	movq	-8(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	setne	%al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=2
	movb	-41(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_17
	jmp	.LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=2
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	(%rax), %cl
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB0_14
.LBB0_18:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$47, %eax
	jne	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	(%rax), %cl
	movq	-32(%rbp), %rax
	movq	%rax, %rdx
	addq	$1, %rdx
	movq	%rdx, -32(%rbp)
	movb	%cl, (%rax)
	jmp	.LBB0_1
.LBB0_20:
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	callq	strdup@PLT
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsp
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	PATH_MAX
	.p2align	2
PATH_MAX:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"./"
.L.str.1:
	.asciz	"../"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym clean
	.addrsig_sym assert
	.addrsig_sym memcmp
	.addrsig_sym strdup
	.addrsig_sym PATH_MAX