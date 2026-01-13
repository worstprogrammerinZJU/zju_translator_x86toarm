	.text
	.p2align	4, 0x90                         # -- Begin function dir_iter
dir_iter:                               # @dir_iter
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movl	$1, %edi
	callq	lua_upvalueindex@PLT
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	lua_touserdata@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %esi
	movl	$1, %edx
	leaq	.L.str(%rip), %rcx
	callq	luaL_argcheck@PLT
	movq	-32(%rbp), %rax
	movl	16(%rax), %edi
	callq	readdir@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	callq	lua_pushstring@PLT
	movl	$1, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-32(%rbp), %rax
	movl	16(%rax), %edi
	callq	closedir@PLT
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movl	$0, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"closed directory"
	.bss
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dir_iter
	.addrsig_sym lua_touserdata
	.addrsig_sym lua_upvalueindex
	.addrsig_sym luaL_argcheck
	.addrsig_sym readdir
	.addrsig_sym lua_pushstring
	.addrsig_sym closedir