	.text
	.p2align	4, 0x90                         # -- Begin function newpatt
newpatt:                                # @newpatt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	MAXPATTSIZE(%rip), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rax
	jb	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	luaL_error@PLT
.LBB0_2:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	addq	$1, %rsi
	shlq	$2, %rsi
	callq	lua_newuserdata@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	PATTERN_T(%rip), %esi
	callq	luaL_getmetatable@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	callq	lua_setmetatable@PLT
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	shlq	$2, %rax
	addq	%rax, %rdi
	movl	IEnd(%rip), %esi
	xorl	%edx, %edx
	callq	setinst@PLT
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	MAXPATTSIZE
	.p2align	2
MAXPATTSIZE:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pattern too big"
	.bss
	.globl	PATTERN_T
	.p2align	2
PATTERN_T:
	.long	0                               # 0x0
	.globl	IEnd
	.p2align	2
IEnd:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym newpatt
	.addrsig_sym luaL_error
	.addrsig_sym lua_newuserdata
	.addrsig_sym luaL_getmetatable
	.addrsig_sym lua_setmetatable
	.addrsig_sym setinst
	.addrsig_sym MAXPATTSIZE
	.addrsig_sym PATTERN_T
	.addrsig_sym IEnd