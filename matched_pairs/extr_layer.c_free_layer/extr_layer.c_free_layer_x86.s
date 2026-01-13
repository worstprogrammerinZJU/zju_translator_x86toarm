	.text
	.globl	free_layer                      # -- Begin function free_layer
	.p2align	4, 0x90
free_layer:                             # @free_layer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	16(%rbp), %rax
	movq	%rax, -8(%rbp)                  # 8-byte Spill
	movq	(%rax), %rax
	cmpq	DROPOUT(%rip), %rax
	jne	.LBB0_4
# %bb.1:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 584(%rax)
	je	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	584(%rax), %rdi
	callq	free@PLT
.LBB0_3:
	jmp	.LBB0_84
.LBB0_4:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 624(%rax)
	je	.LBB0_6
# %bb.5:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	624(%rax), %rdi
	callq	free@PLT
.LBB0_6:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 616(%rax)
	je	.LBB0_8
# %bb.7:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	616(%rax), %rdi
	callq	free@PLT
.LBB0_8:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 608(%rax)
	je	.LBB0_10
# %bb.9:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	608(%rax), %rdi
	callq	free@PLT
.LBB0_10:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 600(%rax)
	je	.LBB0_12
# %bb.11:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	600(%rax), %rdi
	callq	free@PLT
.LBB0_12:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 592(%rax)
	je	.LBB0_14
# %bb.13:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	592(%rax), %rdi
	callq	free@PLT
.LBB0_14:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 584(%rax)
	je	.LBB0_16
# %bb.15:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	584(%rax), %rdi
	callq	free@PLT
.LBB0_16:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 576(%rax)
	je	.LBB0_18
# %bb.17:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	576(%rax), %rdi
	callq	free@PLT
.LBB0_18:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 568(%rax)
	je	.LBB0_20
# %bb.19:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	568(%rax), %rdi
	callq	free@PLT
.LBB0_20:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 560(%rax)
	je	.LBB0_22
# %bb.21:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	560(%rax), %rdi
	callq	free@PLT
.LBB0_22:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 552(%rax)
	je	.LBB0_24
# %bb.23:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	552(%rax), %rdi
	callq	free@PLT
.LBB0_24:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 544(%rax)
	je	.LBB0_26
# %bb.25:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	544(%rax), %rdi
	callq	free@PLT
.LBB0_26:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 536(%rax)
	je	.LBB0_28
# %bb.27:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	536(%rax), %rdi
	callq	free@PLT
.LBB0_28:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 528(%rax)
	je	.LBB0_30
# %bb.29:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	528(%rax), %rdi
	callq	free@PLT
.LBB0_30:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 520(%rax)
	je	.LBB0_32
# %bb.31:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	520(%rax), %rdi
	callq	free@PLT
.LBB0_32:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 512(%rax)
	je	.LBB0_34
# %bb.33:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	512(%rax), %rdi
	callq	free@PLT
.LBB0_34:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 504(%rax)
	je	.LBB0_36
# %bb.35:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	504(%rax), %rdi
	callq	free@PLT
.LBB0_36:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 496(%rax)
	je	.LBB0_38
# %bb.37:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	496(%rax), %rdi
	callq	free@PLT
.LBB0_38:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 488(%rax)
	je	.LBB0_40
# %bb.39:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	488(%rax), %rdi
	callq	free@PLT
.LBB0_40:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 480(%rax)
	je	.LBB0_42
# %bb.41:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	480(%rax), %rdi
	callq	free@PLT
.LBB0_42:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 472(%rax)
	je	.LBB0_44
# %bb.43:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	472(%rax), %rdi
	callq	free@PLT
.LBB0_44:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 464(%rax)
	je	.LBB0_46
# %bb.45:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	464(%rax), %rdi
	callq	free@PLT
.LBB0_46:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 456(%rax)
	je	.LBB0_48
# %bb.47:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	456(%rax), %rdi
	callq	free@PLT
.LBB0_48:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 448(%rax)
	je	.LBB0_50
# %bb.49:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	448(%rax), %rdi
	callq	free@PLT
.LBB0_50:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 440(%rax)
	je	.LBB0_52
# %bb.51:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	440(%rax), %rdi
	callq	free@PLT
.LBB0_52:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 432(%rax)
	je	.LBB0_54
# %bb.53:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	432(%rax), %rdi
	callq	free@PLT
.LBB0_54:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 424(%rax)
	je	.LBB0_56
# %bb.55:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	424(%rax), %rdi
	callq	free@PLT
.LBB0_56:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 416(%rax)
	je	.LBB0_58
# %bb.57:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	416(%rax), %rdi
	callq	free@PLT
.LBB0_58:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 408(%rax)
	je	.LBB0_60
# %bb.59:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	408(%rax), %rdi
	callq	free@PLT
.LBB0_60:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 400(%rax)
	je	.LBB0_62
# %bb.61:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	400(%rax), %rdi
	callq	free@PLT
.LBB0_62:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 392(%rax)
	je	.LBB0_64
# %bb.63:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	392(%rax), %rdi
	callq	free@PLT
.LBB0_64:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 384(%rax)
	je	.LBB0_66
# %bb.65:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	384(%rax), %rdi
	callq	free@PLT
.LBB0_66:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 376(%rax)
	je	.LBB0_68
# %bb.67:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	376(%rax), %rdi
	callq	free@PLT
.LBB0_68:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 368(%rax)
	je	.LBB0_70
# %bb.69:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	368(%rax), %rdi
	callq	free@PLT
.LBB0_70:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 360(%rax)
	je	.LBB0_72
# %bb.71:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	360(%rax), %rdi
	callq	free@PLT
.LBB0_72:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 352(%rax)
	je	.LBB0_74
# %bb.73:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	352(%rax), %rdi
	callq	free@PLT
.LBB0_74:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 344(%rax)
	je	.LBB0_76
# %bb.75:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	344(%rax), %rdi
	callq	free@PLT
.LBB0_76:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 336(%rax)
	je	.LBB0_78
# %bb.77:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	336(%rax), %rdi
	callq	free@PLT
.LBB0_78:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 328(%rax)
	je	.LBB0_80
# %bb.79:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	328(%rax), %rdi
	callq	free@PLT
.LBB0_80:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 320(%rax)
	je	.LBB0_82
# %bb.81:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	320(%rax), %rdi
	callq	free@PLT
.LBB0_82:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	cmpq	$0, 312(%rax)
	je	.LBB0_84
# %bb.83:
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	312(%rax), %rdi
	callq	free@PLT
.LBB0_84:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	DROPOUT
	.p2align	3
DROPOUT:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym free
	.addrsig_sym DROPOUT