	.text
	.globl	initArduino                     # -- Begin function initArduino
	.p2align	4, 0x90
initArduino:                            # @initArduino
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	CONFIG_LOG_DEFAULT_LEVEL(%rip), %esi
	leaq	.L.str(%rip), %rdi
	callq	esp_log_level_set@PLT
	movb	$0, %al
	callq	nvs_flash_init@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpq	ESP_ERR_NVS_NO_FREE_PAGES(%rip), %rax
	jne	.LBB0_7
# %bb.1:
	movl	ESP_PARTITION_TYPE_DATA(%rip), %edi
	movl	ESP_PARTITION_SUBTYPE_DATA_NVS(%rip), %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	esp_partition_find_first@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB0_6
# %bb.2:
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	xorl	%esi, %esi
	callq	esp_partition_erase_range@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB0_4
# %bb.3:
	movb	$0, %al
	callq	nvs_flash_init@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	log_e@PLT
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	jmp	.LBB0_7
.LBB0_7:
	cmpq	$0, -8(%rbp)
	je	.LBB0_9
# %bb.8:
	movq	-8(%rbp), %rsi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	log_e@PLT
.LBB0_9:
	movb	$0, %al
	callq	init@PLT
	movb	$0, %al
	callq	initVariant@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"*"
	.bss
	.globl	CONFIG_LOG_DEFAULT_LEVEL
	.p2align	2
CONFIG_LOG_DEFAULT_LEVEL:
	.long	0                               # 0x0
	.globl	ESP_ERR_NVS_NO_FREE_PAGES
	.p2align	3
ESP_ERR_NVS_NO_FREE_PAGES:
	.quad	0                               # 0x0
	.globl	ESP_PARTITION_TYPE_DATA
	.p2align	2
ESP_PARTITION_TYPE_DATA:
	.long	0                               # 0x0
	.globl	ESP_PARTITION_SUBTYPE_DATA_NVS
	.p2align	2
ESP_PARTITION_SUBTYPE_DATA_NVS:
	.long	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Failed to format the broken NVS partition!"
.L.str.2:
	.asciz	"Failed to initialize NVS! Error: %u"
	.bss
	.globl	ESP_BT_MODE_BTDM
	.p2align	2
ESP_BT_MODE_BTDM:
	.long	0                               # 0x0
	.globl	ESP_OK
	.p2align	3
ESP_OK:
	.quad	0                               # 0x0
	.globl	ESP_OTA_IMG_PENDING_VERIFY
	.p2align	3
ESP_OTA_IMG_PENDING_VERIFY:
	.quad	0                               # 0x0
	.globl	F_CPU
	.p2align	2
F_CPU:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym esp_log_level_set
	.addrsig_sym nvs_flash_init
	.addrsig_sym esp_partition_find_first
	.addrsig_sym esp_partition_erase_range
	.addrsig_sym log_e
	.addrsig_sym init
	.addrsig_sym initVariant
	.addrsig_sym CONFIG_LOG_DEFAULT_LEVEL
	.addrsig_sym ESP_ERR_NVS_NO_FREE_PAGES
	.addrsig_sym ESP_PARTITION_TYPE_DATA
	.addrsig_sym ESP_PARTITION_SUBTYPE_DATA_NVS