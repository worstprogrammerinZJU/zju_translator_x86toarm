	.text
	.globl	read_toplevels                  # -- Begin function read_toplevels
	.p2align	4, 0x90
read_toplevels:                         # @read_toplevels
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, toplevels(%rip)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movb	$0, %al
	callq	peek@PLT
	movq	(%rax), %rax
	cmpq	TEOF(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	movq	toplevels(%rip), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	is_funcdef@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	toplevels(%rip), %rax
	movq	%rax, -8(%rbp)                  # 8-byte Spill
	movb	$0, %al
	callq	read_funcdef@PLT
	movq	-8(%rbp), %rdi                  # 8-byte Reload
	movl	%eax, %esi
	callq	vec_push@PLT
	jmp	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	toplevels(%rip), %rdi
	movl	$1, %esi
	callq	read_decl@PLT
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_1
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	toplevels
	.p2align	3
toplevels:
	.quad	0
	.globl	TEOF
	.p2align	3
TEOF:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_vector
	.addrsig_sym peek
	.addrsig_sym is_funcdef
	.addrsig_sym vec_push
	.addrsig_sym read_funcdef
	.addrsig_sym read_decl
	.addrsig_sym toplevels
	.addrsig_sym TEOF