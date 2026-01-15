	.text
	.p2align	4, 0x90                         # -- Begin function test_map
test_map:                               # @test_map
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movb	$0, %al
	callq	make_map@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	map_get@PLT
	movq	%rax, %rdi
	callq	assert_null@PLT
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$10000, -12(%rbp)               # imm = 0x2710
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %esi
	leaq	.L.str.1(%rip), %rdi
	callq	format@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-12(%rbp), %rdx
	callq	map_put@PLT
	movl	-12(%rbp), %eax
	movl	%eax, -60(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	map_get@PLT
	movl	-60(%rbp), %edi                 # 4-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movslq	%eax, %rsi
	callq	assert_int@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$0, -28(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$1000, -28(%rbp)                # imm = 0x3E8
	jge	.LBB0_8
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-28(%rbp), %esi
	leaq	.L.str.1(%rip), %rdi
	callq	format@PLT
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movslq	-28(%rbp), %rdx
	callq	map_put@PLT
	movl	-28(%rbp), %eax
	movl	%eax, -64(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	map_get@PLT
	movl	-64(%rbp), %edi                 # 4-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movslq	%eax, %rsi
	callq	assert_int@PLT
# %bb.7:                                #   in Loop: Header=BB0_5 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movl	$0, -44(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$10000, -44(%rbp)               # imm = 0x2710
	jge	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-44(%rbp), %esi
	leaq	.L.str.1(%rip), %rdi
	callq	format@PLT
	movq	%rax, -56(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	map_get@PLT
	movl	-68(%rbp), %edi                 # 4-byte Reload
	movq	%rax, %rsi
	callq	assert_int@PLT
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	map_remove@PLT
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	map_get@PLT
	movq	%rax, %rdi
	callq	assert_null@PLT
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_9
.LBB0_12:
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"abc"
.L.str.1:
	.asciz	"%d"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym test_map
	.addrsig_sym make_map
	.addrsig_sym assert_null
	.addrsig_sym map_get
	.addrsig_sym format
	.addrsig_sym map_put
	.addrsig_sym assert_int
	.addrsig_sym map_remove