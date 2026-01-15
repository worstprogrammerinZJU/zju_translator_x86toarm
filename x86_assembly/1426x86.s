	.text
	.p2align	4, 0x90                         # -- Begin function read_hash_digraph
read_hash_digraph:                      # @read_hash_digraph
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$62, %edi
	callq	next@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	$125, %edi
	callq	make_keyword@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_2:
	movl	$58, %edi
	callq	next@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.3:
	movl	$37, %edi
	callq	next@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.4:
	movl	$58, %edi
	callq	next@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.5:
	movsbl	KHASHHASH(%rip), %edi
	callq	make_keyword@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_6:
	movl	$37, %edi
	callq	unreadc@PLT
.LBB0_7:
	movl	$35, %edi
	callq	make_keyword@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	movq	$0, -8(%rbp)
.LBB0_9:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KHASHHASH
KHASHHASH:
	.byte	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_hash_digraph
	.addrsig_sym next
	.addrsig_sym make_keyword
	.addrsig_sym unreadc
	.addrsig_sym KHASHHASH