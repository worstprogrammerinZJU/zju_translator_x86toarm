	.text
	.globl	jq_compile_args                 # -- Begin function jq_compile_args
	.p2align	4, 0x90
jq_compile_args:                        # @jq_compile_args
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	movq	-8(%rbp), %rax
	movl	8(%rax), %esi
	callq	jv_nomem_handler@PLT
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	movq	%rax, %rcx
	movb	$1, %al
	cmpq	JV_KIND_ARRAY(%rip), %rcx
	movb	%al, -41(%rbp)                  # 1-byte Spill
	je	.LBB0_2
# %bb.1:
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_OBJECT(%rip), %rax
	sete	%al
	movb	%al, -41(%rbp)                  # 1-byte Spill
.LBB0_2:
	movb	-41(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	strlen@PLT
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	movq	-56(%rbp), %rdx                 # 8-byte Reload
	movl	%eax, %ecx
	leaq	.L.str(%rip), %rsi
	callq	locfile_init@PLT
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	jq_reset@PLT
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_4
# %bb.3:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	bytecode_free@PLT
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
.LBB0_4:
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	leaq	-36(%rbp), %rdx
	callq	load_program@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB0_8
# %bb.5:
	movq	-8(%rbp), %rdi
	leaq	-36(%rbp), %rsi
	callq	builtins_bind@PLT
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jne	.LBB0_7
# %bb.6:
	movl	-36(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	movq	-32(%rbp), %rax
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	movl	-20(%rbp), %edi
	callq	args2obj@PLT
	movl	-84(%rbp), %edi                 # 4-byte Reload
	movq	-80(%rbp), %rsi                 # 8-byte Reload
	movq	-72(%rbp), %rdx                 # 8-byte Reload
	movl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	callq	block_compile@PLT
	movl	%eax, -40(%rbp)
.LBB0_7:
	jmp	.LBB0_9
.LBB0_8:
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
.LBB0_9:
	cmpl	$0, -40(%rbp)
	je	.LBB0_11
# %bb.10:
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	movl	-40(%rbp), %esi
	movl	-40(%rbp), %ecx
	leaq	.L.str.3(%rip), %rdx
	leaq	.L.str.2(%rip), %rax
	cmpl	$1, %ecx
	cmovgq	%rax, %rdx
	leaq	.L.str.1(%rip), %rdi
	callq	jv_string_fmt@PLT
	movq	-96(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	callq	jq_report_error@PLT
.LBB0_11:
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_13
# %bb.12:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	optimize@PLT
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
.LBB0_13:
	movq	-32(%rbp), %rdi
	callq	locfile_free@PLT
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.quad	0                               # 0x0
	.globl	JV_KIND_OBJECT
	.p2align	3
JV_KIND_OBJECT:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"<top-level>"
.L.str.1:
	.asciz	"jq: %d compile %s"
.L.str.2:
	.asciz	"errors"
.L.str.3:
	.asciz	"error"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_nomem_handler
	.addrsig_sym assert
	.addrsig_sym jv_get_kind
	.addrsig_sym locfile_init
	.addrsig_sym strlen
	.addrsig_sym jq_reset
	.addrsig_sym bytecode_free
	.addrsig_sym load_program
	.addrsig_sym builtins_bind
	.addrsig_sym block_compile
	.addrsig_sym args2obj
	.addrsig_sym jv_free
	.addrsig_sym jq_report_error
	.addrsig_sym jv_string_fmt
	.addrsig_sym optimize
	.addrsig_sym locfile_free
	.addrsig_sym JV_KIND_ARRAY
	.addrsig_sym JV_KIND_OBJECT