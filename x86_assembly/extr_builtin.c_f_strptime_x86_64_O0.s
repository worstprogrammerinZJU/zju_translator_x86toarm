	.text
	.p2align	4, 0x90                         # -- Begin function f_strptime
f_strptime:                             # @f_strptime
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	-20(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movl	-24(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	je	.LBB0_3
.LBB0_2:
	movl	-20(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	movl	-24(%rbp), %eax
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	-84(%rbp), %edi                 # 4-byte Reload
	movl	-80(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	ret_error2@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_22
.LBB0_3:
	leaq	-48(%rbp), %rdi
	xorl	%esi, %esi
	movl	$24, %edx
	callq	memset@PLT
	movl	$8, -48(%rbp)
	movl	$367, -44(%rbp)                 # imm = 0x16F
	movl	-20(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -56(%rbp)
	movl	-24(%rbp), %edi
	callq	jv_string_value@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	leaq	.L.str.1(%rip), %rsi
	callq	strcmp@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movl	-20(%rbp), %eax
	movl	%eax, -92(%rbp)                 # 4-byte Spill
	movl	-24(%rbp), %eax
	movl	%eax, -88(%rbp)                 # 4-byte Spill
	leaq	.L.str.2(%rip), %rdi
	callq	jv_string@PLT
	movl	-92(%rbp), %edi                 # 4-byte Reload
	movl	-88(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	ret_error2@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_22
.LBB0_5:
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	callq	strptime@PLT
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB0_8
# %bb.6:
	movq	-72(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_9
# %bb.7:
	movq	-72(%rbp), %rax
	movsbl	(%rax), %edi
	callq	isspace@PLT
	cmpl	$0, %eax
	jne	.LBB0_9
.LBB0_8:
	movl	-20(%rbp), %eax
	movl	%eax, -100(%rbp)                # 4-byte Spill
	movl	-24(%rbp), %eax
	movl	%eax, -96(%rbp)                 # 4-byte Spill
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	leaq	.L.str.3(%rip), %rdi
	callq	jv_string_fmt@PLT
	movl	-100(%rbp), %edi                # 4-byte Reload
	movl	-96(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	ret_error2@PLT
	movl	%eax, -4(%rbp)
	jmp	.LBB0_22
.LBB0_9:
	movl	-24(%rbp), %edi
	callq	jv_free@PLT
	cmpl	$8, -48(%rbp)
	jne	.LBB0_14
# %bb.10:
	cmpq	$0, -40(%rbp)
	je	.LBB0_14
# %bb.11:
	cmpl	$0, -32(%rbp)
	jl	.LBB0_14
# %bb.12:
	cmpl	$11, -32(%rbp)
	jg	.LBB0_14
# %bb.13:
	leaq	-48(%rbp), %rdi
	callq	set_tm_wday@PLT
.LBB0_14:
	cmpl	$367, -44(%rbp)                 # imm = 0x16F
	jne	.LBB0_19
# %bb.15:
	cmpq	$0, -40(%rbp)
	je	.LBB0_19
# %bb.16:
	cmpl	$0, -32(%rbp)
	jl	.LBB0_19
# %bb.17:
	cmpl	$11, -32(%rbp)
	jg	.LBB0_19
# %bb.18:
	leaq	-48(%rbp), %rdi
	callq	set_tm_yday@PLT
.LBB0_19:
	leaq	-48(%rbp), %rdi
	callq	tm2jv@PLT
	movl	%eax, -76(%rbp)
	movq	-72(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	je	.LBB0_21
# %bb.20:
	movl	-76(%rbp), %eax
	movl	%eax, -104(%rbp)                # 4-byte Spill
	movq	-72(%rbp), %rdi
	callq	jv_string@PLT
	movl	-104(%rbp), %edi                # 4-byte Reload
	movl	%eax, %esi
	callq	jv_array_append@PLT
	movl	%eax, -76(%rbp)
.LBB0_21:
	movl	-20(%rbp), %edi
	callq	jv_free@PLT
	movl	-76(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_22:
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"strptime/1 requires string inputs and arguments"
.L.str.1:
	.asciz	"%Y-%m-%dT%H:%M:%SZ"
.L.str.2:
	.asciz	"strptime/1 only supports ISO 8601 on this platform"
.L.str.3:
	.asciz	"date \"%s\" does not match format \"%s\""
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_strptime
	.addrsig_sym jv_get_kind
	.addrsig_sym ret_error2
	.addrsig_sym jv_string
	.addrsig_sym memset
	.addrsig_sym jv_string_value
	.addrsig_sym strcmp
	.addrsig_sym strptime
	.addrsig_sym isspace
	.addrsig_sym jv_string_fmt
	.addrsig_sym jv_free
	.addrsig_sym set_tm_wday
	.addrsig_sym set_tm_yday
	.addrsig_sym tm2jv
	.addrsig_sym jv_array_append
	.addrsig_sym JV_KIND_STRING