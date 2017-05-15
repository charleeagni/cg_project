	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI0_0:
	.quad	4580687786227393136     ## double 0.017453277777777776
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z8toradianf
	.align	4, 0x90
__Z8toradianf:                          ## @_Z8toradianf
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	movsd	LCPI0_0(%rip), %xmm1    ## xmm1 = mem[0],zero
	movss	%xmm0, -4(%rbp)
	cvtss2sd	-4(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z14draw_rectangleffffi
	.align	4, 0x90
__Z14draw_rectangleffffi:               ## @_Z14draw_rectangleffffi
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	%xmm2, -12(%rbp)
	movss	%xmm3, -16(%rbp)
	movl	%edi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	je	LBB1_2
## BB#1:
	movl	$9, %edi
	callq	_glBegin
	jmp	LBB1_3
LBB1_2:
	movl	$2, %edi
	callq	_glBegin
LBB1_3:
	movss	-4(%rbp), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         ## xmm1 = mem[0],zero,zero,zero
	callq	_glVertex2f
	movss	-4(%rbp), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	addss	-12(%rbp), %xmm0
	movss	-8(%rbp), %xmm1         ## xmm1 = mem[0],zero,zero,zero
	callq	_glVertex2f
	movss	-4(%rbp), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	addss	-12(%rbp), %xmm0
	movss	-8(%rbp), %xmm1         ## xmm1 = mem[0],zero,zero,zero
	addss	-16(%rbp), %xmm1
	callq	_glVertex2f
	movss	-4(%rbp), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         ## xmm1 = mem[0],zero,zero,zero
	addss	-16(%rbp), %xmm1
	callq	_glVertex2f
	callq	_glEnd
	callq	_glFlush
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI2_0:
	.long	1135869952              ## float 360
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI2_1:
	.quad	4603579539098121011     ## double 0.59999999999999998
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z11draw_circlefffi
	.align	4, 0x90
__Z11draw_circlefffi:                   ## @_Z11draw_circlefffi
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	%xmm2, -12(%rbp)
	movl	%edi, -16(%rbp)
	cmpl	$0, -16(%rbp)
	je	LBB2_2
## BB#1:
	movl	$9, %edi
	callq	_glBegin
	jmp	LBB2_3
LBB2_2:
	xorl	%edi, %edi
	callq	_glBegin
LBB2_3:
	xorps	%xmm0, %xmm0
	movss	%xmm0, -20(%rbp)
LBB2_4:                                 ## =>This Inner Loop Header: Depth=1
	movss	LCPI2_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	ucomiss	-20(%rbp), %xmm0
	jbe	LBB2_7
## BB#5:                                ##   in Loop: Header=BB2_4 Depth=1
	cvtss2sd	-4(%rbp), %xmm0
	cvtss2sd	-12(%rbp), %xmm1
	movss	-20(%rbp), %xmm2        ## xmm2 = mem[0],zero,zero,zero
	movsd	%xmm0, -40(%rbp)        ## 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -48(%rbp)        ## 8-byte Spill
	callq	__Z8toradianf
	cvtss2sd	%xmm0, %xmm0
	callq	_cos
	movsd	-48(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	cvtss2sd	-8(%rbp), %xmm0
	cvtss2sd	-12(%rbp), %xmm1
	movss	-20(%rbp), %xmm2        ## xmm2 = mem[0],zero,zero,zero
	movsd	%xmm0, -56(%rbp)        ## 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -64(%rbp)        ## 8-byte Spill
	callq	__Z8toradianf
	cvtss2sd	%xmm0, %xmm0
	callq	_sin
	movsd	-64(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-24(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm1        ## xmm1 = mem[0],zero,zero,zero
	callq	_glVertex2f
## BB#6:                                ##   in Loop: Header=BB2_4 Depth=1
	movsd	LCPI2_1(%rip), %xmm0    ## xmm0 = mem[0],zero
	cvtss2sd	-20(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	jmp	LBB2_4
LBB2_7:
	callq	_glEnd
	callq	_glFlush
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI3_0:
	.long	1127481344              ## float 180
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI3_1:
	.quad	4603579539098121011     ## double 0.59999999999999998
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z16draw_half_circlefffif
	.align	4, 0x90
__Z16draw_half_circlefffif:             ## @_Z16draw_half_circlefffif
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	%xmm2, -12(%rbp)
	movl	%edi, -16(%rbp)
	movss	%xmm3, -20(%rbp)
	cmpl	$0, -16(%rbp)
	je	LBB3_2
## BB#1:
	movl	$9, %edi
	callq	_glBegin
	jmp	LBB3_3
LBB3_2:
	xorl	%edi, %edi
	callq	_glBegin
LBB3_3:
	movss	-20(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -24(%rbp)
LBB3_4:                                 ## =>This Inner Loop Header: Depth=1
	movss	LCPI3_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	-24(%rbp), %xmm1        ## xmm1 = mem[0],zero,zero,zero
	addss	-20(%rbp), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	LBB3_7
## BB#5:                                ##   in Loop: Header=BB3_4 Depth=1
	cvtss2sd	-4(%rbp), %xmm0
	cvtss2sd	-12(%rbp), %xmm1
	movss	-24(%rbp), %xmm2        ## xmm2 = mem[0],zero,zero,zero
	movsd	%xmm0, -40(%rbp)        ## 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -48(%rbp)        ## 8-byte Spill
	callq	__Z8toradianf
	cvtss2sd	%xmm0, %xmm0
	callq	_cos
	movsd	-48(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-40(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	cvtss2sd	-8(%rbp), %xmm0
	cvtss2sd	-12(%rbp), %xmm1
	movss	-24(%rbp), %xmm2        ## xmm2 = mem[0],zero,zero,zero
	movsd	%xmm0, -56(%rbp)        ## 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -64(%rbp)        ## 8-byte Spill
	callq	__Z8toradianf
	cvtss2sd	%xmm0, %xmm0
	callq	_sin
	movsd	-64(%rbp), %xmm1        ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0        ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -32(%rbp)
	movss	-28(%rbp), %xmm0        ## xmm0 = mem[0],zero,zero,zero
	movss	-32(%rbp), %xmm1        ## xmm1 = mem[0],zero,zero,zero
	callq	_glVertex2f
## BB#6:                                ##   in Loop: Header=BB3_4 Depth=1
	movsd	LCPI3_1(%rip), %xmm0    ## xmm0 = mem[0],zero
	cvtss2sd	-24(%rbp), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -24(%rbp)
	jmp	LBB3_4
LBB3_7:
	callq	_glEnd
	callq	_glFlush
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z13plastic_wasteii
	.align	4, 0x90
__Z13plastic_wasteii:                   ## @_Z13plastic_wasteii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$9, %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%eax, %edi
	callq	_glBegin
	cvtsi2ssl	-4(%rbp), %xmm0
	cvtsi2ssl	-8(%rbp), %xmm1
	callq	_glVertex2f
	movl	-4(%rbp), %eax
	addl	$32, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-8(%rbp), %eax
	subl	$10, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	movl	-4(%rbp), %eax
	addl	$46, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-8(%rbp), %eax
	addl	$31, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	movl	-4(%rbp), %eax
	addl	$62, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-8(%rbp), %eax
	addl	$10, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	movl	-4(%rbp), %eax
	addl	$33, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-8(%rbp), %eax
	subl	$20, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	callq	_glEnd
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z14plastic_waste2ii
	.align	4, 0x90
__Z14plastic_waste2ii:                  ## @_Z14plastic_waste2ii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp15:
	.cfi_def_cfa_offset 16
Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$9, %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%eax, %edi
	callq	_glBegin
	cvtsi2ssl	-4(%rbp), %xmm0
	cvtsi2ssl	-8(%rbp), %xmm1
	callq	_glVertex2f
	movl	-4(%rbp), %eax
	addl	$26, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-8(%rbp), %eax
	subl	$20, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	movl	-4(%rbp), %eax
	addl	$46, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-8(%rbp), %eax
	addl	$10, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	movl	-4(%rbp), %eax
	addl	$56, %eax
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	-8(%rbp), %xmm1
	callq	_glVertex2f
	movl	-4(%rbp), %eax
	addl	$31, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-8(%rbp), %eax
	subl	$20, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	movl	-4(%rbp), %eax
	addl	$3, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-8(%rbp), %eax
	subl	$18, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	callq	_glEnd
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z14plastic_waste3ii
	.align	4, 0x90
__Z14plastic_waste3ii:                  ## @_Z14plastic_waste3ii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp18:
	.cfi_def_cfa_offset 16
Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$9, %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%eax, %edi
	callq	_glBegin
	cvtsi2ssl	-4(%rbp), %xmm0
	cvtsi2ssl	-8(%rbp), %xmm1
	callq	_glVertex2f
	movl	-4(%rbp), %eax
	addl	$15, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-8(%rbp), %eax
	addl	$5, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	movl	-4(%rbp), %eax
	addl	$22, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-8(%rbp), %eax
	subl	$20, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	movl	-4(%rbp), %eax
	addl	$4, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-8(%rbp), %eax
	subl	$12, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	callq	_glEnd
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI7_0:
	.quad	4652007308841189376     ## double 1000
	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI7_1:
	.long	1065017672              ## float 0.980000019
LCPI7_2:
	.long	1065353216              ## float 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z4initv
	.align	4, 0x90
__Z4initv:                              ## @_Z4initv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp21:
	.cfi_def_cfa_offset 16
Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorps	%xmm0, %xmm0
	movss	LCPI7_1(%rip), %xmm2    ## xmm2 = mem[0],zero,zero,zero
	movss	LCPI7_2(%rip), %xmm3    ## xmm3 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)         ## 4-byte Spill
	movss	-4(%rbp), %xmm1         ## 4-byte Reload
                                        ## xmm1 = mem[0],zero,zero,zero
	callq	_glClearColor
	movl	$5889, %edi             ## imm = 0x1701
	callq	_glMatrixMode
	callq	_glLoadIdentity
	xorps	%xmm0, %xmm0
	movsd	LCPI7_0(%rip), %xmm1    ## xmm1 = mem[0],zero
	movsd	%xmm0, -16(%rbp)        ## 8-byte Spill
	movsd	%xmm1, -24(%rbp)        ## 8-byte Spill
	movsd	-16(%rbp), %xmm2        ## 8-byte Reload
                                        ## xmm2 = mem[0],zero
	movsd	-24(%rbp), %xmm3        ## 8-byte Reload
                                        ## xmm3 = mem[0],zero
	callq	_gluOrtho2D
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI8_0:
	.long	1057451147              ## float 0.528999984
LCPI8_1:
	.long	1062131991              ## float 0.808000028
LCPI8_2:
	.long	1065017672              ## float 0.980000019
LCPI8_3:
	.long	1065353216              ## float 1
LCPI8_5:
	.long	1148846080              ## float 1000
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI8_4:
	.quad	4652007308841189376     ## double 1000
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z9myReshapeii
	.align	4, 0x90
__Z9myReshapeii:                        ## @_Z9myReshapeii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp24:
	.cfi_def_cfa_offset 16
Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	L_.str(%rip), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edx
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	movss	LCPI8_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	LCPI8_1(%rip), %xmm1    ## xmm1 = mem[0],zero,zero,zero
	movss	LCPI8_2(%rip), %xmm2    ## xmm2 = mem[0],zero,zero,zero
	movss	LCPI8_3(%rip), %xmm3    ## xmm3 = mem[0],zero,zero,zero
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	callq	_glClearColor
	xorl	%eax, %eax
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %ecx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	_glViewport
	movl	$5889, %edi             ## imm = 0x1701
	callq	_glMatrixMode
	callq	_glLoadIdentity
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	LBB8_2
## BB#1:
	xorps	%xmm0, %xmm0
	movsd	LCPI8_4(%rip), %xmm1    ## xmm1 = mem[0],zero
	movss	LCPI8_5(%rip), %xmm2    ## xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	cvtsi2ssl	-8(%rbp), %xmm4
	mulss	%xmm4, %xmm3
	cvtsi2ssl	-4(%rbp), %xmm4
	divss	%xmm4, %xmm3
	cvtss2sd	%xmm3, %xmm3
	cvtsi2ssl	-8(%rbp), %xmm4
	mulss	%xmm4, %xmm2
	cvtsi2ssl	-4(%rbp), %xmm4
	divss	%xmm4, %xmm2
	cvtss2sd	%xmm2, %xmm2
	movsd	%xmm0, -24(%rbp)        ## 8-byte Spill
	movsd	%xmm1, -32(%rbp)        ## 8-byte Spill
	movsd	%xmm2, -40(%rbp)        ## 8-byte Spill
	movaps	%xmm3, %xmm2
	movsd	-40(%rbp), %xmm3        ## 8-byte Reload
                                        ## xmm3 = mem[0],zero
	movsd	-24(%rbp), %xmm4        ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	movsd	-32(%rbp), %xmm5        ## 8-byte Reload
                                        ## xmm5 = mem[0],zero
	callq	_glOrtho
	jmp	LBB8_3
LBB8_2:
	xorps	%xmm0, %xmm0
	movsd	LCPI8_4(%rip), %xmm1    ## xmm1 = mem[0],zero
	movss	LCPI8_5(%rip), %xmm2    ## xmm2 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	cvtsi2ssl	-4(%rbp), %xmm4
	mulss	%xmm4, %xmm3
	cvtsi2ssl	-8(%rbp), %xmm4
	divss	%xmm4, %xmm3
	cvtss2sd	%xmm3, %xmm3
	cvtsi2ssl	-4(%rbp), %xmm4
	mulss	%xmm4, %xmm2
	cvtsi2ssl	-8(%rbp), %xmm4
	divss	%xmm4, %xmm2
	cvtss2sd	%xmm2, %xmm2
	movsd	%xmm0, -48(%rbp)        ## 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -56(%rbp)        ## 8-byte Spill
	movaps	%xmm2, %xmm1
	movsd	-48(%rbp), %xmm2        ## 8-byte Reload
                                        ## xmm2 = mem[0],zero
	movsd	-56(%rbp), %xmm3        ## 8-byte Reload
                                        ## xmm3 = mem[0],zero
	movsd	-48(%rbp), %xmm4        ## 8-byte Reload
                                        ## xmm4 = mem[0],zero
	movsd	-56(%rbp), %xmm5        ## 8-byte Reload
                                        ## xmm5 = mem[0],zero
	callq	_glOrtho
LBB8_3:
	movl	$5888, %edi             ## imm = 0x1700
	callq	_glMatrixMode
	callq	_glutPostRedisplay
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI9_0:
	.long	1050253722              ## float 0.300000012
LCPI9_1:
	.long	1065353216              ## float 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z14display_scene3v
	.align	4, 0x90
__Z14display_scene3v:                   ## @_Z14display_scene3v
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp27:
	.cfi_def_cfa_offset 16
Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-8(%rbp), %rdi
	callq	__ZN8mountainC1Ev
	movss	LCPI9_0(%rip), %xmm0    ## xmm0 = mem[0],zero,zero,zero
	movss	LCPI9_1(%rip), %xmm3    ## xmm3 = mem[0],zero,zero,zero
	movss	%xmm0, -12(%rbp)        ## 4-byte Spill
	movss	-12(%rbp), %xmm1        ## 4-byte Reload
                                        ## xmm1 = mem[0],zero,zero,zero
	movss	-12(%rbp), %xmm2        ## 4-byte Reload
                                        ## xmm2 = mem[0],zero,zero,zero
	callq	_glClearColor
	movl	$16384, %edi            ## imm = 0x4000
	callq	_glClear
	leaq	-8(%rbp), %rdi
	callq	__ZN8mountain12plot_garbageEv
	movl	$1000, %eax             ## imm = 0x3E8
	movl	_motion_var(%rip), %ecx
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-16(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	cmpl	$500, %edx              ## imm = 0x1F4
	jge	LBB9_2
## BB#1:
	leaq	-8(%rbp), %rdi
	movl	$200, %edx
	xorps	%xmm0, %xmm0
	movl	$1000, %eax             ## imm = 0x3E8
	movl	_motion_var(%rip), %ecx
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movl	%ecx, %eax
	movl	%edx, -24(%rbp)         ## 4-byte Spill
	cltd
	movl	-20(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	addl	$0, %edx
	movl	%edx, %esi
	movl	-24(%rbp), %edx         ## 4-byte Reload
	callq	__ZN8mountain5truckEiif
	jmp	LBB9_3
LBB9_2:
	leaq	-8(%rbp), %rdi
	movl	$500, %esi              ## imm = 0x1F4
	movl	$200, %edx
	movl	$100, %eax
	movl	$1000, %ecx             ## imm = 0x3E8
	movl	_motion_var(%rip), %r8d
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movl	%r8d, %eax
	movl	%edx, -32(%rbp)         ## 4-byte Spill
	cltd
	idivl	%ecx
	movl	%edx, %eax
	cltd
	movl	-28(%rbp), %ecx         ## 4-byte Reload
	idivl	%ecx
	cvtsi2ssl	%eax, %xmm0
	movl	-32(%rbp), %eax         ## 4-byte Reload
	movl	%eax, %edx
	callq	__ZN8mountain5truckEiif
LBB9_3:
	callq	_glFlush
	callq	_glutSwapBuffers
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN8mountainC1Ev
	.weak_def_can_be_hidden	__ZN8mountainC1Ev
	.align	4, 0x90
__ZN8mountainC1Ev:                      ## @_ZN8mountainC1Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp30:
	.cfi_def_cfa_offset 16
Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	__ZN8mountainC2Ev
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI11_0:
	.long	1084227584              ## float 5
LCPI11_1:
	.long	1128792064              ## float 200
LCPI11_2:
	.long	1120403456              ## float 100
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI11_3:
	.quad	4622444617530962423     ## double 11.1111111
	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN8mountain12plot_garbageEv
	.weak_def_can_be_hidden	__ZN8mountain12plot_garbageEv
	.align	4, 0x90
__ZN8mountain12plot_garbageEv:          ## @_ZN8mountain12plot_garbageEv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp33:
	.cfi_def_cfa_offset 16
Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movss	LCPI11_0(%rip), %xmm0   ## xmm0 = mem[0],zero,zero,zero
	movq	%rdi, -8(%rbp)
	callq	_glPointSize
	xorl	%edi, %edi
	callq	_glBegin
	movl	$100, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	movl	$0, -12(%rbp)
LBB11_1:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$100, -12(%rbp)
	jge	LBB11_4
## BB#2:                                ##   in Loop: Header=BB11_1 Depth=1
	leaq	_list_of_randoms(%rip), %rax
	movl	$1000, %ecx             ## imm = 0x3E8
	movslq	-12(%rbp), %rdx
	cvtsi2ssl	(%rax,%rdx,4), %xmm0
	subl	-12(%rbp), %ecx
	movslq	%ecx, %rdx
	cvtsi2ssl	(%rax,%rdx,4), %xmm1
	callq	_glVertex2f
## BB#3:                                ##   in Loop: Header=BB11_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB11_1
LBB11_4:
	callq	_glEnd
	movss	LCPI11_0(%rip), %xmm0   ## xmm0 = mem[0],zero,zero,zero
	callq	_glPointSize
	xorl	%edi, %edi
	callq	_glBegin
	movl	$0, -16(%rbp)
LBB11_5:                                ## =>This Inner Loop Header: Depth=1
	cmpl	$2000, -16(%rbp)        ## imm = 0x7D0
	jge	LBB11_8
## BB#6:                                ##   in Loop: Header=BB11_5 Depth=1
	movsd	LCPI11_3(%rip), %xmm0   ## xmm0 = mem[0],zero
	cvtsi2sdl	-16(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	callq	__Z8toradianf
	xorps	%xmm1, %xmm1
	movss	LCPI11_1(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movss	LCPI11_2(%rip), %xmm3   ## xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	%xmm3, -20(%rbp)        ## 4-byte Spill
	movss	%xmm1, -24(%rbp)        ## 4-byte Spill
	movss	%xmm2, -28(%rbp)        ## 4-byte Spill
	callq	_sin
	cvtsd2ss	%xmm0, %xmm0
	movss	-20(%rbp), %xmm1        ## 4-byte Reload
                                        ## xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	-28(%rbp), %xmm0        ## 4-byte Reload
                                        ## xmm0 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	movss	-24(%rbp), %xmm0        ## 4-byte Reload
                                        ## xmm0 = mem[0],zero,zero,zero
	callq	_glVertex2f
## BB#7:                                ##   in Loop: Header=BB11_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB11_5
LBB11_8:
	callq	_glEnd
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI12_0:
	.long	1084227584              ## float 5
LCPI12_1:
	.long	1120403456              ## float 100
LCPI12_2:
	.long	1065353216              ## float 1
LCPI12_3:
	.long	1135869952              ## float 360
LCPI12_4:
	.long	1092616192              ## float 10
LCPI12_5:
	.long	1123024896              ## float 120
LCPI12_6:
	.long	1097859072              ## float 15
LCPI12_7:
	.long	1098907648              ## float 16
LCPI12_8:
	.long	1099956224              ## float 18
LCPI12_9:
	.long	1101004800              ## float 20
LCPI12_10:
	.long	1117782016              ## float 80
LCPI12_11:
	.long	1128792064              ## float 200
	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN8mountain5truckEiif
	.weak_def_can_be_hidden	__ZN8mountain5truckEiif
	.align	4, 0x90
__ZN8mountain5truckEiif:                ## @_ZN8mountain5truckEiif
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp36:
	.cfi_def_cfa_offset 16
Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	xorl	%eax, %eax
	movl	$50, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movl	%eax, %edi
	movl	%ecx, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	callq	_glPushMatrix
	xorps	%xmm2, %xmm2
	movl	-12(%rbp), %eax
	addl	$200, %eax
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	-16(%rbp), %xmm1
	callq	_glTranslatef
	xorps	%xmm0, %xmm0
	movss	LCPI12_2(%rip), %xmm3   ## xmm3 = mem[0],zero,zero,zero
	movss	LCPI12_3(%rip), %xmm1   ## xmm1 = mem[0],zero,zero,zero
	subss	-20(%rbp), %xmm1
	movss	%xmm0, -24(%rbp)        ## 4-byte Spill
	movaps	%xmm1, %xmm0
	movss	-24(%rbp), %xmm1        ## 4-byte Reload
                                        ## xmm1 = mem[0],zero,zero,zero
	movss	-24(%rbp), %xmm2        ## 4-byte Reload
                                        ## xmm2 = mem[0],zero,zero,zero
	callq	_glRotatef
	xorps	%xmm2, %xmm2
	xorl	%eax, %eax
	movl	%eax, %ecx
	subl	-12(%rbp), %ecx
	subl	$200, %ecx
	cvtsi2ssl	%ecx, %xmm0
	subl	-16(%rbp), %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glTranslatef
	movl	$9, %edi
	callq	_glBegin
	cvtsi2ssl	-12(%rbp), %xmm0
	cvtsi2ssl	-16(%rbp), %xmm1
	callq	_glVertex2f
	movl	-12(%rbp), %eax
	addl	$200, %eax
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	-16(%rbp), %xmm1
	callq	_glVertex2f
	movl	-12(%rbp), %eax
	addl	$200, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	addl	$100, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	movl	-12(%rbp), %eax
	addl	$10, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	addl	$100, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	cvtsi2ssl	-12(%rbp), %xmm0
	movl	-16(%rbp), %eax
	addl	$125, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	callq	_glEnd
	movl	$150, %eax
	xorl	%edx, %edx
	movl	%eax, %edi
	movl	%eax, %esi
	callq	_glColor3ub
	movss	LCPI12_0(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movss	LCPI12_1(%rip), %xmm3   ## xmm3 = mem[0],zero,zero,zero
	movl	$1, %edi
	movl	-12(%rbp), %eax
	addl	$200, %eax
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	-16(%rbp), %xmm1
	callq	__Z14draw_rectangleffffi
	xorl	%eax, %eax
	movl	$50, %esi
	movl	%eax, %edi
	movl	%eax, %edx
	callq	_glColor3ub
	xorps	%xmm0, %xmm0
	movss	-20(%rbp), %xmm1        ## xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jne	LBB12_2
	jp	LBB12_2
## BB#1:
	movss	LCPI12_4(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movss	LCPI12_5(%rip), %xmm3   ## xmm3 = mem[0],zero,zero,zero
	movl	$1, %edi
	movl	-12(%rbp), %eax
	addl	$205, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	subl	$20, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z14draw_rectangleffffi
	jmp	LBB12_3
LBB12_2:
	movss	LCPI12_4(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movss	LCPI12_5(%rip), %xmm3   ## xmm3 = mem[0],zero,zero,zero
	movl	$1, %edi
	movl	-12(%rbp), %eax
	addl	$205, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	addl	$20, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z14draw_rectangleffffi
LBB12_3:
	movl	$30, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	callq	_glPopMatrix
	movss	LCPI12_11(%rip), %xmm2  ## xmm2 = mem[0],zero,zero,zero
	movss	LCPI12_9(%rip), %xmm3   ## xmm3 = mem[0],zero,zero,zero
	movl	$1, %edi
	cvtsi2ssl	-12(%rbp), %xmm0
	movl	-16(%rbp), %eax
	subl	$20, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z14draw_rectangleffffi
	movss	LCPI12_10(%rip), %xmm2  ## xmm2 = mem[0],zero,zero,zero
	movss	LCPI12_9(%rip), %xmm3   ## xmm3 = mem[0],zero,zero,zero
	movl	$1, %edi
	movl	-12(%rbp), %eax
	addl	$20, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	subl	$40, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z14draw_rectangleffffi
	movss	LCPI12_4(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movss	LCPI12_9(%rip), %xmm3   ## xmm3 = mem[0],zero,zero,zero
	movl	$1, %edi
	movl	-12(%rbp), %eax
	addl	$185, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	subl	$40, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z14draw_rectangleffffi
	movl	$75, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	movss	LCPI12_7(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movl	$1, %edi
	movl	-12(%rbp), %eax
	addl	$130, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	subl	$40, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z11draw_circlefffi
	movl	$30, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	movss	LCPI12_6(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movl	$1, %edi
	movl	-12(%rbp), %eax
	addl	$130, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	subl	$40, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z11draw_circlefffi
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	movss	LCPI12_0(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movl	$1, %edi
	movl	-12(%rbp), %eax
	addl	$130, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	subl	$40, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z11draw_circlefffi
	movl	$100, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	movss	LCPI12_2(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movl	$1, %edi
	movl	-12(%rbp), %eax
	addl	$130, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	subl	$40, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z11draw_circlefffi
	movl	$30, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	movl	$75, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	movss	LCPI12_7(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movl	$1, %edi
	movl	-12(%rbp), %eax
	addl	$165, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	subl	$40, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z11draw_circlefffi
	movl	$30, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	movss	LCPI12_6(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movl	$1, %edi
	movl	-12(%rbp), %eax
	addl	$165, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	subl	$40, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z11draw_circlefffi
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	movss	LCPI12_0(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movl	$1, %edi
	movl	-12(%rbp), %eax
	addl	$165, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	subl	$40, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z11draw_circlefffi
	movl	$100, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	movss	LCPI12_2(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movl	$1, %edi
	movl	-12(%rbp), %eax
	addl	$165, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	subl	$40, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z11draw_circlefffi
	movl	$75, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	movl	$9, %edi
	callq	_glBegin
	movl	-12(%rbp), %eax
	subl	$3, %eax
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	-16(%rbp), %xmm1
	callq	_glVertex2f
	movl	-12(%rbp), %eax
	subl	$50, %eax
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	-16(%rbp), %xmm1
	callq	_glVertex2f
	movl	-12(%rbp), %eax
	subl	$50, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	addl	$50, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	movl	-12(%rbp), %eax
	subl	$30, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	addl	$100, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	movl	-12(%rbp), %eax
	subl	$3, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	addl	$100, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	callq	_glEnd
	movl	$30, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	movl	$9, %edi
	callq	_glBegin
	movl	-12(%rbp), %eax
	subl	$3, %eax
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	-16(%rbp), %xmm1
	callq	_glVertex2f
	movl	-12(%rbp), %eax
	subl	$3, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	subl	$30, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	movl	-12(%rbp), %eax
	subl	$50, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	subl	$30, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	movl	-12(%rbp), %eax
	subl	$50, %eax
	cvtsi2ssl	%eax, %xmm0
	cvtsi2ssl	-16(%rbp), %xmm1
	callq	_glVertex2f
	callq	_glEnd
	movl	$9, %edi
	callq	_glBegin
	movl	-12(%rbp), %eax
	subl	$45, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	addl	$50, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	movl	-12(%rbp), %eax
	subl	$35, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	addl	$75, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	movl	-12(%rbp), %eax
	subl	$30, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	addl	$95, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	movl	-12(%rbp), %eax
	subl	$5, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	addl	$95, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	movl	-12(%rbp), %eax
	subl	$5, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	addl	$50, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	_glVertex2f
	callq	_glEnd
	movss	LCPI12_4(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movss	LCPI12_0(%rip), %xmm3   ## xmm3 = mem[0],zero,zero,zero
	movl	$1, %edi
	movl	-12(%rbp), %eax
	subl	$15, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	addl	$30, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z14draw_rectangleffffi
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	movss	LCPI12_8(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movl	$1, %edi
	xorps	%xmm3, %xmm3
	movl	-12(%rbp), %eax
	subl	$25, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	subl	$30, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z16draw_half_circlefffif
	movl	$75, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	movss	LCPI12_7(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movl	$1, %edi
	movl	-12(%rbp), %eax
	subl	$25, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	subl	$40, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z11draw_circlefffi
	movl	$30, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	movss	LCPI12_6(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movl	$1, %edi
	movl	-12(%rbp), %eax
	subl	$25, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	subl	$40, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z11draw_circlefffi
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	movss	LCPI12_0(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movl	$1, %edi
	movl	-12(%rbp), %eax
	subl	$25, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	subl	$40, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z11draw_circlefffi
	movl	$100, %eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	callq	_glColor3ub
	movss	LCPI12_2(%rip), %xmm2   ## xmm2 = mem[0],zero,zero,zero
	movl	$1, %edi
	movl	-12(%rbp), %eax
	subl	$25, %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-16(%rbp), %eax
	subl	$40, %eax
	cvtsi2ssl	%eax, %xmm1
	callq	__Z11draw_circlefffi
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z5mouseiiii
	.align	4, 0x90
__Z5mouseiiii:                          ## @_Z5mouseiiii
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp39:
	.cfi_def_cfa_offset 16
Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	L_.str.1(%rip), %rax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	_printf
	cmpl	$0, -8(%rbp)
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	jne	LBB13_3
## BB#1:
	cmpl	$0, -4(%rbp)
	jne	LBB13_3
## BB#2:
	leaq	L_.str.2(%rip), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movb	$0, %al
	callq	_printf
	movl	%eax, -24(%rbp)         ## 4-byte Spill
LBB13_3:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	__Z9idle_funcv
	.align	4, 0x90
__Z9idle_funcv:                         ## @_Z9idle_funcv
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp42:
	.cfi_def_cfa_offset 16
Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp44:
	.cfi_def_cfa_register %rbp
	cmpl	$0, _motion_var(%rip)
	jge	LBB14_2
## BB#1:
	movl	$0, _motion_var(%rip)
LBB14_2:
	movl	_motion_var(%rip), %eax
	addl	$1, %eax
	movl	%eax, _motion_var(%rip)
	callq	_glutPostRedisplay
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp45:
	.cfi_def_cfa_offset 16
Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-4(%rbp), %rax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_glutInit
	movl	$2, %edi
	callq	_glutInitDisplayMode
	movl	$1000, %edi             ## imm = 0x3E8
	movl	%edi, -20(%rbp)         ## 4-byte Spill
	movl	-20(%rbp), %esi         ## 4-byte Reload
	callq	_glutInitWindowSize
	leaq	L_.str.3(%rip), %rdi
	callq	_glutCreateWindow
	leaq	__Z5mouseiiii(%rip), %rdi
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	callq	_glutMouseFunc
	callq	__Z4initv
	leaq	__Z9idle_funcv(%rip), %rdi
	callq	_glutIdleFunc
	leaq	__Z14display_scene3v(%rip), %rdi
	callq	_glutDisplayFunc
	callq	_glutMainLoop
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN8mountainC2Ev
	.weak_def_can_be_hidden	__ZN8mountainC2Ev
	.align	4, 0x90
__ZN8mountainC2Ev:                      ## @_ZN8mountainC2Ev
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp48:
	.cfi_def_cfa_offset 16
Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp50:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_motion_var             ## @motion_var
.zerofill __DATA,__common,_motion_var,4,2
	.globl	_hights_of_grass        ## @hights_of_grass
.zerofill __DATA,__common,_hights_of_grass,4000,4
	.globl	_hight_stored           ## @hight_stored
.zerofill __DATA,__common,_hight_stored,4,2
	.section	__DATA,__data
	.globl	_list_of_randoms        ## @list_of_randoms
	.align	4
_list_of_randoms:
	.long	436                     ## 0x1b4
	.long	727                     ## 0x2d7
	.long	4                       ## 0x4
	.long	102                     ## 0x66
	.long	683                     ## 0x2ab
	.long	18                      ## 0x12
	.long	675                     ## 0x2a3
	.long	412                     ## 0x19c
	.long	310                     ## 0x136
	.long	359                     ## 0x167
	.long	191                     ## 0xbf
	.long	359                     ## 0x167
	.long	346                     ## 0x15a
	.long	110                     ## 0x6e
	.long	248                     ## 0xf8
	.long	706                     ## 0x2c2
	.long	562                     ## 0x232
	.long	528                     ## 0x210
	.long	740                     ## 0x2e4
	.long	990                     ## 0x3de
	.long	20                      ## 0x14
	.long	8                       ## 0x8
	.long	417                     ## 0x1a1
	.long	653                     ## 0x28d
	.long	371                     ## 0x173
	.long	85                      ## 0x55
	.long	26                      ## 0x1a
	.long	909                     ## 0x38d
	.long	188                     ## 0xbc
	.long	41                      ## 0x29
	.long	16                      ## 0x10
	.long	63                      ## 0x3f
	.long	323                     ## 0x143
	.long	714                     ## 0x2ca
	.long	912                     ## 0x390
	.long	262                     ## 0x106
	.long	983                     ## 0x3d7
	.long	839                     ## 0x347
	.long	643                     ## 0x283
	.long	563                     ## 0x233
	.long	302                     ## 0x12e
	.long	619                     ## 0x26b
	.long	244                     ## 0xf4
	.long	876                     ## 0x36c
	.long	455                     ## 0x1c7
	.long	244                     ## 0xf4
	.long	315                     ## 0x13b
	.long	66                      ## 0x42
	.long	855                     ## 0x357
	.long	109                     ## 0x6d
	.long	137                     ## 0x89
	.long	80                      ## 0x50
	.long	71                      ## 0x47
	.long	36                      ## 0x24
	.long	750                     ## 0x2ee
	.long	183                     ## 0xb7
	.long	518                     ## 0x206
	.long	397                     ## 0x18d
	.long	697                     ## 0x2b9
	.long	327                     ## 0x147
	.long	251                     ## 0xfb
	.long	91                      ## 0x5b
	.long	122                     ## 0x7a
	.long	865                     ## 0x361
	.long	913                     ## 0x391
	.long	968                     ## 0x3c8
	.long	205                     ## 0xcd
	.long	734                     ## 0x2de
	.long	241                     ## 0xf1
	.long	222                     ## 0xde
	.long	116                     ## 0x74
	.long	810                     ## 0x32a
	.long	292                     ## 0x124
	.long	724                     ## 0x2d4
	.long	962                     ## 0x3c2
	.long	756                     ## 0x2f4
	.long	54                      ## 0x36
	.long	292                     ## 0x124
	.long	504                     ## 0x1f8
	.long	742                     ## 0x2e6
	.long	630                     ## 0x276
	.long	160                     ## 0xa0
	.long	138                     ## 0x8a
	.long	401                     ## 0x191
	.long	386                     ## 0x182
	.long	437                     ## 0x1b5
	.long	243                     ## 0xf3
	.long	845                     ## 0x34d
	.long	783                     ## 0x30f
	.long	217                     ## 0xd9
	.long	672                     ## 0x2a0
	.long	943                     ## 0x3af
	.long	495                     ## 0x1ef
	.long	942                     ## 0x3ae
	.long	497                     ## 0x1f1
	.long	50                      ## 0x32
	.long	253                     ## 0xfd
	.long	275                     ## 0x113
	.long	121                     ## 0x79
	.long	728                     ## 0x2d8
	.long	947                     ## 0x3b3
	.long	937                     ## 0x3a9
	.long	587                     ## 0x24b
	.long	302                     ## 0x12e
	.long	36                      ## 0x24
	.long	646                     ## 0x286
	.long	395                     ## 0x18b
	.long	672                     ## 0x2a0
	.long	908                     ## 0x38c
	.long	904                     ## 0x388
	.long	911                     ## 0x38f
	.long	832                     ## 0x340
	.long	522                     ## 0x20a
	.long	825                     ## 0x339
	.long	420                     ## 0x1a4
	.long	137                     ## 0x89
	.long	184                     ## 0xb8
	.long	970                     ## 0x3ca
	.long	36                      ## 0x24
	.long	419                     ## 0x1a3
	.long	320                     ## 0x140
	.long	84                      ## 0x54
	.long	977                     ## 0x3d1
	.long	779                     ## 0x30b
	.long	17                      ## 0x11
	.long	200                     ## 0xc8
	.long	669                     ## 0x29d
	.long	540                     ## 0x21c
	.long	810                     ## 0x32a
	.long	181                     ## 0xb5
	.long	491                     ## 0x1eb
	.long	353                     ## 0x161
	.long	342                     ## 0x156
	.long	628                     ## 0x274
	.long	530                     ## 0x212
	.long	367                     ## 0x16f
	.long	210                     ## 0xd2
	.long	7                       ## 0x7
	.long	400                     ## 0x190
	.long	336                     ## 0x150
	.long	757                     ## 0x2f5
	.long	414                     ## 0x19e
	.long	742                     ## 0x2e6
	.long	483                     ## 0x1e3
	.long	106                     ## 0x6a
	.long	988                     ## 0x3dc
	.long	316                     ## 0x13c
	.long	849                     ## 0x351
	.long	775                     ## 0x307
	.long	203                     ## 0xcb
	.long	140                     ## 0x8c
	.long	136                     ## 0x88
	.long	221                     ## 0xdd
	.long	159                     ## 0x9f
	.long	985                     ## 0x3d9
	.long	501                     ## 0x1f5
	.long	829                     ## 0x33d
	.long	460                     ## 0x1cc
	.long	777                     ## 0x309
	.long	234                     ## 0xea
	.long	848                     ## 0x350
	.long	871                     ## 0x367
	.long	230                     ## 0xe6
	.long	645                     ## 0x285
	.long	177                     ## 0xb1
	.long	127                     ## 0x7f
	.long	776                     ## 0x308
	.long	16                      ## 0x10
	.long	965                     ## 0x3c5
	.long	958                     ## 0x3be
	.long	95                      ## 0x5f
	.long	562                     ## 0x232
	.long	477                     ## 0x1dd
	.long	965                     ## 0x3c5
	.long	414                     ## 0x19e
	.long	985                     ## 0x3d9
	.long	964                     ## 0x3c4
	.long	861                     ## 0x35d
	.long	148                     ## 0x94
	.long	692                     ## 0x2b4
	.long	902                     ## 0x386
	.long	648                     ## 0x288
	.long	540                     ## 0x21c
	.long	203                     ## 0xcb
	.long	250                     ## 0xfa
	.long	746                     ## 0x2ea
	.long	202                     ## 0xca
	.long	907                     ## 0x38b
	.long	12                      ## 0xc
	.long	39                      ## 0x27
	.long	699                     ## 0x2bb
	.long	819                     ## 0x333
	.long	204                     ## 0xcc
	.long	893                     ## 0x37d
	.long	267                     ## 0x10b
	.long	466                     ## 0x1d2
	.long	185                     ## 0xb9
	.long	473                     ## 0x1d9
	.long	148                     ## 0x94
	.long	827                     ## 0x33b
	.long	244                     ## 0xf4
	.long	976                     ## 0x3d0
	.long	892                     ## 0x37c
	.long	430                     ## 0x1ae
	.long	416                     ## 0x1a0
	.long	97                      ## 0x61
	.long	823                     ## 0x337
	.long	369                     ## 0x171
	.long	902                     ## 0x386
	.long	49                      ## 0x31
	.long	711                     ## 0x2c7
	.long	419                     ## 0x1a3
	.long	73                      ## 0x49
	.long	431                     ## 0x1af
	.long	897                     ## 0x381
	.long	243                     ## 0xf3
	.long	603                     ## 0x25b
	.long	756                     ## 0x2f4
	.long	7                       ## 0x7
	.long	584                     ## 0x248
	.long	798                     ## 0x31e
	.long	847                     ## 0x34f
	.long	693                     ## 0x2b5
	.long	888                     ## 0x378
	.long	536                     ## 0x218
	.long	194                     ## 0xc2
	.long	151                     ## 0x97
	.long	875                     ## 0x36b
	.long	153                     ## 0x99
	.long	492                     ## 0x1ec
	.long	944                     ## 0x3b0
	.long	455                     ## 0x1c7
	.long	264                     ## 0x108
	.long	252                     ## 0xfc
	.long	346                     ## 0x15a
	.long	373                     ## 0x175
	.long	412                     ## 0x19c
	.long	95                      ## 0x5f
	.long	276                     ## 0x114
	.long	820                     ## 0x334
	.long	370                     ## 0x172
	.long	984                     ## 0x3d8
	.long	590                     ## 0x24e
	.long	498                     ## 0x1f2
	.long	239                     ## 0xef
	.long	95                      ## 0x5f
	.long	582                     ## 0x246
	.long	539                     ## 0x21b
	.long	81                      ## 0x51
	.long	40                      ## 0x28
	.long	33                      ## 0x21
	.long	811                     ## 0x32b
	.long	275                     ## 0x113
	.long	106                     ## 0x6a
	.long	829                     ## 0x33d
	.long	759                     ## 0x2f7
	.long	568                     ## 0x238
	.long	872                     ## 0x368
	.long	908                     ## 0x38c
	.long	757                     ## 0x2f5
	.long	51                      ## 0x33
	.long	164                     ## 0xa4
	.long	514                     ## 0x202
	.long	732                     ## 0x2dc
	.long	525                     ## 0x20d
	.long	691                     ## 0x2b3
	.long	64                      ## 0x40
	.long	199                     ## 0xc7
	.long	717                     ## 0x2cd
	.long	285                     ## 0x11d
	.long	869                     ## 0x365
	.long	964                     ## 0x3c4
	.long	229                     ## 0xe5
	.long	759                     ## 0x2f7
	.long	754                     ## 0x2f2
	.long	336                     ## 0x150
	.long	7                       ## 0x7
	.long	188                     ## 0xbc
	.long	916                     ## 0x394
	.long	796                     ## 0x31c
	.long	316                     ## 0x13c
	.long	380                     ## 0x17c
	.long	590                     ## 0x24e
	.long	410                     ## 0x19a
	.long	856                     ## 0x358
	.long	656                     ## 0x290
	.long	592                     ## 0x250
	.long	638                     ## 0x27e
	.long	704                     ## 0x2c0
	.long	851                     ## 0x353
	.long	408                     ## 0x198
	.long	487                     ## 0x1e7
	.long	952                     ## 0x3b8
	.long	954                     ## 0x3ba
	.long	428                     ## 0x1ac
	.long	999                     ## 0x3e7
	.long	928                     ## 0x3a0
	.long	54                      ## 0x36
	.long	602                     ## 0x25a
	.long	689                     ## 0x2b1
	.long	18                      ## 0x12
	.long	535                     ## 0x217
	.long	909                     ## 0x38d
	.long	794                     ## 0x31a
	.long	51                      ## 0x33
	.long	846                     ## 0x34e
	.long	857                     ## 0x359
	.long	807                     ## 0x327
	.long	27                      ## 0x1b
	.long	264                     ## 0x108
	.long	792                     ## 0x318
	.long	113                     ## 0x71
	.long	10                      ## 0xa
	.long	305                     ## 0x131
	.long	19                      ## 0x13
	.long	259                     ## 0x103
	.long	99                      ## 0x63
	.long	988                     ## 0x3dc
	.long	352                     ## 0x160
	.long	945                     ## 0x3b1
	.long	672                     ## 0x2a0
	.long	98                      ## 0x62
	.long	948                     ## 0x3b4
	.long	301                     ## 0x12d
	.long	187                     ## 0xbb
	.long	286                     ## 0x11e
	.long	937                     ## 0x3a9
	.long	77                      ## 0x4d
	.long	228                     ## 0xe4
	.long	632                     ## 0x278
	.long	897                     ## 0x381
	.long	661                     ## 0x295
	.long	689                     ## 0x2b1
	.long	483                     ## 0x1e3
	.long	959                     ## 0x3bf
	.long	27                      ## 0x1b
	.long	295                     ## 0x127
	.long	886                     ## 0x376
	.long	56                      ## 0x38
	.long	140                     ## 0x8c
	.long	445                     ## 0x1bd
	.long	739                     ## 0x2e3
	.long	650                     ## 0x28a
	.long	215                     ## 0xd7
	.long	611                     ## 0x263
	.long	560                     ## 0x230
	.long	161                     ## 0xa1
	.long	569                     ## 0x239
	.long	250                     ## 0xfa
	.long	903                     ## 0x387
	.long	997                     ## 0x3e5
	.long	158                     ## 0x9e
	.long	971                     ## 0x3cb
	.long	214                     ## 0xd6
	.long	717                     ## 0x2cd
	.long	568                     ## 0x238
	.long	426                     ## 0x1aa
	.long	520                     ## 0x208
	.long	107                     ## 0x6b
	.long	277                     ## 0x115
	.long	853                     ## 0x355
	.long	918                     ## 0x396
	.long	330                     ## 0x14a
	.long	964                     ## 0x3c4
	.long	1                       ## 0x1
	.long	575                     ## 0x23f
	.long	791                     ## 0x317
	.long	855                     ## 0x357
	.long	637                     ## 0x27d
	.long	5                       ## 0x5
	.long	655                     ## 0x28f
	.long	544                     ## 0x220
	.long	108                     ## 0x6c
	.long	673                     ## 0x2a1
	.long	671                     ## 0x29f
	.long	117                     ## 0x75
	.long	887                     ## 0x377
	.long	14                      ## 0xe
	.long	629                     ## 0x275
	.long	664                     ## 0x298
	.long	112                     ## 0x70
	.long	648                     ## 0x288
	.long	63                      ## 0x3f
	.long	761                     ## 0x2f9
	.long	474                     ## 0x1da
	.long	687                     ## 0x2af
	.long	69                      ## 0x45
	.long	924                     ## 0x39c
	.long	628                     ## 0x274
	.long	762                     ## 0x2fa
	.long	38                      ## 0x26
	.long	88                      ## 0x58
	.long	975                     ## 0x3cf
	.long	336                     ## 0x150
	.long	305                     ## 0x131
	.long	952                     ## 0x3b8
	.long	983                     ## 0x3d7
	.long	631                     ## 0x277
	.long	921                     ## 0x399
	.long	498                     ## 0x1f2
	.long	565                     ## 0x235
	.long	174                     ## 0xae
	.long	33                      ## 0x21
	.long	955                     ## 0x3bb
	.long	18                      ## 0x12
	.long	596                     ## 0x254
	.long	580                     ## 0x244
	.long	751                     ## 0x2ef
	.long	800                     ## 0x320
	.long	786                     ## 0x312
	.long	932                     ## 0x3a4
	.long	527                     ## 0x20f
	.long	797                     ## 0x31d
	.long	780                     ## 0x30c
	.long	130                     ## 0x82
	.long	961                     ## 0x3c1
	.long	704                     ## 0x2c0
	.long	552                     ## 0x228
	.long	875                     ## 0x36b
	.long	613                     ## 0x265
	.long	400                     ## 0x190
	.long	496                     ## 0x1f0
	.long	493                     ## 0x1ed
	.long	886                     ## 0x376
	.long	77                      ## 0x4d
	.long	68                      ## 0x44
	.long	468                     ## 0x1d4
	.long	896                     ## 0x380
	.long	717                     ## 0x2cd
	.long	259                     ## 0x103
	.long	219                     ## 0xdb
	.long	67                      ## 0x43
	.long	327                     ## 0x147
	.long	908                     ## 0x38c
	.long	792                     ## 0x318
	.long	12                      ## 0xc
	.long	418                     ## 0x1a2
	.long	497                     ## 0x1f1
	.long	378                     ## 0x17a
	.long	656                     ## 0x290
	.long	407                     ## 0x197
	.long	439                     ## 0x1b7
	.long	927                     ## 0x39f
	.long	879                     ## 0x36f
	.long	482                     ## 0x1e2
	.long	961                     ## 0x3c1
	.long	104                     ## 0x68
	.long	429                     ## 0x1ad
	.long	192                     ## 0xc0
	.long	58                      ## 0x3a
	.long	215                     ## 0xd7
	.long	300                     ## 0x12c
	.long	590                     ## 0x24e
	.long	683                     ## 0x2ab
	.long	316                     ## 0x13c
	.long	163                     ## 0xa3
	.long	452                     ## 0x1c4
	.long	375                     ## 0x177
	.long	10                      ## 0xa
	.long	548                     ## 0x224
	.long	958                     ## 0x3be
	.long	325                     ## 0x145
	.long	635                     ## 0x27b
	.long	201                     ## 0xc9
	.long	697                     ## 0x2b9
	.long	37                      ## 0x25
	.long	638                     ## 0x27e
	.long	284                     ## 0x11c
	.long	413                     ## 0x19d
	.long	284                     ## 0x11c
	.long	102                     ## 0x66
	.long	737                     ## 0x2e1
	.long	543                     ## 0x21f
	.long	510                     ## 0x1fe
	.long	795                     ## 0x31b
	.long	572                     ## 0x23c
	.long	350                     ## 0x15e
	.long	74                      ## 0x4a
	.long	596                     ## 0x254
	.long	483                     ## 0x1e3
	.long	390                     ## 0x186
	.long	49                      ## 0x31
	.long	68                      ## 0x44
	.long	51                      ## 0x33
	.long	114                     ## 0x72
	.long	784                     ## 0x310
	.long	858                     ## 0x35a
	.long	810                     ## 0x32a
	.long	378                     ## 0x17a
	.long	361                     ## 0x169
	.long	194                     ## 0xc2
	.long	162                     ## 0xa2
	.long	197                     ## 0xc5
	.long	566                     ## 0x236
	.long	938                     ## 0x3aa
	.long	325                     ## 0x145
	.long	852                     ## 0x354
	.long	343                     ## 0x157
	.long	280                     ## 0x118
	.long	204                     ## 0xcc
	.long	161                     ## 0xa1
	.long	992                     ## 0x3e0
	.long	505                     ## 0x1f9
	.long	884                     ## 0x374
	.long	877                     ## 0x36d
	.long	752                     ## 0x2f0
	.long	190                     ## 0xbe
	.long	872                     ## 0x368
	.long	522                     ## 0x20a
	.long	70                      ## 0x46
	.long	812                     ## 0x32c
	.long	759                     ## 0x2f7
	.long	301                     ## 0x12d
	.long	710                     ## 0x2c6
	.long	492                     ## 0x1ec
	.long	960                     ## 0x3c0
	.long	105                     ## 0x69
	.long	253                     ## 0xfd
	.long	239                     ## 0xef
	.long	989                     ## 0x3dd
	.long	552                     ## 0x228
	.long	511                     ## 0x1ff
	.long	932                     ## 0x3a4
	.long	133                     ## 0x85
	.long	204                     ## 0xcc
	.long	530                     ## 0x212
	.long	253                     ## 0xfd
	.long	134                     ## 0x86
	.long	332                     ## 0x14c
	.long	102                     ## 0x66
	.long	878                     ## 0x36e
	.long	600                     ## 0x258
	.long	63                      ## 0x3f
	.long	312                     ## 0x138
	.long	460                     ## 0x1cc
	.long	627                     ## 0x273
	.long	672                     ## 0x2a0
	.long	240                     ## 0xf0
	.long	62                      ## 0x3e
	.long	424                     ## 0x1a8
	.long	742                     ## 0x2e6
	.long	994                     ## 0x3e2
	.long	863                     ## 0x35f
	.long	511                     ## 0x1ff
	.long	830                     ## 0x33e
	.long	780                     ## 0x30c
	.long	185                     ## 0xb9
	.long	421                     ## 0x1a5
	.long	395                     ## 0x18b
	.long	86                      ## 0x56
	.long	225                     ## 0xe1
	.long	828                     ## 0x33c
	.long	2                       ## 0x2
	.long	911                     ## 0x38f
	.long	125                     ## 0x7d
	.long	138                     ## 0x8a
	.long	361                     ## 0x169
	.long	151                     ## 0x97
	.long	790                     ## 0x316
	.long	49                      ## 0x31
	.long	565                     ## 0x235
	.long	385                     ## 0x181
	.long	643                     ## 0x283
	.long	820                     ## 0x334
	.long	740                     ## 0x2e4
	.long	448                     ## 0x1c0
	.long	856                     ## 0x358
	.long	555                     ## 0x22b
	.long	751                     ## 0x2ef
	.long	119                     ## 0x77
	.long	727                     ## 0x2d7
	.long	649                     ## 0x289
	.long	415                     ## 0x19f
	.long	620                     ## 0x26c
	.long	154                     ## 0x9a
	.long	440                     ## 0x1b8
	.long	136                     ## 0x88
	.long	117                     ## 0x75
	.long	0                       ## 0x0
	.long	520                     ## 0x208
	.long	571                     ## 0x23b
	.long	409                     ## 0x199
	.long	986                     ## 0x3da
	.long	832                     ## 0x340
	.long	917                     ## 0x395
	.long	137                     ## 0x89
	.long	470                     ## 0x1d6
	.long	837                     ## 0x345
	.long	377                     ## 0x179
	.long	452                     ## 0x1c4
	.long	591                     ## 0x24f
	.long	781                     ## 0x30d
	.long	903                     ## 0x387
	.long	943                     ## 0x3af
	.long	436                     ## 0x1b4
	.long	513                     ## 0x201
	.long	440                     ## 0x1b8
	.long	246                     ## 0xf6
	.long	131                     ## 0x83
	.long	551                     ## 0x227
	.long	664                     ## 0x298
	.long	717                     ## 0x2cd
	.long	500                     ## 0x1f4
	.long	413                     ## 0x19d
	.long	798                     ## 0x31e
	.long	892                     ## 0x37c
	.long	168                     ## 0xa8
	.long	84                      ## 0x54
	.long	40                      ## 0x28
	.long	156                     ## 0x9c
	.long	891                     ## 0x37b
	.long	846                     ## 0x34e
	.long	831                     ## 0x33f
	.long	583                     ## 0x247
	.long	238                     ## 0xee
	.long	150                     ## 0x96
	.long	396                     ## 0x18c
	.long	527                     ## 0x20f
	.long	819                     ## 0x333
	.long	592                     ## 0x250
	.long	894                     ## 0x37e
	.long	558                     ## 0x22e
	.long	724                     ## 0x2d4
	.long	321                     ## 0x141
	.long	429                     ## 0x1ad
	.long	598                     ## 0x256
	.long	870                     ## 0x366
	.long	859                     ## 0x35b
	.long	696                     ## 0x2b8
	.long	692                     ## 0x2b4
	.long	756                     ## 0x2f4
	.long	585                     ## 0x249
	.long	466                     ## 0x1d2
	.long	634                     ## 0x27a
	.long	349                     ## 0x15d
	.long	365                     ## 0x16d
	.long	133                     ## 0x85
	.long	100                     ## 0x64
	.long	956                     ## 0x3bc
	.long	179                     ## 0xb3
	.long	739                     ## 0x2e3
	.long	252                     ## 0xfc
	.long	583                     ## 0x247
	.long	532                     ## 0x214
	.long	281                     ## 0x119
	.long	897                     ## 0x381
	.long	825                     ## 0x339
	.long	478                     ## 0x1de
	.long	321                     ## 0x141
	.long	532                     ## 0x214
	.long	589                     ## 0x24d
	.long	63                      ## 0x3f
	.long	902                     ## 0x386
	.long	236                     ## 0xec
	.long	928                     ## 0x3a0
	.long	377                     ## 0x179
	.long	695                     ## 0x2b7
	.long	655                     ## 0x28f
	.long	730                     ## 0x2da
	.long	589                     ## 0x24d
	.long	50                      ## 0x32
	.long	259                     ## 0x103
	.long	21                      ## 0x15
	.long	588                     ## 0x24c
	.long	98                      ## 0x62
	.long	216                     ## 0xd8
	.long	597                     ## 0x255
	.long	652                     ## 0x28c
	.long	473                     ## 0x1d9
	.long	391                     ## 0x187
	.long	776                     ## 0x308
	.long	134                     ## 0x86
	.long	903                     ## 0x387
	.long	243                     ## 0xf3
	.long	98                      ## 0x62
	.long	730                     ## 0x2da
	.long	918                     ## 0x396
	.long	486                     ## 0x1e6
	.long	664                     ## 0x298
	.long	109                     ## 0x6d
	.long	296                     ## 0x128
	.long	720                     ## 0x2d0
	.long	802                     ## 0x322
	.long	996                     ## 0x3e4
	.long	187                     ## 0xbb
	.long	139                     ## 0x8b
	.long	60                      ## 0x3c
	.long	74                      ## 0x4a
	.long	733                     ## 0x2dd
	.long	10                      ## 0xa
	.long	294                     ## 0x126
	.long	964                     ## 0x3c4
	.long	488                     ## 0x1e8
	.long	801                     ## 0x321
	.long	68                      ## 0x44
	.long	333                     ## 0x14d
	.long	951                     ## 0x3b7
	.long	969                     ## 0x3c9
	.long	49                      ## 0x31
	.long	326                     ## 0x146
	.long	43                      ## 0x2b
	.long	586                     ## 0x24a
	.long	752                     ## 0x2f0
	.long	83                      ## 0x53
	.long	402                     ## 0x192
	.long	60                      ## 0x3c
	.long	428                     ## 0x1ac
	.long	416                     ## 0x1a0
	.long	704                     ## 0x2c0
	.long	705                     ## 0x2c1
	.long	704                     ## 0x2c0
	.long	847                     ## 0x34f
	.long	356                     ## 0x164
	.long	368                     ## 0x170
	.long	762                     ## 0x2fa
	.long	44                      ## 0x2c
	.long	540                     ## 0x21c
	.long	788                     ## 0x314
	.long	231                     ## 0xe7
	.long	541                     ## 0x21d
	.long	9                       ## 0x9
	.long	38                      ## 0x26
	.long	566                     ## 0x236
	.long	102                     ## 0x66
	.long	976                     ## 0x3d0
	.long	139                     ## 0x8b
	.long	779                     ## 0x30b
	.long	670                     ## 0x29e
	.long	129                     ## 0x81
	.long	832                     ## 0x340
	.long	920                     ## 0x398
	.long	67                      ## 0x43
	.long	565                     ## 0x235
	.long	394                     ## 0x18a
	.long	539                     ## 0x21b
	.long	263                     ## 0x107
	.long	668                     ## 0x29c
	.long	171                     ## 0xab
	.long	670                     ## 0x29e
	.long	922                     ## 0x39a
	.long	307                     ## 0x133
	.long	910                     ## 0x38e
	.long	278                     ## 0x116
	.long	406                     ## 0x196
	.long	443                     ## 0x1bb
	.long	177                     ## 0xb1
	.long	552                     ## 0x228
	.long	740                     ## 0x2e4
	.long	789                     ## 0x315
	.long	442                     ## 0x1ba
	.long	608                     ## 0x260
	.long	804                     ## 0x324
	.long	287                     ## 0x11f
	.long	23                      ## 0x17
	.long	208                     ## 0xd0
	.long	404                     ## 0x194
	.long	52                      ## 0x34
	.long	573                     ## 0x23d
	.long	661                     ## 0x295
	.long	109                     ## 0x6d
	.long	963                     ## 0x3c3
	.long	204                     ## 0xcc
	.long	222                     ## 0xde
	.long	698                     ## 0x2ba
	.long	565                     ## 0x235
	.long	703                     ## 0x2bf
	.long	263                     ## 0x107
	.long	537                     ## 0x219
	.long	742                     ## 0x2e6
	.long	716                     ## 0x2cc
	.long	236                     ## 0xec
	.long	210                     ## 0xd2
	.long	85                      ## 0x55
	.long	923                     ## 0x39b
	.long	466                     ## 0x1d2
	.long	648                     ## 0x288
	.long	987                     ## 0x3db
	.long	674                     ## 0x2a2
	.long	695                     ## 0x2b7
	.long	960                     ## 0x3c0
	.long	900                     ## 0x384
	.long	925                     ## 0x39d
	.long	644                     ## 0x284
	.long	627                     ## 0x273
	.long	468                     ## 0x1d4
	.long	692                     ## 0x2b4
	.long	864                     ## 0x360
	.long	685                     ## 0x2ad
	.long	36                      ## 0x24
	.long	297                     ## 0x129
	.long	716                     ## 0x2cc
	.long	606                     ## 0x25e
	.long	500                     ## 0x1f4
	.long	871                     ## 0x367
	.long	66                      ## 0x42
	.long	262                     ## 0x106
	.long	336                     ## 0x150
	.long	781                     ## 0x30d
	.long	446                     ## 0x1be
	.long	76                      ## 0x4c
	.long	77                      ## 0x4d
	.long	469                     ## 0x1d5
	.long	399                     ## 0x18f
	.long	832                     ## 0x340
	.long	90                      ## 0x5a
	.long	823                     ## 0x337
	.long	106                     ## 0x6a
	.long	709                     ## 0x2c5
	.long	241                     ## 0xf1
	.long	939                     ## 0x3ab
	.long	122                     ## 0x7a
	.long	832                     ## 0x340
	.long	370                     ## 0x172
	.long	549                     ## 0x225
	.long	468                     ## 0x1d4
	.long	790                     ## 0x316
	.long	684                     ## 0x2ac
	.long	345                     ## 0x159
	.long	103                     ## 0x67
	.long	132                     ## 0x84
	.long	439                     ## 0x1b7
	.long	496                     ## 0x1f0
	.long	524                     ## 0x20c
	.long	266                     ## 0x10a
	.long	377                     ## 0x179
	.long	437                     ## 0x1b5
	.long	330                     ## 0x14a
	.long	178                     ## 0xb2
	.long	929                     ## 0x3a1
	.long	750                     ## 0x2ee
	.long	845                     ## 0x34d
	.long	331                     ## 0x14b
	.long	333                     ## 0x14d
	.long	421                     ## 0x1a5
	.long	490                     ## 0x1ea
	.long	366                     ## 0x16e
	.long	950                     ## 0x3b6
	.long	915                     ## 0x393
	.long	912                     ## 0x390
	.long	197                     ## 0xc5
	.long	990                     ## 0x3de
	.long	851                     ## 0x353
	.long	548                     ## 0x224
	.long	515                     ## 0x203
	.long	247                     ## 0xf7
	.long	101                     ## 0x65
	.long	252                     ## 0xfc
	.long	903                     ## 0x387
	.long	628                     ## 0x274
	.long	54                      ## 0x36
	.long	180                     ## 0xb4
	.long	852                     ## 0x354
	.long	189                     ## 0xbd
	.long	18                      ## 0x12
	.long	566                     ## 0x236
	.long	3                       ## 0x3
	.long	974                     ## 0x3ce
	.long	46                      ## 0x2e
	.long	474                     ## 0x1da
	.long	961                     ## 0x3c1
	.long	344                     ## 0x158
	.long	916                     ## 0x394
	.long	867                     ## 0x363
	.long	495                     ## 0x1ef
	.long	259                     ## 0x103
	.long	839                     ## 0x347
	.long	584                     ## 0x248
	.long	843                     ## 0x34b
	.long	202                     ## 0xca
	.long	648                     ## 0x288
	.long	124                     ## 0x7c
	.long	424                     ## 0x1a8
	.long	987                     ## 0x3db
	.long	947                     ## 0x3b3
	.long	268                     ## 0x10c
	.long	679                     ## 0x2a7
	.long	676                     ## 0x2a4
	.long	314                     ## 0x13a
	.long	358                     ## 0x166
	.long	497                     ## 0x1f1
	.long	782                     ## 0x30e
	.long	239                     ## 0xef
	.long	900                     ## 0x384
	.long	12                      ## 0xc
	.long	662                     ## 0x296
	.long	345                     ## 0x159
	.long	180                     ## 0xb4
	.long	67                      ## 0x43
	.long	200                     ## 0xc8
	.long	627                     ## 0x273
	.long	221                     ## 0xdd
	.long	511                     ## 0x1ff
	.long	534                     ## 0x216
	.long	269                     ## 0x10d
	.long	631                     ## 0x277
	.long	1                       ## 0x1
	.long	988                     ## 0x3dc
	.long	23                      ## 0x17
	.long	922                     ## 0x39a
	.long	595                     ## 0x253
	.long	741                     ## 0x2e5
	.long	259                     ## 0x103
	.long	137                     ## 0x89
	.long	258                     ## 0x102
	.long	106                     ## 0x6a
	.long	132                     ## 0x84
	.long	77                      ## 0x4d
	.long	321                     ## 0x141
	.long	934                     ## 0x3a6
	.long	364                     ## 0x16c
	.long	556                     ## 0x22c
	.long	882                     ## 0x372
	.long	434                     ## 0x1b2
	.long	779                     ## 0x30b
	.long	620                     ## 0x26c
	.long	206                     ## 0xce
	.long	548                     ## 0x224
	.long	803                     ## 0x323
	.long	404                     ## 0x194
	.long	443                     ## 0x1bb
	.long	872                     ## 0x368
	.long	830                     ## 0x33e
	.long	703                     ## 0x2bf
	.long	184                     ## 0xb8
	.long	943                     ## 0x3af
	.long	972                     ## 0x3cc
	.long	531                     ## 0x213
	.long	224                     ## 0xe0
	.long	849                     ## 0x351
	.long	121                     ## 0x79
	.long	831                     ## 0x33f
	.long	236                     ## 0xec
	.long	678                     ## 0x2a6
	.long	864                     ## 0x360
	.long	149                     ## 0x95
	.long	365                     ## 0x16d
	.long	77                      ## 0x4d
	.long	326                     ## 0x146
	.long	428                     ## 0x1ac
	.long	977                     ## 0x3d1
	.long	993                     ## 0x3e1
	.long	635                     ## 0x27b
	.long	117                     ## 0x75
	.long	946                     ## 0x3b2
	.long	702                     ## 0x2be
	.long	927                     ## 0x39f
	.long	389                     ## 0x185
	.long	407                     ## 0x197
	.long	720                     ## 0x2d0
	.long	397                     ## 0x18d
	.long	130                     ## 0x82
	.long	50                      ## 0x32
	.long	385                     ## 0x181
	.long	123                     ## 0x7b
	.long	644                     ## 0x284
	.long	379                     ## 0x17b
	.long	602                     ## 0x25a
	.long	278                     ## 0x116
	.long	844                     ## 0x34c
	.long	466                     ## 0x1d2
	.long	167                     ## 0xa7
	.long	430                     ## 0x1ae
	.long	164                     ## 0xa4
	.long	943                     ## 0x3af
	.long	24                      ## 0x18
	.long	554                     ## 0x22a
	.long	364                     ## 0x16c
	.long	651                     ## 0x28b
	.long	557                     ## 0x22d
	.long	358                     ## 0x166
	.long	867                     ## 0x363
	.long	663                     ## 0x297
	.long	135                     ## 0x87
	.long	297                     ## 0x129
	.long	344                     ## 0x158
	.long	304                     ## 0x130
	.long	703                     ## 0x2bf
	.long	601                     ## 0x259
	.long	532                     ## 0x214
	.long	441                     ## 0x1b9
	.long	836                     ## 0x344
	.long	375                     ## 0x177
	.long	788                     ## 0x314
	.long	302                     ## 0x12e
	.long	907                     ## 0x38b
	.long	672                     ## 0x2a0
	.long	656                     ## 0x290
	.long	731                     ## 0x2db
	.long	233                     ## 0xe9
	.long	901                     ## 0x385
	.long	796                     ## 0x31c
	.long	927                     ## 0x39f
	.long	181                     ## 0xb5
	.long	69                      ## 0x45
	.long	495                     ## 0x1ef
	.long	471                     ## 0x1d7
	.long	611                     ## 0x263
	.long	49                      ## 0x31
	.long	854                     ## 0x356
	.long	407                     ## 0x197

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"resized\n w=%d,h=%d"

L_.str.1:                               ## @.str.1
	.asciz	"called\n"

L_.str.2:                               ## @.str.2
	.asciz	"x: %d, y: %d"

L_.str.3:                               ## @.str.3
	.asciz	"Scene1"


.subsections_via_symbols
