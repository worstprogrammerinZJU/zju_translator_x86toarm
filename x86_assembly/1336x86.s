	.text
	.p2align	4, 0x90                         # -- Begin function parse_slice
parse_slice:                            # @parse_slice
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-12(%rbp), %edi
	callq	jv_copy@PLT
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	leaq	.L.str(%rip), %rdi
	callq	jv_string@PLT
	movl	-80(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_object_get@PLT
	movl	%eax, -36(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	leaq	.L.str.1(%rip), %rdi
	callq	jv_string@PLT
	movl	-76(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	callq	jv_object_get@PLT
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NULL(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movl	-36(%rbp), %edi
	callq	jv_free@PLT
	xorl	%edi, %edi
	callq	jv_number@PLT
	movl	%eax, -36(%rbp)
.LBB0_2:
	movl	-8(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_ARRAY(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movl	-8(%rbp), %edi
	callq	jv_array_length@PLT
	movl	%eax, -44(%rbp)
	jmp	.LBB0_8
.LBB0_4:
	movl	-8(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_STRING(%rip), %rax
	jne	.LBB0_6
# %bb.5:
	movl	-8(%rbp), %edi
	callq	jv_string_length_codepoints@PLT
	movl	%eax, -44(%rbp)
	jmp	.LBB0_7
.LBB0_6:
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_34
.LBB0_7:
	jmp	.LBB0_8
.LBB0_8:
	movl	-40(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NULL(%rip), %rax
	jne	.LBB0_10
# %bb.9:
	movl	-40(%rbp), %edi
	callq	jv_free@PLT
	movl	-44(%rbp), %edi
	callq	jv_number@PLT
	movl	%eax, -40(%rbp)
.LBB0_10:
	movl	-36(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NUMBER(%rip), %rax
	jne	.LBB0_12
# %bb.11:
	movl	-40(%rbp), %edi
	callq	jv_get_kind@PLT
	cmpq	JV_KIND_NUMBER(%rip), %rax
	je	.LBB0_13
.LBB0_12:
	movl	-36(%rbp), %edi
	callq	jv_free@PLT
	movl	-40(%rbp), %edi
	callq	jv_free@PLT
	movl	$0, -4(%rbp)
	jmp	.LBB0_34
.LBB0_13:
	movl	-36(%rbp), %edi
	callq	jv_number_value@PLT
	movsd	%xmm0, -56(%rbp)
	movl	-40(%rbp), %edi
	callq	jv_number_value@PLT
	movsd	%xmm0, -64(%rbp)
	movl	-36(%rbp), %edi
	callq	jv_free@PLT
	movl	-40(%rbp), %edi
	callq	jv_free@PLT
	xorps	%xmm0, %xmm0
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB0_15
# %bb.14:
	cvtsi2sdl	-44(%rbp), %xmm0
	addsd	-56(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB0_15:
	xorps	%xmm0, %xmm0
	ucomisd	-64(%rbp), %xmm0
	jbe	.LBB0_17
# %bb.16:
	cvtsi2sdl	-44(%rbp), %xmm0
	addsd	-64(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
.LBB0_17:
	xorps	%xmm0, %xmm0
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB0_19
# %bb.18:
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB0_19:
	movsd	-56(%rbp), %xmm0                # xmm0 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_21
# %bb.20:
	cvtsi2sdl	-44(%rbp), %xmm0
	movsd	%xmm0, -56(%rbp)
.LBB0_21:
	cvttsd2si	-56(%rbp), %eax
	movl	%eax, -68(%rbp)
	movsd	-64(%rbp), %xmm0                # xmm0 = mem[0],zero
	cvtsi2sdl	-44(%rbp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_23
# %bb.22:
	movl	-44(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
	jmp	.LBB0_24
.LBB0_23:
	cvttsd2si	-64(%rbp), %eax
	movl	%eax, -84(%rbp)                 # 4-byte Spill
.LBB0_24:
	movl	-84(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -72(%rbp)
	cvtsi2sdl	-72(%rbp), %xmm1
	movsd	-64(%rbp), %xmm0                # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_26
# %bb.25:
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
.LBB0_26:
	movl	-72(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jle	.LBB0_28
# %bb.27:
	movl	-44(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB0_28:
	movl	-72(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jge	.LBB0_30
# %bb.29:
	movl	-68(%rbp), %eax
	movl	%eax, -72(%rbp)
.LBB0_30:
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	xorl	%ecx, %ecx
	cmpl	-68(%rbp), %ecx
	movb	%al, -85(%rbp)                  # 1-byte Spill
	jg	.LBB0_33
# %bb.31:
	movl	-68(%rbp), %ecx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	cmpl	-72(%rbp), %ecx
	movb	%al, -85(%rbp)                  # 1-byte Spill
	jg	.LBB0_33
# %bb.32:
	movl	-72(%rbp), %eax
	cmpl	-44(%rbp), %eax
	setle	%al
	movb	%al, -85(%rbp)                  # 1-byte Spill
.LBB0_33:
	movb	-85(%rbp), %al                  # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-68(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-72(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$1, -4(%rbp)
.LBB0_34:
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"start"
.L.str.1:
	.asciz	"end"
	.bss
	.globl	JV_KIND_NULL
	.p2align	3
JV_KIND_NULL:
	.quad	0                               # 0x0
	.globl	JV_KIND_ARRAY
	.p2align	3
JV_KIND_ARRAY:
	.quad	0                               # 0x0
	.globl	JV_KIND_STRING
	.p2align	3
JV_KIND_STRING:
	.quad	0                               # 0x0
	.globl	JV_KIND_NUMBER
	.p2align	3
JV_KIND_NUMBER:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym parse_slice
	.addrsig_sym jv_object_get
	.addrsig_sym jv_copy
	.addrsig_sym jv_string
	.addrsig_sym jv_get_kind
	.addrsig_sym jv_free
	.addrsig_sym jv_number
	.addrsig_sym jv_array_length
	.addrsig_sym jv_string_length_codepoints
	.addrsig_sym jv_number_value
	.addrsig_sym assert
	.addrsig_sym JV_KIND_NULL
	.addrsig_sym JV_KIND_ARRAY
	.addrsig_sym JV_KIND_STRING
	.addrsig_sym JV_KIND_NUMBER