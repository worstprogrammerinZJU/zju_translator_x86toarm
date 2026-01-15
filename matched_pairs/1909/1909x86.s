	.text
	.p2align	4, 0x90                         # -- Begin function read_oldstyle_param_args
read_oldstyle_param_args:               # @read_oldstyle_param_args
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	localenv(%rip), %rax
	movq	%rax, -8(%rbp)
	movq	$0, localenv(%rip)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, %edi
	movl	$123, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	jmp	.LBB0_6
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, %edi
	callq	is_type@PLT
	cmpl	$0, %eax
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, %edi
	callq	tok2s@PLT
	movl	-20(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	read_decl@PLT
	jmp	.LBB0_1
.LBB0_6:
	movq	-8(%rbp), %rax
	movq	%rax, localenv(%rip)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	localenv
	.p2align	3
localenv:
	.quad	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"K&R-style declarator expected, but got %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_oldstyle_param_args
	.addrsig_sym make_vector
	.addrsig_sym is_keyword
	.addrsig_sym peek
	.addrsig_sym is_type
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym read_decl
	.addrsig_sym localenv