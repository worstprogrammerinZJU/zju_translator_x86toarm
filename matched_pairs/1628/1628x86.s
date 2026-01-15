	.text
	.p2align	4, 0x90                         # -- Begin function star_l
star_l:                                 # @star_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	callq	luaL_checkint@PLT
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	leaq	-20(%rbp), %rdx
	callq	getpatt@PLT
	movq	%rax, -32(%rbp)
	cmpl	$0, -24(%rbp)
	jl	.LBB0_7
# %bb.1:
	movq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	callq	tocharset@PLT
	cmpq	ISCHARSET(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rdi
	movl	-40(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	repeatcharset@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_12
.LBB0_3:
	movq	-32(%rbp), %rdi
	callq	isheadfail@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	repeatheadfail@PLT
	movq	%rax, -48(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	callq	repeats@PLT
	movq	%rax, -48(%rbp)
.LBB0_6:
	movq	-48(%rbp), %rdi
	callq	optimizecaptures@PLT
	movq	-48(%rbp), %rdi
	callq	optimizejumps@PLT
	jmp	.LBB0_11
.LBB0_7:
	movq	-32(%rbp), %rdi
	callq	isheadfail@PLT
	cmpq	$0, %rax
	je	.LBB0_9
# %bb.8:
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	xorl	%edx, %edx
	subl	-24(%rbp), %edx
	callq	optionalheadfail@PLT
	jmp	.LBB0_10
.LBB0_9:
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	xorl	%edx, %edx
	subl	-24(%rbp), %edx
	callq	optionals@PLT
.LBB0_10:
	jmp	.LBB0_11
.LBB0_11:
	movl	$1, -4(%rbp)
.LBB0_12:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	ISCHARSET
	.p2align	3
ISCHARSET:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym star_l
	.addrsig_sym luaL_checkint
	.addrsig_sym getpatt
	.addrsig_sym tocharset
	.addrsig_sym repeatcharset
	.addrsig_sym isheadfail
	.addrsig_sym repeatheadfail
	.addrsig_sym repeats
	.addrsig_sym optimizecaptures
	.addrsig_sym optimizejumps
	.addrsig_sym optionalheadfail
	.addrsig_sym optionals
	.addrsig_sym ISCHARSET