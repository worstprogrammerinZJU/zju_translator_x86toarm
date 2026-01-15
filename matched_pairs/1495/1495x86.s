	.text
	.p2align	4, 0x90                         # -- Begin function file_info
file_info:                              # @file_info
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1, %esi
	callq	luaL_checkstring@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	stat@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	lua_pushnil@PLT
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	leaq	.L.str(%rip), %rsi
	callq	lua_pushfstring@PLT
	movl	$2, -4(%rbp)
	jmp	.LBB0_24
.LBB0_2:
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	callq	lua_isstring@PLT
	cmpq	$0, %rax
	je	.LBB0_16
# %bb.3:
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	callq	lua_tostring@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_5
# %bb.4:
	movl	$0, -36(%rbp)
	jmp	.LBB0_15
.LBB0_5:
	movq	-48(%rbp), %rdi
	leaq	.L.str.2(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	jne	.LBB0_7
# %bb.6:
	movl	$12, -36(%rbp)
	jmp	.LBB0_14
.LBB0_7:
	movl	$1, -36(%rbp)
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movq	members(%rip), %rax
	movslq	-36(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB0_13
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	members(%rip), %rax
	movslq	-36(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movsbl	(%rax), %eax
	movq	-48(%rbp), %rcx
	movsbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_11
# %bb.10:
	jmp	.LBB0_13
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_8
.LBB0_13:
	jmp	.LBB0_14
.LBB0_14:
	jmp	.LBB0_15
.LBB0_15:
	movq	members(%rip), %rax
	movslq	-36(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	*%rax
	movl	$1, -4(%rbp)
	jmp	.LBB0_24
.LBB0_16:
	movq	-16(%rbp), %rdi
	movl	$2, %esi
	callq	lua_istable@PLT
	cmpl	$0, %eax
	jne	.LBB0_18
# %bb.17:
	movq	-16(%rbp), %rdi
	callq	lua_newtable@PLT
.LBB0_18:
	jmp	.LBB0_19
.LBB0_19:
	movl	$0, -20(%rbp)
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movq	members(%rip), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	cmpq	$0, (%rax)
	je	.LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	movq	-16(%rbp), %rdi
	movq	members(%rip), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rsi
	callq	lua_pushstring@PLT
	movq	members(%rip), %rax
	movslq	-20(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	callq	*%rax
	movq	-16(%rbp), %rdi
	movl	$4294967293, %esi               # imm = 0xFFFFFFFD
	callq	lua_rawset@PLT
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_20
.LBB0_23:
	movl	$1, -4(%rbp)
.LBB0_24:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cannot obtain information from file `%s'"
.L.str.1:
	.asciz	"mode"
.L.str.2:
	.asciz	"blksize"
	.bss
	.globl	members
	.p2align	3
members:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym file_info
	.addrsig_sym luaL_checkstring
	.addrsig_sym stat
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_pushfstring
	.addrsig_sym lua_isstring
	.addrsig_sym lua_tostring
	.addrsig_sym strcmp
	.addrsig_sym lua_istable
	.addrsig_sym lua_newtable
	.addrsig_sym lua_pushstring
	.addrsig_sym lua_rawset
	.addrsig_sym members