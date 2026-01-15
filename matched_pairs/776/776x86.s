	.text
	.globl	enableCore1WDT                  # -- Begin function enableCore1WDT
	.p2align	4, 0x90
enableCore1WDT:                         # @enableCore1WDT
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, %edi
	callq	xTaskGetIdleTaskHandleForCPU@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	callq	esp_task_wdt_add@PLT
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
	.asciz	"Failed to add Core 1 IDLE task to WDT"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym xTaskGetIdleTaskHandleForCPU
	.addrsig_sym esp_task_wdt_add
	.addrsig_sym log_e
	.addrsig_sym ESP_OK