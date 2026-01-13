	.text
	.p2align	4, 0x90                         # -- Begin function stringcap
stringcap:                              # @stringcap
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	MAXSTRCAPS(%rip), %eax
                                        # kill: def $rax killed $eax
	movq	%rsp, %rcx
	movq	%rcx, -24(%rbp)
	movq	%rax, %rdx
	shlq	$4, %rdx
	movq	%rsp, %rcx
	subq	%rdx, %rcx
	movq	%rcx, -80(%rbp)                 # 8-byte Spill
	movq	%rcx, %rsp
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %esi
	callq	updatecache@PLT
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	callq	subscache@PLT
	movl	-84(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	leaq	-48(%rbp), %rdx
	callq	lua_tolstring@PLT
	movq	-80(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	xorl	%edx, %edx
	callq	getstrcaps@PLT
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	movq	$0, -56(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB0_11
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$37, %eax
	jne	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rcx, %rdx
	addq	$1, %rdx
	movq	%rdx, -56(%rbp)
	movsbl	1(%rax,%rcx), %eax
	cmpl	$48, %eax
	jl	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$57, %eax
	jle	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movsbl	(%rax,%rcx), %esi
	callq	luaL_addchar@PLT
	jmp	.LBB0_9
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	subl	$48, %eax
	movl	%eax, -68(%rbp)
	movl	-68(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	leaq	.L.str(%rip), %rsi
	movsbl	(%rax,%rcx), %edx
	callq	luaL_error@PLT
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movq	-8(%rbp), %rdi
	movslq	-68(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rcx
	addq	%rdx, %rcx
	movq	(%rcx), %rsi
	movslq	-68(%rbp), %rdx
	shlq	$4, %rdx
	movq	%rax, %rcx
	addq	%rdx, %rcx
	movq	8(%rcx), %rdx
	movslq	-68(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	subq	(%rax), %rdx
	callq	luaL_addlstring@PLT
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB0_1
.LBB0_11:
	movq	-24(%rbp), %rax
	movq	%rax, %rsp
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	MAXSTRCAPS
	.p2align	2
MAXSTRCAPS:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid capture index (%c)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stringcap
	.addrsig_sym updatecache
	.addrsig_sym lua_tolstring
	.addrsig_sym subscache
	.addrsig_sym getstrcaps
	.addrsig_sym luaL_addchar
	.addrsig_sym luaL_error
	.addrsig_sym luaL_addlstring
	.addrsig_sym MAXSTRCAPS