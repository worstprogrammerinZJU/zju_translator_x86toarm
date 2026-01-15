	.text
	.p2align	4, 0x90                         # -- Begin function assign_string
assign_string:                          # @assign_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$-1, (%rax)
	jne	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, %ecx
	addl	$1, %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB0_2:
	movl	$0, -32(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %ecx
	movq	-16(%rbp), %rdx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	(%rdx), %ecx
	movb	%al, -33(%rbp)                  # 1-byte Spill
	jge	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	setne	%al
	movb	%al, -33(%rbp)                  # 1-byte Spill
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movb	-33(%rbp), %al                  # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_8
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movl	type_char(%rip), %edi
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movsbl	(%rax), %esi
	callq	ast_inttype@PLT
	movl	%eax, %edi
	movl	type_char(%rip), %esi
	movl	-28(%rbp), %edx
	addl	-32(%rbp), %edx
	callq	ast_init@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_3
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movl	type_char(%rip), %edi
	xorl	%esi, %esi
	callq	ast_inttype@PLT
	movl	%eax, %edi
	movl	type_char(%rip), %esi
	movl	-28(%rbp), %edx
	addl	-32(%rbp), %edx
	callq	ast_init@PLT
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_9
.LBB0_12:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	type_char
	.p2align	2
type_char:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assign_string
	.addrsig_sym strlen
	.addrsig_sym vec_push
	.addrsig_sym ast_init
	.addrsig_sym ast_inttype
	.addrsig_sym type_char