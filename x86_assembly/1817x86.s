	.text
	.p2align	4, 0x90                         # -- Begin function ensure_assignable
ensure_assignable:                      # @ensure_assignable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	is_arithtype@PLT
	cmpq	$0, %rax
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_PTR(%rip), %rax
	jne	.LBB0_5
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	is_arithtype@PLT
	cmpq	$0, %rax
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	KIND_PTR(%rip), %rax
	jne	.LBB0_5
.LBB0_4:
	jmp	.LBB0_8
.LBB0_5:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	is_same_struct@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.6:
	jmp	.LBB0_8
.LBB0_7:
	movq	-8(%rbp), %rdi
	callq	ty2s@PLT
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	ty2s@PLT
	movq	-24(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
.LBB0_8:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KIND_PTR
	.p2align	3
KIND_PTR:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"incompatible kind: <%s> <%s>"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ensure_assignable
	.addrsig_sym is_arithtype
	.addrsig_sym is_same_struct
	.addrsig_sym error
	.addrsig_sym ty2s
	.addrsig_sym KIND_PTR