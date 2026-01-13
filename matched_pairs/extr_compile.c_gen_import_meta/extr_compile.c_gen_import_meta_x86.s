	.text
	.globl	gen_import_meta                 # -- Begin function gen_import_meta
	.p2align	4, 0x90
gen_import_meta:                        # @gen_import_meta
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	block_is_single@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -33(%rbp)                  # 1-byte Spill
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	DEPS(%rip), %rax
	sete	%al
	movb	%al, -33(%rbp)                  # 1-byte Spill
.LBB0_2:
	movb	-33(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-24(%rbp), %rdi
	callq	block_is_const@PLT
	movq	%rax, %rcx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpq	$0, %rcx
	movb	%al, -34(%rbp)                  # 1-byte Spill
	je	.LBB0_4
# %bb.3:
	movq	-24(%rbp), %rdi
	callq	block_const_kind@PLT
	cmpq	JV_KIND_OBJECT(%rip), %rax
	sete	%al
	movb	%al, -34(%rbp)                  # 1-byte Spill
.LBB0_4:
	movb	-34(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	block_const@PLT
	movl	%eax, %edi
	movq	-32(%rbp), %rax
	movl	8(%rax), %esi
	callq	jv_object_merge@PLT
	movl	%eax, %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rdi
	callq	block_free@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DEPS
	.p2align	3
DEPS:
	.quad	0                               # 0x0
	.globl	JV_KIND_OBJECT
	.p2align	3
JV_KIND_OBJECT:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym block_is_single
	.addrsig_sym block_is_const
	.addrsig_sym block_const_kind
	.addrsig_sym jv_object_merge
	.addrsig_sym block_const
	.addrsig_sym block_free
	.addrsig_sym DEPS
	.addrsig_sym JV_KIND_OBJECT