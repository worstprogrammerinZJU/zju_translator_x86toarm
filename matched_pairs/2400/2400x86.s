	.text
	.p2align	4, 0x90                         # -- Begin function bench_put_delete_size
bench_put_delete_size:                  # @bench_put_delete_size
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	cmpl	$0, -12(%rbp)
	jle	.LBB0_2
# %bb.1:
	movb	$0, %al
	callq	ctdir@PLT
	movl	%eax, srv+16(%rip)
	movl	$1, srv(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, srv+4(%rip)
	imull	$1000000, -20(%rbp), %eax       # imm = 0xF4240
	movl	%eax, srv+8(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, srv+12(%rip)
.LBB0_2:
	movl	JOB_DATA_SIZE_LIMIT_MAX(%rip), %eax
	movl	%eax, job_data_size_limit(%rip)
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	callq	SERVER@PLT
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %edi
	callq	mustdiallocal@PLT
	movl	%eax, -28(%rbp)
	movl	-8(%rbp), %eax
	addl	$1, %eax
                                        # kill: def $rax killed $eax
	movq	%rsp, %rcx
	movq	%rcx, -152(%rbp)
	movq	%rax, %rcx
	addq	$15, %rcx
	andq	$-16, %rcx
	movq	%rsp, %rdi
	subq	%rcx, %rdi
	movq	%rdi, -176(%rbp)                # 8-byte Spill
	movq	%rdi, %rsp
	movq	%rax, -160(%rbp)
	movl	-8(%rbp), %edx
	movl	$97, %esi
	callq	memset@PLT
                                        # kill: def $ecx killed $eax
	movq	-176(%rbp), %rax                # 8-byte Reload
	movslq	-8(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movl	-8(%rbp), %edi
	callq	ctsetbytes@PLT
	leaq	-144(%rbp), %rdi
	movl	-8(%rbp), %edx
	leaq	.L.str(%rip), %rsi
	callq	sprintf@PLT
	movb	$0, %al
	callq	ctresettimer@PLT
	movl	$0, -164(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-164(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-28(%rbp), %edi
	leaq	-144(%rbp), %rsi
	callq	mustsend@PLT
	movq	-176(%rbp), %rsi                # 8-byte Reload
	movl	-28(%rbp), %edi
	callq	mustsend@PLT
	movl	-28(%rbp), %edi
	leaq	.L.str.1(%rip), %rsi
	callq	mustsend@PLT
	movl	-28(%rbp), %edi
	leaq	.L.str.2(%rip), %rsi
	callq	ckrespsub@PLT
	leaq	-80(%rbp), %rdi
	movl	-164(%rbp), %edx
	addl	$1, %edx
	leaq	.L.str.3(%rip), %rsi
	callq	sprintf@PLT
	movl	-28(%rbp), %edi
	leaq	-80(%rbp), %rsi
	callq	mustsend@PLT
	movl	-28(%rbp), %edi
	leaq	.L.str.4(%rip), %rsi
	callq	ckresp@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-164(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -164(%rbp)
	jmp	.LBB0_3
.LBB0_6:
	movb	$0, %al
	callq	ctstoptimer@PLT
	movq	-152(%rbp), %rax
	movq	%rax, %rsp
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	srv
	.p2align	2
srv:
	.zero	20
	.globl	JOB_DATA_SIZE_LIMIT_MAX
	.p2align	2
JOB_DATA_SIZE_LIMIT_MAX:
	.long	0                               # 0x0
	.globl	job_data_size_limit
	.p2align	2
job_data_size_limit:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"put 0 0 0 %d\r\n"
.L.str.1:
	.asciz	"\r\n"
.L.str.2:
	.asciz	"INSERTED "
.L.str.3:
	.asciz	"delete %d\r\n"
.L.str.4:
	.asciz	"DELETED\r\n"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bench_put_delete_size
	.addrsig_sym ctdir
	.addrsig_sym SERVER
	.addrsig_sym mustdiallocal
	.addrsig_sym memset
	.addrsig_sym ctsetbytes
	.addrsig_sym sprintf
	.addrsig_sym ctresettimer
	.addrsig_sym mustsend
	.addrsig_sym ckrespsub
	.addrsig_sym ckresp
	.addrsig_sym ctstoptimer
	.addrsig_sym srv
	.addrsig_sym JOB_DATA_SIZE_LIMIT_MAX
	.addrsig_sym job_data_size_limit