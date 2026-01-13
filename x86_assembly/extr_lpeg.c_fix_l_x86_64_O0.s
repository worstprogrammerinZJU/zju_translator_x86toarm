	.text
	.p2align	4, 0x90                         # -- Begin function fix_l
fix_l:                                  # @fix_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$2, -32(%rbp)
	movl	$0, -36(%rbp)
	movq	-8(%rbp), %rdi
	callq	lua_gettop@PLT
	movl	%eax, -40(%rbp)
	movq	-8(%rbp), %rdi
	callq	lua_newtable@PLT
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	lua_pushinteger@PLT
	movq	-8(%rbp), %rdi
	callq	lua_pushnil@PLT
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	lua_next@PLT
	cmpq	$0, %rax
	je	.LBB0_10
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	callq	lua_tonumber@PLT
	cmpl	$1, %eax
	jne	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_isstring@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	addl	$2, %esi
	callq	lua_replace@PLT
	jmp	.LBB0_1
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	testpattern@PLT
	cmpl	$0, %eax
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	luaL_error@PLT
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	pattsize@PLT
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-32(%rbp), %eax
	movl	MAXPATTSIZE(%rip), %ecx
	subl	-44(%rbp), %ecx
	cmpl	%ecx, %eax
	jl	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	luaL_error@PLT
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	LUA_MINSTACK(%rip), %esi
	leaq	.L.str.2(%rip), %rdx
	callq	luaL_checkstack@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	callq	lua_insert@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_pushvalue@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_pushvalue@PLT
	movq	-8(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	lua_pushinteger@PLT
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	addl	$1, %esi
	callq	lua_settable@PLT
	movl	-44(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_10:
	movq	-8(%rbp), %rdi
	cmpl	$0, -36(%rbp)
	setg	%al
	andb	$1, %al
	movzbl	%al, %esi
	movl	-12(%rbp), %edx
	leaq	.L.str.3(%rip), %rcx
	callq	luaL_argcheck@PLT
	movq	-8(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	newpatt@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, %rax
	addq	$16, %rax
	movq	%rax, -24(%rbp)
	movq	IJmp(%rip), %rsi
	movl	-32(%rbp), %edx
	subl	$1, %edx
	callq	setinst@PLT
	movl	$1, -28(%rbp)
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jg	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-40(%rbp), %edx
	addl	$1, %edx
	movl	-28(%rbp), %eax
	shll	$1, %eax
	addl	%eax, %edx
	callq	addpatt@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movslq	%ecx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rdi, %rax
	addq	$16, %rax
	movq	%rax, -24(%rbp)
	movq	IRet(%rip), %rsi
	xorl	%edx, %edx
	callq	setinst@PLT
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_11
.LBB0_14:
	movl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movslq	%ecx, %rdx
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	subq	%rdx, %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movl	$2, -32(%rbp)
	movl	$1, -28(%rbp)
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jg	.LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	addl	$1, %esi
	movl	-28(%rbp), %eax
	shll	$1, %eax
	addl	%eax, %esi
	callq	pattsize@PLT
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-32(%rbp), %edx
	movl	-32(%rbp), %ecx
	addl	-48(%rbp), %ecx
	movl	-40(%rbp), %r8d
	addl	$1, %r8d
	movl	-40(%rbp), %r9d
	addl	$2, %r9d
	movl	-28(%rbp), %eax
	shll	$1, %eax
	addl	%eax, %r9d
	callq	checkrule@PLT
	movl	-48(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	%eax, -32(%rbp)
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_15
.LBB0_18:
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	addl	$2, %esi
	callq	lua_pushvalue@PLT
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	addl	$1, %esi
	callq	lua_gettable@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_tonumber@PLT
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	lua_pop@PLT
	cmpl	$0, -28(%rbp)
	jne	.LBB0_20
# %bb.19:
	movq	-8(%rbp), %rdi
	leaq	.L.str.4(%rip), %rsi
	callq	luaL_error@PLT
.LBB0_20:
	movq	-24(%rbp), %rdi
	movq	ICall(%rip), %rsi
	movl	-28(%rbp), %edx
	callq	setinst@PLT
	movl	$0, -28(%rbp)
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB0_29
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=1
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	cmpq	IOpenCall(%rip), %rax
	jne	.LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_21 Depth=1
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	addl	$1, %esi
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %edx
	callq	getposition@PLT
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	addl	$1, %esi
	callq	target@PLT
	movq	%rax, %rcx
	movq	-64(%rbp), %rax                 # 8-byte Reload
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	cmpq	IRet(%rip), %rax
	jne	.LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_21 Depth=1
	movq	IJmp(%rip), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	jmp	.LBB0_26
.LBB0_25:                               #   in Loop: Header=BB0_21 Depth=1
	movq	ICall(%rip), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
.LBB0_26:                               #   in Loop: Header=BB0_21 Depth=1
	movq	-72(%rbp), %rcx                 # 8-byte Reload
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movq	%rcx, (%rax)
	movl	-52(%rbp), %ecx
	subl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movl	%ecx, 8(%rax)
.LBB0_27:                               #   in Loop: Header=BB0_21 Depth=1
	jmp	.LBB0_28
.LBB0_28:                               #   in Loop: Header=BB0_21 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-28(%rbp), %rax
	shlq	$4, %rax
	addq	%rax, %rdi
	callq	sizei@PLT
	movq	%rax, %rcx
	movslq	-28(%rbp), %rax
	addq	%rcx, %rax
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_21
.LBB0_29:
	movq	-24(%rbp), %rdi
	callq	optimizejumps@PLT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	lua_replace@PLT
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	callq	lua_settop@PLT
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid field in grammar"
	.bss
	.globl	MAXPATTSIZE
	.p2align	2
MAXPATTSIZE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"grammar too large"
	.bss
	.globl	LUA_MINSTACK
	.p2align	2
LUA_MINSTACK:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"grammar has too many rules"
.L.str.3:
	.asciz	"empty grammar"
	.bss
	.globl	IJmp
	.p2align	3
IJmp:
	.quad	0                               # 0x0
	.globl	IRet
	.p2align	3
IRet:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"initial rule not defined in given grammar"
	.bss
	.globl	ICall
	.p2align	3
ICall:
	.quad	0                               # 0x0
	.globl	IOpenCall
	.p2align	3
IOpenCall:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fix_l
	.addrsig_sym lua_gettop
	.addrsig_sym lua_newtable
	.addrsig_sym lua_pushinteger
	.addrsig_sym lua_pushnil
	.addrsig_sym lua_next
	.addrsig_sym lua_tonumber
	.addrsig_sym lua_isstring
	.addrsig_sym lua_replace
	.addrsig_sym testpattern
	.addrsig_sym luaL_error
	.addrsig_sym pattsize
	.addrsig_sym luaL_checkstack
	.addrsig_sym lua_insert
	.addrsig_sym lua_pushvalue
	.addrsig_sym lua_settable
	.addrsig_sym luaL_argcheck
	.addrsig_sym newpatt
	.addrsig_sym setinst
	.addrsig_sym addpatt
	.addrsig_sym checkrule
	.addrsig_sym lua_gettable
	.addrsig_sym lua_pop
	.addrsig_sym getposition
	.addrsig_sym target
	.addrsig_sym sizei
	.addrsig_sym optimizejumps
	.addrsig_sym lua_settop
	.addrsig_sym MAXPATTSIZE
	.addrsig_sym LUA_MINSTACK
	.addrsig_sym IJmp
	.addrsig_sym IRet
	.addrsig_sym ICall
	.addrsig_sym IOpenCall