	.text
	.globl	block_list_funcs                # -- Begin function block_list_funcs
	.p2align	4, 0x90
block_list_funcs:                       # @block_list_funcs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movb	$0, %al
	callq	jv_object@PLT
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB0_11
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	CLOSURE_CREATE(%rip), %rax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	cmpq	CLOSURE_CREATE_C(%rip), %rax
	jne	.LBB0_9
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_8
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movsbl	(%rax), %eax
	cmpl	$95, %eax
	je	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	16(%rax), %edx
	leaq	.L.str(%rip), %rdi
	callq	jv_string_fmt@PLT
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	jv_null@PLT
	movl	-32(%rbp), %edi                 # 4-byte Reload
	movl	-28(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	jv_object_set@PLT
	movl	%eax, -16(%rbp)
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_9
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_11:
	movl	-16(%rbp), %edi
	callq	jv_keys_unsorted@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	CLOSURE_CREATE
	.p2align	3
CLOSURE_CREATE:
	.quad	0                               # 0x0
	.globl	CLOSURE_CREATE_C
	.p2align	3
CLOSURE_CREATE_C:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s/%i"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_object
	.addrsig_sym jv_object_set
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_null
	.addrsig_sym jv_keys_unsorted
	.addrsig_sym CLOSURE_CREATE
	.addrsig_sym CLOSURE_CREATE_C