	.text
	.p2align	4, 0x90                         # -- Begin function type_l
type_l:                                 # @type_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	testpattern@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	lua_pushliteral@PLT
	jmp	.LBB0_3
.LBB0_2:
	movq	-8(%rbp), %rdi
	callq	lua_pushnil@PLT
.LBB0_3:
	movl	$1, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pattern"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym type_l
	.addrsig_sym testpattern
	.addrsig_sym lua_pushliteral
	.addrsig_sym lua_pushnil