	.text
	.p2align	4, 0x90                         # -- Begin function my_mktime
my_mktime:                              # @my_mktime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.L.str(%rip), %rdi
	callq	getenv@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	strdup@PLT
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	jmp	.LBB0_3
.LBB0_3:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_5
# %bb.4:
	leaq	.L.str(%rip), %rdi
	leaq	.L.str.1(%rip), %rsi
	movl	$1, %edx
	callq	setenv@PLT
.LBB0_5:
	movq	-8(%rbp), %rdi
	callq	mktime@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_7
# %bb.6:
	movq	-16(%rbp), %rsi
	leaq	.L.str(%rip), %rdi
	movl	$1, %edx
	callq	setenv@PLT
.LBB0_7:
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"TZ"
.L.str.1:
	.zero	1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym my_mktime
	.addrsig_sym getenv
	.addrsig_sym strdup
	.addrsig_sym setenv
	.addrsig_sym mktime