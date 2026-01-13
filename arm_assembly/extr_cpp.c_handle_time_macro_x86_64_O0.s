	.text
	.p2align	4, 0x90                         # -- Begin function handle_time_macro
handle_time_macro:                      # @handle_time_macro
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-18(%rbp), %rdi
	movl	$10, %esi
	leaq	.L.str(%rip), %rdx
	leaq	now(%rip), %rcx
	callq	strftime@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movl	TSTRING(%rip), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	leaq	-18(%rbp), %rdi
	callq	strdup@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	-24(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	make_token_pushback@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%T"
	.bss
	.globl	now
	.p2align	2
now:
	.long	0                               # 0x0
	.globl	TSTRING
	.p2align	2
TSTRING:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym handle_time_macro
	.addrsig_sym strftime
	.addrsig_sym make_token_pushback
	.addrsig_sym strdup
	.addrsig_sym now
	.addrsig_sym TSTRING