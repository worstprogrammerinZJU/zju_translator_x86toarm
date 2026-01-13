	.text
	.p2align	4, 0x90                         # -- Begin function read_obj_macro
read_obj_macro:                         # @read_obj_macro
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -16(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	lex@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TNEWLINE(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	jmp	.LBB0_4
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	vec_push@PLT
	jmp	.LBB0_1
.LBB0_4:
	movq	-16(%rbp), %rdi
	callq	hashhash_check@PLT
	movl	macros(%rip), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	make_obj_macro@PLT
	movl	-36(%rbp), %edi                 # 4-byte Reload
	movq	-32(%rbp), %rsi                 # 8-byte Reload
	movl	%eax, %edx
	callq	map_put@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.quad	0                               # 0x0
	.globl	macros
	.p2align	2
macros:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_obj_macro
	.addrsig_sym make_vector
	.addrsig_sym lex
	.addrsig_sym vec_push
	.addrsig_sym hashhash_check
	.addrsig_sym map_put
	.addrsig_sym make_obj_macro
	.addrsig_sym TNEWLINE
	.addrsig_sym macros