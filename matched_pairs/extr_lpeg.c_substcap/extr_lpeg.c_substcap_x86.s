	.text
	.p2align	4, 0x90                         # -- Begin function substcap
substcap:                               # @substcap
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	leaq	-12(%rbp), %rsi
	callq	luaL_buffinit@PLT
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	isclosecap@PLT
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_2
	jmp	.LBB0_13
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	leaq	-12(%rbp), %rdi
	callq	luaL_addlstring@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	captype@PLT
	cmpq	Cstring(%rip), %rax
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rsi
	leaq	-12(%rbp), %rdi
	callq	stringcap@PLT
	jmp	.LBB0_12
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	pushcapture@PLT
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$1, -28(%rbp)
	jle	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	movl	-28(%rbp), %esi
	subl	$1, %esi
	callq	lua_pop@PLT
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_isstring@PLT
	cmpl	$0, %eax
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	luaL_typename@PLT
	movl	-44(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	luaL_error@PLT
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	-12(%rbp), %rdi
	callq	luaL_addvalue@PLT
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	addq	$-8, %rdi
	callq	closeaddr@PLT
	movq	%rax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_13:
	movq	-24(%rbp), %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	subq	%rcx, %rax
	movl	%eax, %edx
	leaq	-12(%rbp), %rdi
	callq	luaL_addlstring@PLT
	leaq	-12(%rbp), %rdi
	callq	luaL_pushresult@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	addq	$8, %rcx
	movq	%rcx, (%rax)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	Cstring
	.p2align	3
Cstring:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid replacement value (a %s)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym substcap
	.addrsig_sym luaL_buffinit
	.addrsig_sym isclosecap
	.addrsig_sym luaL_addlstring
	.addrsig_sym captype
	.addrsig_sym stringcap
	.addrsig_sym pushcapture
	.addrsig_sym lua_pop
	.addrsig_sym lua_isstring
	.addrsig_sym luaL_error
	.addrsig_sym luaL_typename
	.addrsig_sym luaL_addvalue
	.addrsig_sym closeaddr
	.addrsig_sym luaL_pushresult
	.addrsig_sym Cstring