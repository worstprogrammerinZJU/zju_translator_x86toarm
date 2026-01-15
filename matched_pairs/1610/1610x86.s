	.text
	.p2align	4, 0x90                         # -- Begin function printpat_l
printpat_l:                             # @printpat_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	getpatt@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	lua_getfenv@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_objlen@PLT
	movl	%eax, -20(%rbp)
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$1, -24(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	.LBB0_7
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %esi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movq	-8(%rbp), %rdi
	movl	-24(%rbp), %edx
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_rawgeti@PLT
	movq	-8(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_isstring@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_tostring@PLT
	movq	%rax, %rsi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	movl	$4294967295, %esi               # imm = 0xFFFFFFFF
	callq	lua_type@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	lua_typename@PLT
	movq	%rax, %rsi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	$1, %esi
	callq	lua_pop@PLT
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB0_1
.LBB0_7:
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movq	-16(%rbp), %rdi
	callq	printpatt@PLT
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"["
.L.str.1:
	.asciz	"%d = "
.L.str.2:
	.asciz	"%s  "
.L.str.3:
	.asciz	"]\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printpat_l
	.addrsig_sym getpatt
	.addrsig_sym lua_getfenv
	.addrsig_sym lua_objlen
	.addrsig_sym printf
	.addrsig_sym lua_rawgeti
	.addrsig_sym lua_isstring
	.addrsig_sym lua_tostring
	.addrsig_sym lua_typename
	.addrsig_sym lua_type
	.addrsig_sym lua_pop
	.addrsig_sym printpatt