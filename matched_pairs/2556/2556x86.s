	.text
	.globl	fgetl                           # -- Begin function fgetl
	.p2align	4, 0x90
fgetl:                                  # @fgetl
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	feof@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_18
.LBB0_2:
	movq	$512, -24(%rbp)                 # imm = 0x200
	movq	-24(%rbp), %rdi
	shlq	$0, %rdi
	callq	malloc@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	fgets@PLT
	cmpl	$0, %eax
	jne	.LBB0_4
# %bb.3:
	movq	-32(%rbp), %rdi
	callq	free@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_18
.LBB0_4:
	movq	-32(%rbp), %rdi
	callq	strlen@PLT
	movq	%rax, -40(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	$1, %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	$10, %ecx
	movb	%al, -49(%rbp)                  # 1-byte Spill
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rdi
	callq	feof@PLT
	cmpq	$0, %rax
	setne	%al
	xorb	$-1, %al
	movb	%al, -49(%rbp)                  # 1-byte Spill
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	movb	-49(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_8
	jmp	.LBB0_15
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	$1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-24(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rsi
	shlq	$0, %rsi
	callq	realloc@PLT
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-24(%rbp), %rsi
	leaq	.L.str(%rip), %rdi
	callq	printf@PLT
	movb	$0, %al
	callq	malloc_error@PLT
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-24(%rbp), %rax
	subq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	INT_MAX(%rip), %rax
	jbe	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=1
	movq	INT_MAX(%rip), %rax
	subq	$1, %rax
	movq	%rax, -48(%rbp)
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=1
	movq	-32(%rbp), %rdi
	addq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	fgets@PLT
	movq	-32(%rbp), %rdi
	callq	strlen@PLT
	movq	%rax, -40(%rbp)
	jmp	.LBB0_5
.LBB0_15:
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	$1, %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$10, %eax
	jne	.LBB0_17
# %bb.16:
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	subq	$1, %rcx
	movb	$0, (%rax,%rcx)
.LBB0_17:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_18:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%ld\n"
	.bss
	.globl	INT_MAX
	.p2align	3
INT_MAX:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym feof
	.addrsig_sym malloc
	.addrsig_sym fgets
	.addrsig_sym free
	.addrsig_sym strlen
	.addrsig_sym realloc
	.addrsig_sym printf
	.addrsig_sym malloc_error
	.addrsig_sym INT_MAX