	.text
	.p2align	4, 0x90                         # -- Begin function make_dir
make_dir:                               # @make_dir
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	luaL_checkstring@PLT
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	umask@PLT
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movl	S_IRUSR(%rip), %esi
	orl	S_IWUSR(%rip), %esi
	orl	S_IXUSR(%rip), %esi
	orl	S_IRGRP(%rip), %esi
	orl	S_IWGRP(%rip), %esi
	orl	S_IXGRP(%rip), %esi
	orl	S_IROTH(%rip), %esi
	orl	S_IXOTH(%rip), %esi
	callq	mkdir@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	lua_pushnil@PLT
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movl	errno(%rip), %edi
	callq	strerror@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	lua_pushfstring@PLT
	movl	$2, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-40(%rbp), %rdi
	callq	umask@PLT
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	lua_pushboolean@PLT
	movl	$1, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	S_IRUSR
	.p2align	2
S_IRUSR:
	.long	0                               # 0x0
	.globl	S_IWUSR
	.p2align	2
S_IWUSR:
	.long	0                               # 0x0
	.globl	S_IXUSR
	.p2align	2
S_IXUSR:
	.long	0                               # 0x0
	.globl	S_IRGRP
	.p2align	2
S_IRGRP:
	.long	0                               # 0x0
	.globl	S_IWGRP
	.p2align	2
S_IWGRP:
	.long	0                               # 0x0
	.globl	S_IXGRP
	.p2align	2
S_IXGRP:
	.long	0                               # 0x0
	.globl	S_IROTH
	.p2align	2
S_IROTH:
	.long	0                               # 0x0
	.globl	S_IXOTH
	.p2align	2
S_IXOTH:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.bss
	.globl	errno
	.p2align	2
errno:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_dir
	.addrsig_sym luaL_checkstring
	.addrsig_sym umask
	.addrsig_sym mkdir
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_pushfstring
	.addrsig_sym strerror
	.addrsig_sym lua_pushboolean
	.addrsig_sym S_IRUSR
	.addrsig_sym S_IWUSR
	.addrsig_sym S_IXUSR
	.addrsig_sym S_IRGRP
	.addrsig_sym S_IWGRP
	.addrsig_sym S_IXGRP
	.addrsig_sym S_IROTH
	.addrsig_sym S_IXOTH
	.addrsig_sym errno