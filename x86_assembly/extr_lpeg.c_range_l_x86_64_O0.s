	.text
	.p2align	4, 0x90                         # -- Begin function range_l
range_l:                                # @range_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	lua_gettop@PLT
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	newcharset@PLT
	movq	%rax, -24(%rbp)
	movl	$1, -12(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jg	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	leaq	-40(%rbp), %rdx
	callq	luaL_checklstring@PLT
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$2, -40(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %esi
	movl	-12(%rbp), %edx
	leaq	.L.str(%rip), %rcx
	callq	luaL_argcheck@PLT
	movq	-48(%rbp), %rax
	movsbl	(%rax), %eax
	movl	%eax, -28(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movq	-48(%rbp), %rcx
	movsbl	1(%rcx), %ecx
	cmpl	%ecx, %eax
	jg	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-24(%rbp), %rax
	movl	4(%rax), %edi
	movl	-28(%rbp), %esi
	callq	setchar@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movq	-24(%rbp), %rdi
	callq	correctset@PLT
	movl	$1, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"range must have two characters"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym range_l
	.addrsig_sym lua_gettop
	.addrsig_sym newcharset
	.addrsig_sym luaL_checklstring
	.addrsig_sym luaL_argcheck
	.addrsig_sym setchar
	.addrsig_sym correctset