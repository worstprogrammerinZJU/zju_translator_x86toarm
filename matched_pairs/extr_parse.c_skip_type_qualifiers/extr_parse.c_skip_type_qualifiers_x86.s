	.text
	.p2align	4, 0x90                         # -- Begin function skip_type_qualifiers
skip_type_qualifiers:                   # @skip_type_qualifiers
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	jmp	.LBB0_1
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	KCONST(%rip), %edi
	callq	next_token@PLT
	movq	%rax, %rcx
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -1(%rbp)                   # 1-byte Spill
	jne	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	KVOLATILE(%rip), %edi
	callq	next_token@PLT
	movq	%rax, %rcx
	movb	$1, %al
	cmpq	$0, %rcx
	movb	%al, -1(%rbp)                   # 1-byte Spill
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	KRESTRICT(%rip), %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	setne	%al
	movb	%al, -1(%rbp)                   # 1-byte Spill
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movb	-1(%rbp), %al                   # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_5
	jmp	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.LBB0_6:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KCONST
	.p2align	2
KCONST:
	.long	0                               # 0x0
	.globl	KVOLATILE
	.p2align	2
KVOLATILE:
	.long	0                               # 0x0
	.globl	KRESTRICT
	.p2align	2
KRESTRICT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym skip_type_qualifiers
	.addrsig_sym next_token
	.addrsig_sym KCONST
	.addrsig_sym KVOLATILE
	.addrsig_sym KRESTRICT