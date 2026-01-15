	.text
	.p2align	4, 0x90                         # -- Begin function emit_func_prologue
emit_func_prologue:                     # @emit_func_prologue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpl	$0, 16(%rax)
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movl	24(%rax), %esi
	leaq	.L.str.1(%rip), %rdi
	callq	emit_noindent@PLT
.LBB0_2:
	movq	-8(%rbp), %rax
	movl	24(%rax), %esi
	leaq	.L.str.2(%rip), %rdi
	callq	emit_noindent@PLT
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	leaq	.L.str.4(%rip), %rdi
	callq	push@PLT
	leaq	.L.str.5(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rax
	movl	20(%rax), %edi
	callq	set_reg_nums@PLT
	movb	$0, %al
	callq	emit_regsave_area@PLT
	movq	%rax, %rcx
	movslq	-12(%rbp), %rax
	subq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -12(%rbp)
.LBB0_4:
	movq	-8(%rbp), %rax
	movl	20(%rax), %edi
	movl	-12(%rbp), %esi
	callq	push_func_params@PLT
	movq	-8(%rbp), %rax
	movl	20(%rax), %edi
	callq	vec_len@PLT
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	-12(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movl	16(%rax), %edi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-40(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-8(%rbp), %rax
	movl	16(%rax), %edi
	movl	-20(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %edi
	movl	$8, %esi
	callq	align@PLT
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-36(%rbp), %ecx
	movl	-12(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-36(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	cmpl	$0, -16(%rbp)
	je	.LBB0_10
# %bb.9:
	movl	-16(%rbp), %esi
	leaq	.L.str.6(%rip), %rdi
	movb	$0, %al
	callq	emit@PLT
	movl	-16(%rbp), %eax
	addl	stackpos(%rip), %eax
	movl	%eax, stackpos(%rip)
.LBB0_10:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".text"
.L.str.1:
	.asciz	".global %s"
.L.str.2:
	.asciz	"%s:"
.L.str.3:
	.asciz	"nop"
.L.str.4:
	.asciz	"rbp"
.L.str.5:
	.asciz	"mov #rsp, #rbp"
.L.str.6:
	.asciz	"sub $%d, #rsp"
	.bss
	.globl	stackpos
	.p2align	2
stackpos:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_func_prologue
	.addrsig_sym emit
	.addrsig_sym emit_noindent
	.addrsig_sym push
	.addrsig_sym set_reg_nums
	.addrsig_sym emit_regsave_area
	.addrsig_sym push_func_params
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym align
	.addrsig_sym assert
	.addrsig_sym SAVE
	.addrsig_sym stackpos