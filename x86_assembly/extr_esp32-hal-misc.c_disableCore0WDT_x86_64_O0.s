	.text
	.globl	disableCore0WDT                 # -- Begin function disableCore0WDT
	.p2align	4, 0x90
disableCore0WDT:                        # @disableCore0WDT
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	xorl	%edi, %edi
	callq	xTaskGetIdleTaskHandleForCPU@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	esp_task_wdt_delete@PLT
	cmpq	ESP_OK(%rip), %rax
	je	.LBB0_3
.LBB0_2:
	leaq	.L.str(%rip), %rdi
	callq	log_e@PLT
.LBB0_3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	ESP_OK
	.p2align	3
ESP_OK:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Failed to remove Core 0 IDLE task from WDT"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xTaskGetIdleTaskHandleForCPU
	.addrsig_sym esp_task_wdt_delete
	.addrsig_sym log_e
	.addrsig_sym ESP_OK