	.text
	.globl	statistics_connected_layer      # -- Begin function statistics_connected_layer
	.p2align	4, 0x90
statistics_connected_layer:             # @statistics_connected_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -8(%rbp)                  # 8-byte Spill
	cmpq	$0, 16(%rax)
	je	.LBB0_2
# %bb.1:
	leaq	.L.str(%rip), %rdi
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movl	12(%rax), %edi
	movl	(%rax), %esi
	callq	print_statistics@PLT
.LBB0_2:
	leaq	.L.str.1(%rip), %rdi
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movl	8(%rax), %edi
	movl	(%rax), %esi
	callq	print_statistics@PLT
	leaq	.L.str.2(%rip), %rdi
	callq	printf@PLT
                                        # kill: def $ecx killed $eax
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movl	4(%rax), %edi
	movl	(%rax), %esi
	callq	print_statistics@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Scales "
.L.str.1:
	.asciz	"Biases "
.L.str.2:
	.asciz	"Weights "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym print_statistics