	.text
	.p2align	4, 0x90                         # -- Begin function read_source_file
read_source_file:                       # @read_source_file
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	fopen@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movq	-24(%rbp), %rdi
	callq	fileno@PLT
	movl	%eax, %edi
	leaq	-32(%rbp), %rsi
	callq	fstat@PLT
	movl	-32(%rbp), %edi
	addl	$1, %edi
	callq	malloc@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rcx
	movl	$1, %esi
	callq	fread@PLT
	cmpl	-32(%rbp), %eax
	je	.LBB0_4
# %bb.3:
	movq	-24(%rbp), %rdi
	callq	fclose@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-24(%rbp), %rdi
	callq	fclose@PLT
	movq	-40(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movq	-40(%rbp), %rdi
	callq	split@PLT
	movq	%rax, -8(%rbp)
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_source_file
	.addrsig_sym fopen
	.addrsig_sym fstat
	.addrsig_sym fileno
	.addrsig_sym malloc
	.addrsig_sym fread
	.addrsig_sym fclose
	.addrsig_sym split