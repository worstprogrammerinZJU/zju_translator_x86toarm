	.text
	.p2align	4, 0x90                         # -- Begin function parse_is_top_num
parse_is_top_num:                       # @parse_is_top_num
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, (%rcx)
	movb	%al, -9(%rbp)                   # 1-byte Spill
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NUMBER(%rip), %rax
	sete	%al
	movb	%al, -9(%rbp)                   # 1-byte Spill
.LBB0_2:
	movb	-9(%rbp), %al                   # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_is_top_num
	.addrsig_sym jv_get_kind
	.addrsig_sym JV_KIND_NUMBER