	.text
	.globl	read_from_string                # -- Begin function read_from_string
	.p2align	4, 0x90
read_from_string:                       # @read_from_string
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	make_file_string@PLT
	movl	%eax, %edi
	callq	stream_stash@PLT
	movb	$0, %al
	callq	read_toplevels@PLT
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-24(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_4
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	vec_get@PLT
	movl	%eax, %edi
	callq	emit_toplevel@PLT
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movb	$0, %al
	callq	stream_unstash@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stream_stash
	.addrsig_sym make_file_string
	.addrsig_sym read_toplevels
	.addrsig_sym vec_len
	.addrsig_sym emit_toplevel
	.addrsig_sym vec_get
	.addrsig_sym stream_unstash