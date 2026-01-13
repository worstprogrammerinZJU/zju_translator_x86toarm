	.text
	.globl	block_take_imports              # -- Begin function block_take_imports
	.p2align	4, 0x90
block_take_imports:                     # @block_take_imports
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	jv_array@PLT
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, (%rcx)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	je	.LBB0_6
# %bb.1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	TOP(%rip), %rcx
	movb	%al, -25(%rbp)                  # 1-byte Spill
	jne	.LBB0_6
# %bb.2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, 8(%rcx)
	movb	%al, -25(%rbp)                  # 1-byte Spill
	je	.LBB0_6
# %bb.3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rcx
	movb	$1, %al
	cmpq	MODULEMETA(%rip), %rcx
	movb	%al, -26(%rbp)                  # 1-byte Spill
	je	.LBB0_5
# %bb.4:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	DEPS(%rip), %rax
	sete	%al
	movb	%al, -26(%rbp)                  # 1-byte Spill
.LBB0_5:
	movb	-26(%rbp), %al                  # 1-byte Reload
	movb	%al, -25(%rbp)                  # 1-byte Spill
.LBB0_6:
	movb	-25(%rbp), %al                  # 1-byte Reload
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, (%rcx)
	movb	%al, -27(%rbp)                  # 1-byte Spill
	je	.LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rcx
	movb	$1, %al
	cmpq	MODULEMETA(%rip), %rcx
	movb	%al, -28(%rbp)                  # 1-byte Spill
	je	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	DEPS(%rip), %rax
	sete	%al
	movb	%al, -28(%rbp)                  # 1-byte Spill
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=1
	movb	-28(%rbp), %al                  # 1-byte Reload
	movb	%al, -27(%rbp)                  # 1-byte Spill
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	movb	-27(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_12
	jmp	.LBB0_15
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-8(%rbp), %rdi
	callq	block_take@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	DEPS(%rip), %rax
	jne	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_7 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rax
	movl	8(%rax), %edi
	callq	jv_copy@PLT
	movl	-32(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_array_append@PLT
	movl	%eax, -12(%rbp)
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	movq	-24(%rbp), %rdi
	callq	inst_free@PLT
	jmp	.LBB0_7
.LBB0_15:
	movl	-12(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TOP
	.p2align	3
TOP:
	.quad	0                               # 0x0
	.globl	MODULEMETA
	.p2align	3
MODULEMETA:
	.quad	0                               # 0x0
	.globl	DEPS
	.p2align	3
DEPS:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_array
	.addrsig_sym assert
	.addrsig_sym block_take
	.addrsig_sym jv_array_append
	.addrsig_sym jv_copy
	.addrsig_sym inst_free
	.addrsig_sym TOP
	.addrsig_sym MODULEMETA
	.addrsig_sym DEPS