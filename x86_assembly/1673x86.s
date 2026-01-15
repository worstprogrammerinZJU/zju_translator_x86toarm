	.text
	.p2align	4, 0x90                         # -- Begin function replace_suffix
replace_suffix:                         # @replace_suffix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rsi
	leaq	.L.str(%rip), %rdi
	callq	format@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, %ecx
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	addq	$-1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$99, %eax
	je	.LBB0_2
# %bb.1:
	leaq	.L.str.1(%rip), %rdi
	callq	error@PLT
.LBB0_2:
	movb	-9(%rbp), %cl
	movq	-32(%rbp), %rax
	movb	%cl, (%rax)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
.L.str.1:
	.asciz	"filename suffix is not .c"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym replace_suffix
	.addrsig_sym format
	.addrsig_sym strlen
	.addrsig_sym error