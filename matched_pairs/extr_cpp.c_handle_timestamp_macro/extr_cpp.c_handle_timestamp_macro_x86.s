	.text
	.p2align	4, 0x90                         # -- Begin function handle_timestamp_macro
handle_timestamp_macro:                 # @handle_timestamp_macro
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	localtime@PLT
	movq	-72(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %ecx
	movl	$30, %esi
	leaq	.L.str(%rip), %rdx
	callq	strftime@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movl	TSTRING(%rip), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	leaq	-48(%rbp), %rdi
	callq	strdup@PLT
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movl	-52(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	make_token_pushback@PLT
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%a %b %e %T %Y"
	.bss
	.globl	TSTRING
	.p2align	2
TSTRING:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym handle_timestamp_macro
	.addrsig_sym strftime
	.addrsig_sym localtime
	.addrsig_sym make_token_pushback
	.addrsig_sym strdup
	.addrsig_sym TSTRING