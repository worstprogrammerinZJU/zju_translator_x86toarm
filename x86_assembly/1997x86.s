	.text
	.globl	parse_route                     # -- Begin function parse_route
	.p2align	4, 0x90
parse_route:                            # @parse_route
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
	movq	%rdi, -160(%rbp)                # 8-byte Spill
	movq	%rdi, -152(%rbp)                # 8-byte Spill
	movq	%rdx, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	option_find@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	strlen@PLT
	movl	%eax, -36(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_2
# %bb.1:
	leaq	.L.str.1(%rip), %rdi
	callq	error@PLT
.LBB0_2:
	movl	$1, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$44, %eax
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_3
.LBB0_8:
	movl	-40(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, -56(%rbp)
	movl	-40(%rbp), %edi
	movl	$4, %esi
	callq	calloc@PLT
	movq	%rax, -64(%rbp)
	movl	$0, -44(%rbp)
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	-32(%rbp), %rdi
	callq	atoi@PLT
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rdi
	movl	$44, %esi
	callq	strchr@PLT
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -68(%rbp)
	jge	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-8(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-68(%rbp), %edx
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-68(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movl	(%rax), %edx
	movq	-64(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
# %bb.13:                               #   in Loop: Header=BB0_9 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_9
.LBB0_14:
	movq	-160(%rbp), %rdi                # 8-byte Reload
	movl	-4(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	-72(%rbp), %esi
	movl	-40(%rbp), %edx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	callq	make_route_layer@PLT
	movq	-160(%rbp), %rax                # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	-56(%rbp), %rdx
	movslq	(%rdx), %rdx
	shlq	$5, %rdx
	addq	%rdx, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -104(%rbp)
	movq	8(%rcx), %rdx
	movq	%rdx, -96(%rbp)
	movq	16(%rcx), %rdx
	movq	%rdx, -88(%rbp)
	movq	24(%rcx), %rcx
	movq	%rcx, -80(%rbp)
	movq	-96(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-88(%rbp), %rcx
	movq	%rcx, 8(%rax)
	movq	-80(%rbp), %rcx
	movq	%rcx, 16(%rax)
	movl	$1, -44(%rbp)
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB0_22
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -108(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-108(%rbp), %rcx
	shlq	$5, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rcx
	movq	%rcx, -144(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -136(%rbp)
	movq	16(%rax), %rcx
	movq	%rcx, -128(%rbp)
	movq	24(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-136(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=1
	movq	-128(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jne	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=1
	movq	-160(%rbp), %rax                # 8-byte Reload
	movq	-120(%rbp), %rcx
	addq	16(%rax), %rcx
	movq	%rcx, 16(%rax)
	jmp	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_15 Depth=1
	movq	-160(%rbp), %rax                # 8-byte Reload
	movq	$0, 16(%rax)
	movq	$0, (%rax)
	movq	$0, 8(%rax)
.LBB0_20:                               #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_21
.LBB0_21:                               #   in Loop: Header=BB0_15 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB0_15
.LBB0_22:
	movq	-152(%rbp), %rax                # 8-byte Reload
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"layers"
.L.str.1:
	.asciz	"Route Layer must specify input layers"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym option_find
	.addrsig_sym strlen
	.addrsig_sym error
	.addrsig_sym calloc
	.addrsig_sym atoi
	.addrsig_sym strchr
	.addrsig_sym make_route_layer