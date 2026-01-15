	.text
	.p2align	4, 0x90                         # -- Begin function skip_parentheses
skip_parentheses:                       # @skip_parentheses
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TEOF(%rip), %rax
	jne	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	vec_push@PLT
	movq	-16(%rbp), %rdi
	movl	$41, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	$40, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	skip_parentheses
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym skip_parentheses
	.addrsig_sym get
	.addrsig_sym error
	.addrsig_sym vec_push
	.addrsig_sym is_keyword
	.addrsig_sym TEOF