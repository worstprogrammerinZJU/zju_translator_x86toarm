	.text
	.p2align	4, 0x90                         # -- Begin function accumcap
accumcap:                               # @accumcap
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movl	%edi, %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	callq	isfullcap@PLT
	cmpq	$0, %rax
	jne	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	isclosecap@PLT
	cmpq	$0, %rax
	jne	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rdi
	callq	pushcapture@PLT
	cmpl	$1, %eax
	je	.LBB0_4
.LBB0_3:
	movq	-24(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	luaL_error@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_10
.LBB0_4:
	jmp	.LBB0_5
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	isclosecap@PLT
	cmpq	$0, %rax
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_6
	jmp	.LBB0_9
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	captype@PLT
	cmpq	Cfunction(%rip), %rax
	je	.LBB0_8
# %bb.7:
	movq	-24(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	luaL_error@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_10
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-16(%rbp), %rdi
	callq	pushluaval@PLT
	movq	-24(%rbp), %rdi
	movl	$4294967294, %esi               # imm = 0xFFFFFFFE
	callq	lua_insert@PLT
	movq	-16(%rbp), %rdi
	xorl	%esi, %esi
	callq	pushallcaptures@PLT
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	addl	$1, %esi
	movl	$1, %edx
	callq	lua_call@PLT
	jmp	.LBB0_5
.LBB0_9:
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movl	$1, -4(%rbp)
.LBB0_10:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"no initial value for accumulator capture"
	.bss
	.globl	Cfunction
	.p2align	3
Cfunction:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"invalid (non function) capture to accumulate"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym accumcap
	.addrsig_sym isfullcap
	.addrsig_sym isclosecap
	.addrsig_sym pushcapture
	.addrsig_sym luaL_error
	.addrsig_sym captype
	.addrsig_sym pushluaval
	.addrsig_sym lua_insert
	.addrsig_sym pushallcaptures
	.addrsig_sym lua_call
	.addrsig_sym Cfunction