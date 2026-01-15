	.text
	.p2align	4, 0x90                         # -- Begin function read_decl_or_stmt
read_decl_or_stmt:                      # @read_decl_or_stmt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TEOF(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_2:
	movb	$0, %al
	callq	mark_location@PLT
	movq	-16(%rbp), %rdi
	callq	is_type@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	callq	read_decl@PLT
	jmp	.LBB0_10
.LBB0_4:
	movl	KSTATIC_ASSERT(%rip), %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	movb	$0, %al
	callq	read_static_assert@PLT
	jmp	.LBB0_9
.LBB0_6:
	movb	$0, %al
	callq	read_stmt@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_8
# %bb.7:
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	vec_push@PLT
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	jmp	.LBB0_10
.LBB0_10:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TEOF
	.p2align	3
TEOF:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"premature end of input"
	.bss
	.globl	KSTATIC_ASSERT
	.p2align	2
KSTATIC_ASSERT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_decl_or_stmt
	.addrsig_sym peek
	.addrsig_sym error
	.addrsig_sym mark_location
	.addrsig_sym is_type
	.addrsig_sym read_decl
	.addrsig_sym next_token
	.addrsig_sym read_static_assert
	.addrsig_sym read_stmt
	.addrsig_sym vec_push
	.addrsig_sym TEOF
	.addrsig_sym KSTATIC_ASSERT