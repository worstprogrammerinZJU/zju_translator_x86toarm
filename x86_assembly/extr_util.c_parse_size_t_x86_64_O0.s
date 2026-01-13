	.text
	.p2align	4, 0x90                         # -- Begin function parse_size_t
parse_size_t:                           # @parse_size_t
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	leaq	-24(%rbp), %rdx
	leaq	-10(%rbp), %rcx
	callq	sscanf@PLT
	movb	%al, -9(%rbp)
	movsbl	-9(%rbp), %ecx
	movl	$1, %eax
	cmpl	%ecx, %eax
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rsi
	leaq	.L.str.1(%rip), %rdi
	callq	warnx@PLT
	movl	$5, %edi
	callq	usage@PLT
.LBB0_2:
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%zu%c"
.L.str.1:
	.asciz	"invalid size: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_size_t
	.addrsig_sym sscanf
	.addrsig_sym warnx
	.addrsig_sym usage