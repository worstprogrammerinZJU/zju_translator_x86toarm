	.text
	.p2align	4, 0x90                         # -- Begin function emit_func_call
emit_func_call:                         # @emit_func_call
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	stackpos(%rip), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	AST_FUNCPTR_CALL(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
.LBB0_3:
	movq	-64(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -24(%rbp)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -32(%rbp)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -40(%rbp)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	24(%rax), %ecx
	callq	classify_args@PLT
	movq	-32(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	movq	-40(%rbp), %rdi
	callq	vec_len@PLT
	movl	-68(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	save_arg_regs@PLT
	movl	stackpos(%rip), %eax
	movl	$16, %ecx
	cltd
	idivl	%ecx
	movl	%edx, -52(%rbp)
	cmpl	$0, -52(%rbp)
	je	.LBB0_5
# %bb.4:
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	stackpos(%rip), %eax
	addl	$8, %eax
	movl	%eax, stackpos(%rip)
.LBB0_5:
	movq	-48(%rbp), %rdi
	callq	vec_reverse@PLT
	movq	%rax, %rdi
	callq	emit_args@PLT
	movl	%eax, -56(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB0_7
# %bb.6:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	emit_expr@PLT
	leaq	.L.str.1(%rip), %rdi
	callq	push@PLT
.LBB0_7:
	movq	-32(%rbp), %rdi
	callq	emit_args@PLT
	movq	-40(%rbp), %rdi
	callq	emit_args@PLT
	movq	-40(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %edi
	callq	pop_float_args@PLT
	movq	-32(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %edi
	callq	pop_int_args@PLT
	cmpl	$0, -16(%rbp)
	je	.LBB0_9
# %bb.8:
	leaq	.L.str.2(%rip), %rdi
	callq	pop@PLT
.LBB0_9:
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_11
# %bb.10:
	movq	-40(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %esi
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
.LBB0_11:
	cmpl	$0, -16(%rbp)
	je	.LBB0_13
# %bb.12:
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	jmp	.LBB0_14
.LBB0_13:
	movq	-8(%rbp), %rax
	movl	12(%rax), %esi
	leaq	.L.str.5(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
.LBB0_14:
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	callq	maybe_booleanize_retval@PLT
	cmpl	$0, -56(%rbp)
	jle	.LBB0_16
# %bb.15:
	movl	-56(%rbp), %esi
	leaq	.L.str.6(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	-56(%rbp), %ecx
	movl	stackpos(%rip), %eax
	subl	%ecx, %eax
	movl	%eax, stackpos(%rip)
.LBB0_16:
	cmpl	$0, -52(%rbp)
	je	.LBB0_18
# %bb.17:
	leaq	.L.str.7(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	stackpos(%rip), %eax
	subl	$8, %eax
	movl	%eax, stackpos(%rip)
.LBB0_18:
	movq	-32(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, -72(%rbp)                 # 4-byte Spill
	movq	-40(%rbp), %rdi
	callq	vec_len@PLT
	movl	-72(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	restore_arg_regs@PLT
	movl	-12(%rbp), %eax
	cmpl	stackpos(%rip), %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.globl	stackpos
	.p2align	2
stackpos:
	.long	0                               # 0x0
	.globl	AST_FUNCPTR_CALL
	.p2align	3
AST_FUNCPTR_CALL:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sub $8, #rsp"
.L.str.1:
	.asciz	"rax"
.L.str.2:
	.asciz	"r11"
.L.str.3:
	.asciz	"mov $%u, #eax"
.L.str.4:
	.asciz	"call *#r11"
.L.str.5:
	.asciz	"call %s"
.L.str.6:
	.asciz	"add $%d, #rsp"
.L.str.7:
	.asciz	"add $8, #rsp"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_func_call
	.addrsig_sym make_vector
	.addrsig_sym classify_args
	.addrsig_sym save_arg_regs
	.addrsig_sym vec_len
	.addrsig_sym emit
	.addrsig_sym emit_args
	.addrsig_sym vec_reverse
	.addrsig_sym emit_expr
	.addrsig_sym push
	.addrsig_sym pop_float_args
	.addrsig_sym pop_int_args
	.addrsig_sym pop
	.addrsig_sym maybe_booleanize_retval
	.addrsig_sym restore_arg_regs
	.addrsig_sym assert
	.addrsig_sym SAVE
	.addrsig_sym stackpos
	.addrsig_sym AST_FUNCPTR_CALL