
main:     file format elf64-x86-64


Disassembly of section .init:

0000000000400358 <_init>:
  400358:	48 83 ec 08          	sub    $0x8,%rsp
  40035c:	e8 5b 00 00 00       	callq  4003bc <call_gmon_start>
  400361:	e8 ea 00 00 00       	callq  400450 <frame_dummy>
  400366:	e8 95 02 00 00       	callq  400600 <__do_global_ctors_aux>
  40036b:	48 83 c4 08          	add    $0x8,%rsp
  40036f:	c3                   	retq   

Disassembly of section .plt:

0000000000400370 <__libc_start_main@plt-0x10>:
  400370:	ff 35 22 06 20 00    	pushq  0x200622(%rip)        # 600998 <_GLOBAL_OFFSET_TABLE_+0x8>
  400376:	ff 25 24 06 20 00    	jmpq   *0x200624(%rip)        # 6009a0 <_GLOBAL_OFFSET_TABLE_+0x10>
  40037c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400380 <__libc_start_main@plt>:
  400380:	ff 25 22 06 20 00    	jmpq   *0x200622(%rip)        # 6009a8 <_GLOBAL_OFFSET_TABLE_+0x18>
  400386:	68 00 00 00 00       	pushq  $0x0
  40038b:	e9 e0 ff ff ff       	jmpq   400370 <_init+0x18>

Disassembly of section .text:

0000000000400390 <_start>:
  400390:	31 ed                	xor    %ebp,%ebp
  400392:	49 89 d1             	mov    %rdx,%r9
  400395:	5e                   	pop    %rsi
  400396:	48 89 e2             	mov    %rsp,%rdx
  400399:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40039d:	50                   	push   %rax
  40039e:	54                   	push   %rsp
  40039f:	49 c7 c0 60 05 40 00 	mov    $0x400560,%r8
  4003a6:	48 c7 c1 70 05 40 00 	mov    $0x400570,%rcx
  4003ad:	48 c7 c7 3d 05 40 00 	mov    $0x40053d,%rdi
  4003b4:	e8 c7 ff ff ff       	callq  400380 <__libc_start_main@plt>
  4003b9:	f4                   	hlt    
  4003ba:	90                   	nop
  4003bb:	90                   	nop

00000000004003bc <call_gmon_start>:
  4003bc:	48 83 ec 08          	sub    $0x8,%rsp
  4003c0:	48 8b 05 c1 05 20 00 	mov    0x2005c1(%rip),%rax        # 600988 <_DYNAMIC+0x190>
  4003c7:	48 85 c0             	test   %rax,%rax
  4003ca:	74 02                	je     4003ce <call_gmon_start+0x12>
  4003cc:	ff d0                	callq  *%rax
  4003ce:	48 83 c4 08          	add    $0x8,%rsp
  4003d2:	c3                   	retq   
  4003d3:	90                   	nop
  4003d4:	90                   	nop
  4003d5:	90                   	nop
  4003d6:	90                   	nop
  4003d7:	90                   	nop
  4003d8:	90                   	nop
  4003d9:	90                   	nop
  4003da:	90                   	nop
  4003db:	90                   	nop
  4003dc:	90                   	nop
  4003dd:	90                   	nop
  4003de:	90                   	nop
  4003df:	90                   	nop

00000000004003e0 <__do_global_dtors_aux>:
  4003e0:	55                   	push   %rbp
  4003e1:	48 89 e5             	mov    %rsp,%rbp
  4003e4:	53                   	push   %rbx
  4003e5:	48 83 ec 08          	sub    $0x8,%rsp
  4003e9:	80 3d c8 05 20 00 00 	cmpb   $0x0,0x2005c8(%rip)        # 6009b8 <completed.6349>
  4003f0:	75 4b                	jne    40043d <__do_global_dtors_aux+0x5d>
  4003f2:	bb e8 07 60 00       	mov    $0x6007e8,%ebx
  4003f7:	48 8b 05 c2 05 20 00 	mov    0x2005c2(%rip),%rax        # 6009c0 <dtor_idx.6351>
  4003fe:	48 81 eb e0 07 60 00 	sub    $0x6007e0,%rbx
  400405:	48 c1 fb 03          	sar    $0x3,%rbx
  400409:	48 83 eb 01          	sub    $0x1,%rbx
  40040d:	48 39 d8             	cmp    %rbx,%rax
  400410:	73 24                	jae    400436 <__do_global_dtors_aux+0x56>
  400412:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400418:	48 83 c0 01          	add    $0x1,%rax
  40041c:	48 89 05 9d 05 20 00 	mov    %rax,0x20059d(%rip)        # 6009c0 <dtor_idx.6351>
  400423:	ff 14 c5 e0 07 60 00 	callq  *0x6007e0(,%rax,8)
  40042a:	48 8b 05 8f 05 20 00 	mov    0x20058f(%rip),%rax        # 6009c0 <dtor_idx.6351>
  400431:	48 39 d8             	cmp    %rbx,%rax
  400434:	72 e2                	jb     400418 <__do_global_dtors_aux+0x38>
  400436:	c6 05 7b 05 20 00 01 	movb   $0x1,0x20057b(%rip)        # 6009b8 <completed.6349>
  40043d:	48 83 c4 08          	add    $0x8,%rsp
  400441:	5b                   	pop    %rbx
  400442:	c9                   	leaveq 
  400443:	c3                   	retq   
  400444:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  40044b:	00 00 00 00 00 

