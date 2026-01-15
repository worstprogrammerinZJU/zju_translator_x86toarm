	.text
	.p2align	4, 0x90                         # -- Begin function read_generic
read_generic:                           # @read_generic
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movl	$40, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, -16(%rbp)
	movb	$0, %al
	callq	read_assignment_expr@PLT
	movq	%rax, -24(%rbp)
	movl	$44, %edi
	callq	expect@PLT
	movq	$0, -32(%rbp)
	leaq	-32(%rbp), %rdi
	callq	read_generic_list@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movq	-40(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-76(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_6
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	movq	-64(%rbp), %rsi
	callq	type_compatible@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-72(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_5
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_1
.LBB0_6:
	cmpq	$0, -32(%rbp)
	jne	.LBB0_8
# %bb.7:
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	node2s@PLT
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rax
	movl	(%rax), %edi
	callq	ty2s@PLT
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movl	-80(%rbp), %edx                 # 4-byte Reload
	movl	%eax, %ecx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_8:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_9:
	movq	-8(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"no matching generic selection for %s: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_generic
	.addrsig_sym expect
	.addrsig_sym peek
	.addrsig_sym read_assignment_expr
	.addrsig_sym read_generic_list
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym type_compatible
	.addrsig_sym errort
	.addrsig_sym node2s
	.addrsig_sym ty2s