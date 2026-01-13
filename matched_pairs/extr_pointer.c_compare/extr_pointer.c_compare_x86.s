	.text
	.p2align	4, 0x90                         # -- Begin function compare
compare:                                # @compare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	.L.str(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %esi
	xorl	%edi, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rax
	cmpq	-8(%rbp), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %esi
	movl	$1, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rax
	cmpq	-8(%rbp), %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %esi
	xorl	%edi, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	setne	%al
	andb	$1, %al
	movzbl	%al, %esi
	movl	$1, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rax
	cmpq	-8(%rbp), %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %esi
	xorl	%edi, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	setb	%al
	andb	$1, %al
	movzbl	%al, %esi
	movl	$1, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rax
	cmpq	-8(%rbp), %rax
	seta	%al
	andb	$1, %al
	movzbl	%al, %esi
	xorl	%edi, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	seta	%al
	andb	$1, %al
	movzbl	%al, %esi
	movl	$1, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rax
	cmpq	-8(%rbp), %rax
	setae	%al
	andb	$1, %al
	movzbl	%al, %esi
	movl	$1, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	setae	%al
	andb	$1, %al
	movzbl	%al, %esi
	movl	$1, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	setae	%al
	andb	$1, %al
	movzbl	%al, %esi
	xorl	%edi, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rax
	cmpq	-8(%rbp), %rax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %esi
	movl	$1, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	$1, %rcx
	cmpq	%rcx, %rax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %esi
	movl	$1, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rax
	addq	$1, %rax
	cmpq	-8(%rbp), %rax
	setbe	%al
	andb	$1, %al
	movzbl	%al, %esi
	xorl	%edi, %edi
	callq	expect@PLT
	movl	$4, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$4, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$4, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$4, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$4, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	$4, %esi
	movl	%esi, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"abcdefg"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym compare
	.addrsig_sym expect