0000000000400450 <frame_dummy>:
  400450:	48 83 3d 98 03 20 00 	cmpq   $0x0,0x200398(%rip)        # 6007f0 <__JCR_END__>
  400457:	00 
  400458:	55                   	push   %rbp
  400459:	48 89 e5             	mov    %rsp,%rbp
  40045c:	74 12                	je     400470 <frame_dummy+0x20>
  40045e:	b8 00 00 00 00       	mov    $0x0,%eax
  400463:	48 85 c0             	test   %rax,%rax
  400466:	74 08                	je     400470 <frame_dummy+0x20>
  400468:	bf f0 07 60 00       	mov    $0x6007f0,%edi
  40046d:	c9                   	leaveq 
  40046e:	ff e0                	jmpq   *%rax
  400470:	c9                   	leaveq 
  400471:	c3                   	retq   
  400472:	90                   	nop
  400473:	90                   	nop

0000000000400474 <bar1>:
  400474:	55                   	push   %rbp
  400475:	48 89 e5             	mov    %rsp,%rbp
  400478:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40047b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40047e:	c9                   	leaveq 
  40047f:	c3                   	retq   

0000000000400480 <bar2>:
  400480:	55                   	push   %rbp
  400481:	48 89 e5             	mov    %rsp,%rbp
  400484:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400487:	89 75 f8             	mov    %esi,-0x8(%rbp)
  40048a:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40048d:	8b 55 fc             	mov    -0x4(%rbp),%edx
  400490:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  400493:	c9                   	leaveq 
  400494:	c3                   	retq   

0000000000400495 <bar3>:
  400495:	55                   	push   %rbp
  400496:	48 89 e5             	mov    %rsp,%rbp
  400499:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40049c:	89 75 f8             	mov    %esi,-0x8(%rbp)
  40049f:	89 55 f4             	mov    %edx,-0xc(%rbp)
  4004a2:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4004a5:	8b 55 fc             	mov    -0x4(%rbp),%edx
  4004a8:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  4004ab:	03 45 f4             	add    -0xc(%rbp),%eax
  4004ae:	c9                   	leaveq 
  4004af:	c3                   	retq   

00000000004004b0 <bar4>:
  4004b0:	55                   	push   %rbp
  4004b1:	48 89 e5             	mov    %rsp,%rbp
  4004b4:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4004b7:	89 75 f8             	mov    %esi,-0x8(%rbp)
  4004ba:	89 55 f4             	mov    %edx,-0xc(%rbp)
  4004bd:	89 4d f0             	mov    %ecx,-0x10(%rbp)
  4004c0:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4004c3:	8b 55 fc             	mov    -0x4(%rbp),%edx
  4004c6:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  4004c9:	03 45 f4             	add    -0xc(%rbp),%eax
  4004cc:	03 45 f0             	add    -0x10(%rbp),%eax
  4004cf:	c9                   	leaveq 
  4004d0:	c3                   	retq   

00000000004004d1 <foo>:
  4004d1:	55                   	push   %rbp
  4004d2:	48 89 e5             	mov    %rsp,%rbp
  4004d5:	53                   	push   %rbx
  4004d6:	48 83 ec 10          	sub    $0x10,%rsp
  4004da:	c7 45 e8 03 00 00 00 	movl   $0x3,-0x18(%rbp)
  4004e1:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4004e4:	89 c7                	mov    %eax,%edi
  4004e6:	e8 89 ff ff ff       	callq  400474 <bar1>
  4004eb:	c7 45 ec 04 00 00 00 	movl   $0x4,-0x14(%rbp)
  4004f2:	8b 55 ec             	mov    -0x14(%rbp),%edx
  4004f5:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4004f8:	89 d6                	mov    %edx,%esi
  4004fa:	89 c7                	mov    %eax,%edi
  4004fc:	e8 7f ff ff ff       	callq  400480 <bar2>
  400501:	c7 45 f0 05 00 00 00 	movl   $0x5,-0x10(%rbp)
  400508:	8b 55 f0             	mov    -0x10(%rbp),%edx
  40050b:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  40050e:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400511:	89 ce                	mov    %ecx,%esi
  400513:	89 c7                	mov    %eax,%edi
  400515:	e8 7b ff ff ff       	callq  400495 <bar3>
  40051a:	c7 45 f4 06 00 00 00 	movl   $0x6,-0xc(%rbp)
  400521:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  400524:	8b 55 f0             	mov    -0x10(%rbp),%edx
  400527:	8b 5d ec             	mov    -0x14(%rbp),%ebx
  40052a:	8b 45 e8             	mov    -0x18(%rbp),%eax
  40052d:	89 de                	mov    %ebx,%esi
  40052f:	89 c7                	mov    %eax,%edi
  400531:	e8 7a ff ff ff       	callq  4004b0 <bar4>
  400536:	48 83 c4 10          	add    $0x10,%rsp
  40053a:	5b                   	pop    %rbx
  40053b:	c9                   	leaveq 
  40053c:	c3                   	retq   

