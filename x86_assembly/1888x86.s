	.text
	.p2align	4, 0x90                         # -- Begin function read_func_body
read_func_body:                         # @read_func_body
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	localenv(%rip), %rdi
	callq	make_map_parent@PLT
	movq	%rax, localenv(%rip)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, localvars(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, current_func_type(%rip)
	movl	ENC_NONE(%rip), %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
	movl	-60(%rbp), %edi                 # 4-byte Reload
	movq	-56(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	addq	$1, %rdx
	callq	ast_string@PLT
	movq	%rax, -32(%rbp)
	movq	localenv(%rip), %rdi
	movq	-32(%rbp), %rdx
	leaq	.L.str(%rip), %rsi
	callq	map_put@PLT
	movq	localenv(%rip), %rdi
	movq	-32(%rbp), %rdx
	leaq	.L.str.1(%rip), %rsi
	callq	map_put@PLT
	movb	$0, %al
	callq	read_compound_stmt@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	localvars(%rip), %r8
	callq	ast_func@PLT
	movq	%rax, -48(%rbp)
	movq	$0, current_func_type(%rip)
	movq	$0, localenv(%rip)
	movq	$0, localvars(%rip)
	movq	-48(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	localenv
	.p2align	3
localenv:
	.quad	0
	.globl	localvars
	.p2align	3
localvars:
	.quad	0
	.globl	current_func_type
	.p2align	3
current_func_type:
	.quad	0
	.globl	ENC_NONE
	.p2align	2
ENC_NONE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"__func__"
.L.str.1:
	.asciz	"__FUNCTION__"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_func_body
	.addrsig_sym make_map_parent
	.addrsig_sym make_vector
	.addrsig_sym ast_string
	.addrsig_sym strlen
	.addrsig_sym map_put
	.addrsig_sym read_compound_stmt
	.addrsig_sym ast_func
	.addrsig_sym localenv
	.addrsig_sym localvars
	.addrsig_sym current_func_type
	.addrsig_sym ENC_NONE