	.text
	.p2align	4, 0x90                         # -- Begin function check_file
check_file:                             # @check_file
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	leaq	.L.str(%rip), %rdx
	callq	luaL_checkudata@PLT
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	leaq	.L.str.1(%rip), %rsi
	callq	luaL_error@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	leaq	.L.str.2(%rip), %rsi
	callq	luaL_error@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"FILE*"
.L.str.1:
	.asciz	"%s: not a file"
.L.str.2:
	.asciz	"%s: closed file"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym check_file
	.addrsig_sym luaL_checkudata
	.addrsig_sym luaL_error