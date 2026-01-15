	.text
	.p2align	4, 0x90                         # -- Begin function doublecap
doublecap:                              # @doublecap
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movl	INT_MAX(%rip), %eax
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-36(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jl	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	luaL_error@PLT
.LBB0_2:
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %eax
	shll	$1, %eax
	cltq
	shlq	$2, %rax
	movl	%eax, %esi
	callq	lua_newuserdata@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rax
	shlq	$2, %rax
	movl	%eax, %edx
	callq	memcpy@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movl	-24(%rbp), %edi
	callq	caplistidx@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	lua_replace@PLT
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	INT_MAX
	.p2align	2
INT_MAX:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"too many captures"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym doublecap
	.addrsig_sym luaL_error
	.addrsig_sym lua_newuserdata
	.addrsig_sym memcpy
	.addrsig_sym lua_replace
	.addrsig_sym caplistidx
	.addrsig_sym INT_MAX