000000000040053d <main>:
  40053d:	55                   	push   %rbp
  40053e:	48 89 e5             	mov    %rsp,%rbp
  400541:	b8 00 00 00 00       	mov    $0x0,%eax
  400546:	e8 86 ff ff ff       	callq  4004d1 <foo>
  40054b:	b8 00 00 00 00       	mov    $0x0,%eax
  400550:	c9                   	leaveq 
  400551:	c3                   	retq   
  400552:	90                   	nop
  400553:	90                   	nop
  400554:	90                   	nop
  400555:	90                   	nop
  400556:	90                   	nop
  400557:	90                   	nop
  400558:	90                   	nop
  400559:	90                   	nop
  40055a:	90                   	nop
  40055b:	90                   	nop
  40055c:	90                   	nop
  40055d:	90                   	nop
  40055e:	90                   	nop
  40055f:	90                   	nop

0000000000400560 <__libc_csu_fini>:
  400560:	f3 c3                	repz retq 
  400562:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  400569:	1f 84 00 00 00 00 00 

0000000000400570 <__libc_csu_init>:
  400570:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400575:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  40057a:	48 8d 2d 4b 02 20 00 	lea    0x20024b(%rip),%rbp        # 6007cc <__init_array_end>
  400581:	4c 8d 25 44 02 20 00 	lea    0x200244(%rip),%r12        # 6007cc <__init_array_end>
  400588:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  40058d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  400592:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  400597:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  40059c:	48 83 ec 38          	sub    $0x38,%rsp
  4005a0:	4c 29 e5             	sub    %r12,%rbp
  4005a3:	41 89 fd             	mov    %edi,%r13d
  4005a6:	49 89 f6             	mov    %rsi,%r14
  4005a9:	48 c1 fd 03          	sar    $0x3,%rbp
  4005ad:	49 89 d7             	mov    %rdx,%r15
  4005b0:	e8 a3 fd ff ff       	callq  400358 <_init>
  4005b5:	48 85 ed             	test   %rbp,%rbp
  4005b8:	74 1c                	je     4005d6 <__libc_csu_init+0x66>
  4005ba:	31 db                	xor    %ebx,%ebx
  4005bc:	0f 1f 40 00          	nopl   0x0(%rax)
  4005c0:	4c 89 fa             	mov    %r15,%rdx
  4005c3:	4c 89 f6             	mov    %r14,%rsi
  4005c6:	44 89 ef             	mov    %r13d,%edi
  4005c9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4005cd:	48 83 c3 01          	add    $0x1,%rbx
  4005d1:	48 39 eb             	cmp    %rbp,%rbx
  4005d4:	72 ea                	jb     4005c0 <__libc_csu_init+0x50>
  4005d6:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  4005db:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  4005e0:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  4005e5:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  4005ea:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  4005ef:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  4005f4:	48 83 c4 38          	add    $0x38,%rsp
  4005f8:	c3                   	retq   
  4005f9:	90                   	nop
  4005fa:	90                   	nop
  4005fb:	90                   	nop
  4005fc:	90                   	nop
  4005fd:	90                   	nop
  4005fe:	90                   	nop
  4005ff:	90                   	nop

0000000000400600 <__do_global_ctors_aux>:
  400600:	55                   	push   %rbp
  400601:	48 89 e5             	mov    %rsp,%rbp
  400604:	53                   	push   %rbx
  400605:	48 83 ec 08          	sub    $0x8,%rsp
  400609:	48 8b 05 c0 01 20 00 	mov    0x2001c0(%rip),%rax        # 6007d0 <__CTOR_LIST__>
  400610:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400614:	74 19                	je     40062f <__do_global_ctors_aux+0x2f>
  400616:	bb d0 07 60 00       	mov    $0x6007d0,%ebx
  40061b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400620:	48 83 eb 08          	sub    $0x8,%rbx
  400624:	ff d0                	callq  *%rax
  400626:	48 8b 03             	mov    (%rbx),%rax
  400629:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40062d:	75 f1                	jne    400620 <__do_global_ctors_aux+0x20>
  40062f:	48 83 c4 08          	add    $0x8,%rsp
  400633:	5b                   	pop    %rbx
  400634:	c9                   	leaveq 
  400635:	c3                   	retq   
  400636:	90                   	nop
  400637:	90                   	nop

Disassembly of section .fini:

0000000000400638 <_fini>:
  400638:	48 83 ec 08          	sub    $0x8,%rsp
  40063c:	e8 9f fd ff ff       	callq  4003e0 <__do_global_dtors_aux>
  400641:	48 83 c4 08          	add    $0x8,%rsp
  400645:	c3                   	retq   
