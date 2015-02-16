
main:     file format elf64-x86-64


Disassembly of section .init:

00000000004003b8 <_init>:
  4003b8:	48 83 ec 08          	sub    $0x8,%rsp
  4003bc:	e8 6b 00 00 00       	callq  40042c <call_gmon_start>
  4003c1:	e8 fa 00 00 00       	callq  4004c0 <frame_dummy>
  4003c6:	e8 15 03 00 00       	callq  4006e0 <__do_global_ctors_aux>
  4003cb:	48 83 c4 08          	add    $0x8,%rsp
  4003cf:	c3                   	retq   

Disassembly of section .plt:

00000000004003d0 <__isoc99_sscanf@plt-0x10>:
  4003d0:	ff 35 ca 06 20 00    	pushq  0x2006ca(%rip)        # 600aa0 <_GLOBAL_OFFSET_TABLE_+0x8>
  4003d6:	ff 25 cc 06 20 00    	jmpq   *0x2006cc(%rip)        # 600aa8 <_GLOBAL_OFFSET_TABLE_+0x10>
  4003dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004003e0 <__isoc99_sscanf@plt>:
  4003e0:	ff 25 ca 06 20 00    	jmpq   *0x2006ca(%rip)        # 600ab0 <_GLOBAL_OFFSET_TABLE_+0x18>
  4003e6:	68 00 00 00 00       	pushq  $0x0
  4003eb:	e9 e0 ff ff ff       	jmpq   4003d0 <_init+0x18>

00000000004003f0 <__libc_start_main@plt>:
  4003f0:	ff 25 c2 06 20 00    	jmpq   *0x2006c2(%rip)        # 600ab8 <_GLOBAL_OFFSET_TABLE_+0x20>
  4003f6:	68 01 00 00 00       	pushq  $0x1
  4003fb:	e9 d0 ff ff ff       	jmpq   4003d0 <_init+0x18>

Disassembly of section .text:

0000000000400400 <_start>:
  400400:	31 ed                	xor    %ebp,%ebp
  400402:	49 89 d1             	mov    %rdx,%r9
  400405:	5e                   	pop    %rsi
  400406:	48 89 e2             	mov    %rsp,%rdx
  400409:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40040d:	50                   	push   %rax
  40040e:	54                   	push   %rsp
  40040f:	49 c7 c0 40 06 40 00 	mov    $0x400640,%r8
  400416:	48 c7 c1 50 06 40 00 	mov    $0x400650,%rcx
  40041d:	48 c7 c7 21 06 40 00 	mov    $0x400621,%rdi
  400424:	e8 c7 ff ff ff       	callq  4003f0 <__libc_start_main@plt>
  400429:	f4                   	hlt    
  40042a:	90                   	nop
  40042b:	90                   	nop

000000000040042c <call_gmon_start>:
  40042c:	48 83 ec 08          	sub    $0x8,%rsp
  400430:	48 8b 05 59 06 20 00 	mov    0x200659(%rip),%rax        # 600a90 <_DYNAMIC+0x190>
  400437:	48 85 c0             	test   %rax,%rax
  40043a:	74 02                	je     40043e <call_gmon_start+0x12>
  40043c:	ff d0                	callq  *%rax
  40043e:	48 83 c4 08          	add    $0x8,%rsp
  400442:	c3                   	retq   
  400443:	90                   	nop
  400444:	90                   	nop
  400445:	90                   	nop
  400446:	90                   	nop
  400447:	90                   	nop
  400448:	90                   	nop
  400449:	90                   	nop
  40044a:	90                   	nop
  40044b:	90                   	nop
  40044c:	90                   	nop
  40044d:	90                   	nop
  40044e:	90                   	nop
  40044f:	90                   	nop

0000000000400450 <__do_global_dtors_aux>:
  400450:	55                   	push   %rbp
  400451:	48 89 e5             	mov    %rsp,%rbp
  400454:	53                   	push   %rbx
  400455:	48 83 ec 08          	sub    $0x8,%rsp
  400459:	80 3d 68 06 20 00 00 	cmpb   $0x0,0x200668(%rip)        # 600ac8 <completed.6349>
  400460:	75 4b                	jne    4004ad <__do_global_dtors_aux+0x5d>
  400462:	bb f0 08 60 00       	mov    $0x6008f0,%ebx
  400467:	48 8b 05 62 06 20 00 	mov    0x200662(%rip),%rax        # 600ad0 <dtor_idx.6351>
  40046e:	48 81 eb e8 08 60 00 	sub    $0x6008e8,%rbx
  400475:	48 c1 fb 03          	sar    $0x3,%rbx
  400479:	48 83 eb 01          	sub    $0x1,%rbx
  40047d:	48 39 d8             	cmp    %rbx,%rax
  400480:	73 24                	jae    4004a6 <__do_global_dtors_aux+0x56>
  400482:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400488:	48 83 c0 01          	add    $0x1,%rax
  40048c:	48 89 05 3d 06 20 00 	mov    %rax,0x20063d(%rip)        # 600ad0 <dtor_idx.6351>
  400493:	ff 14 c5 e8 08 60 00 	callq  *0x6008e8(,%rax,8)
  40049a:	48 8b 05 2f 06 20 00 	mov    0x20062f(%rip),%rax        # 600ad0 <dtor_idx.6351>
  4004a1:	48 39 d8             	cmp    %rbx,%rax
  4004a4:	72 e2                	jb     400488 <__do_global_dtors_aux+0x38>
  4004a6:	c6 05 1b 06 20 00 01 	movb   $0x1,0x20061b(%rip)        # 600ac8 <completed.6349>
  4004ad:	48 83 c4 08          	add    $0x8,%rsp
  4004b1:	5b                   	pop    %rbx
  4004b2:	c9                   	leaveq 
  4004b3:	c3                   	retq   
  4004b4:	66 66 66 2e 0f 1f 84 	data32 data32 nopw %cs:0x0(%rax,%rax,1)
  4004bb:	00 00 00 00 00 

00000000004004c0 <frame_dummy>:
  4004c0:	48 83 3d 30 04 20 00 	cmpq   $0x0,0x200430(%rip)        # 6008f8 <__JCR_END__>
  4004c7:	00 
  4004c8:	55                   	push   %rbp
  4004c9:	48 89 e5             	mov    %rsp,%rbp
  4004cc:	74 12                	je     4004e0 <frame_dummy+0x20>
  4004ce:	b8 00 00 00 00       	mov    $0x0,%eax
  4004d3:	48 85 c0             	test   %rax,%rax
  4004d6:	74 08                	je     4004e0 <frame_dummy+0x20>
  4004d8:	bf f8 08 60 00       	mov    $0x6008f8,%edi
  4004dd:	c9                   	leaveq 
  4004de:	ff e0                	jmpq   *%rax
  4004e0:	c9                   	leaveq 
  4004e1:	c3                   	retq   
  4004e2:	90                   	nop
  4004e3:	90                   	nop

00000000004004e4 <bar1>:
  4004e4:	55                   	push   %rbp
  4004e5:	48 89 e5             	mov    %rsp,%rbp
  4004e8:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4004eb:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4004ee:	c9                   	leaveq 
  4004ef:	c3                   	retq   

00000000004004f0 <bar2>:
  4004f0:	55                   	push   %rbp
  4004f1:	48 89 e5             	mov    %rsp,%rbp
  4004f4:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4004f7:	89 75 f8             	mov    %esi,-0x8(%rbp)
  4004fa:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4004fd:	8b 55 fc             	mov    -0x4(%rbp),%edx
  400500:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  400503:	c9                   	leaveq 
  400504:	c3                   	retq   

0000000000400505 <bar3>:
  400505:	55                   	push   %rbp
  400506:	48 89 e5             	mov    %rsp,%rbp
  400509:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40050c:	89 75 f8             	mov    %esi,-0x8(%rbp)
  40050f:	89 55 f4             	mov    %edx,-0xc(%rbp)
  400512:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400515:	8b 55 fc             	mov    -0x4(%rbp),%edx
  400518:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  40051b:	03 45 f4             	add    -0xc(%rbp),%eax
  40051e:	c9                   	leaveq 
  40051f:	c3                   	retq   

0000000000400520 <bar4>:
  400520:	55                   	push   %rbp
  400521:	48 89 e5             	mov    %rsp,%rbp
  400524:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400527:	89 75 f8             	mov    %esi,-0x8(%rbp)
  40052a:	89 55 f4             	mov    %edx,-0xc(%rbp)
  40052d:	89 4d f0             	mov    %ecx,-0x10(%rbp)
  400530:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400533:	8b 55 fc             	mov    -0x4(%rbp),%edx
  400536:	8d 04 02             	lea    (%rdx,%rax,1),%eax
  400539:	03 45 f4             	add    -0xc(%rbp),%eax
  40053c:	03 45 f0             	add    -0x10(%rbp),%eax
  40053f:	c9                   	leaveq 
  400540:	c3                   	retq   

0000000000400541 <foo>:
  400541:	55                   	push   %rbp
  400542:	48 89 e5             	mov    %rsp,%rbp
  400545:	53                   	push   %rbx
  400546:	48 83 ec 10          	sub    $0x10,%rsp
  40054a:	c7 45 e8 03 00 00 00 	movl   $0x3,-0x18(%rbp)
  400551:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400554:	89 c7                	mov    %eax,%edi
  400556:	e8 89 ff ff ff       	callq  4004e4 <bar1>
  40055b:	c7 45 ec 04 00 00 00 	movl   $0x4,-0x14(%rbp)
  400562:	8b 55 ec             	mov    -0x14(%rbp),%edx
  400565:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400568:	89 d6                	mov    %edx,%esi
  40056a:	89 c7                	mov    %eax,%edi
  40056c:	e8 7f ff ff ff       	callq  4004f0 <bar2>
  400571:	c7 45 f0 05 00 00 00 	movl   $0x5,-0x10(%rbp)
  400578:	8b 55 f0             	mov    -0x10(%rbp),%edx
  40057b:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  40057e:	8b 45 e8             	mov    -0x18(%rbp),%eax
  400581:	89 ce                	mov    %ecx,%esi
  400583:	89 c7                	mov    %eax,%edi
  400585:	e8 7b ff ff ff       	callq  400505 <bar3>
  40058a:	c7 45 f4 06 00 00 00 	movl   $0x6,-0xc(%rbp)
  400591:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  400594:	8b 55 f0             	mov    -0x10(%rbp),%edx
  400597:	8b 5d ec             	mov    -0x14(%rbp),%ebx
  40059a:	8b 45 e8             	mov    -0x18(%rbp),%eax
  40059d:	89 de                	mov    %ebx,%esi
  40059f:	89 c7                	mov    %eax,%edi
  4005a1:	e8 7a ff ff ff       	callq  400520 <bar4>
  4005a6:	48 83 c4 10          	add    $0x10,%rsp
  4005aa:	5b                   	pop    %rbx
  4005ab:	c9                   	leaveq 
  4005ac:	c3                   	retq   

00000000004005ad <input>:
  4005ad:	55                   	push   %rbp
  4005ae:	48 89 e5             	mov    %rsp,%rbp
  4005b1:	48 83 ec 70          	sub    $0x70,%rsp
  4005b5:	c7 45 90 61 62 63 64 	movl   $0x64636261,-0x70(%rbp)
  4005bc:	c7 45 94 65 66 67 68 	movl   $0x68676665,-0x6c(%rbp)
  4005c3:	c7 45 98 69 6a 6b 6c 	movl   $0x6c6b6a69,-0x68(%rbp)
  4005ca:	c7 45 9c 69 61 61 61 	movl   $0x61616169,-0x64(%rbp)
  4005d1:	c7 45 a0 64 69 66 65 	movl   $0x65666964,-0x60(%rbp)
  4005d8:	c7 45 a4 61 6a 00 00 	movl   $0x6a61,-0x5c(%rbp)
  4005df:	48 8d 55 a8          	lea    -0x58(%rbp),%rdx
  4005e3:	b8 00 00 00 00       	mov    $0x0,%eax
  4005e8:	b9 09 00 00 00       	mov    $0x9,%ecx
  4005ed:	48 89 d7             	mov    %rdx,%rdi
  4005f0:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4005f3:	48 89 fa             	mov    %rdi,%rdx
  4005f6:	89 02                	mov    %eax,(%rdx)
  4005f8:	48 83 c2 04          	add    $0x4,%rdx
  4005fc:	c7 45 fc 04 00 00 00 	movl   $0x4,-0x4(%rbp)
  400603:	b9 38 07 40 00       	mov    $0x400738,%ecx
  400608:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  40060c:	8b 55 fc             	mov    -0x4(%rbp),%edx
  40060f:	48 89 ce             	mov    %rcx,%rsi
  400612:	48 89 c7             	mov    %rax,%rdi
  400615:	b8 00 00 00 00       	mov    $0x0,%eax
  40061a:	e8 c1 fd ff ff       	callq  4003e0 <__isoc99_sscanf@plt>
  40061f:	c9                   	leaveq 
  400620:	c3                   	retq   

0000000000400621 <main>:
  400621:	55                   	push   %rbp
  400622:	48 89 e5             	mov    %rsp,%rbp
  400625:	b8 00 00 00 00       	mov    $0x0,%eax
  40062a:	e8 7e ff ff ff       	callq  4005ad <input>
  40062f:	b8 00 00 00 00       	mov    $0x0,%eax
  400634:	c9                   	leaveq 
  400635:	c3                   	retq   
  400636:	90                   	nop
  400637:	90                   	nop
  400638:	90                   	nop
  400639:	90                   	nop
  40063a:	90                   	nop
  40063b:	90                   	nop
  40063c:	90                   	nop
  40063d:	90                   	nop
  40063e:	90                   	nop
  40063f:	90                   	nop

0000000000400640 <__libc_csu_fini>:
  400640:	f3 c3                	repz retq 
  400642:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
  400649:	1f 84 00 00 00 00 00 

0000000000400650 <__libc_csu_init>:
  400650:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  400655:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  40065a:	48 8d 2d 73 02 20 00 	lea    0x200273(%rip),%rbp        # 6008d4 <__init_array_end>
  400661:	4c 8d 25 6c 02 20 00 	lea    0x20026c(%rip),%r12        # 6008d4 <__init_array_end>
  400668:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  40066d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  400672:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  400677:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  40067c:	48 83 ec 38          	sub    $0x38,%rsp
  400680:	4c 29 e5             	sub    %r12,%rbp
  400683:	41 89 fd             	mov    %edi,%r13d
  400686:	49 89 f6             	mov    %rsi,%r14
  400689:	48 c1 fd 03          	sar    $0x3,%rbp
  40068d:	49 89 d7             	mov    %rdx,%r15
  400690:	e8 23 fd ff ff       	callq  4003b8 <_init>
  400695:	48 85 ed             	test   %rbp,%rbp
  400698:	74 1c                	je     4006b6 <__libc_csu_init+0x66>
  40069a:	31 db                	xor    %ebx,%ebx
  40069c:	0f 1f 40 00          	nopl   0x0(%rax)
  4006a0:	4c 89 fa             	mov    %r15,%rdx
  4006a3:	4c 89 f6             	mov    %r14,%rsi
  4006a6:	44 89 ef             	mov    %r13d,%edi
  4006a9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4006ad:	48 83 c3 01          	add    $0x1,%rbx
  4006b1:	48 39 eb             	cmp    %rbp,%rbx
  4006b4:	72 ea                	jb     4006a0 <__libc_csu_init+0x50>
  4006b6:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  4006bb:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  4006c0:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  4006c5:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  4006ca:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  4006cf:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  4006d4:	48 83 c4 38          	add    $0x38,%rsp
  4006d8:	c3                   	retq   
  4006d9:	90                   	nop
  4006da:	90                   	nop
  4006db:	90                   	nop
  4006dc:	90                   	nop
  4006dd:	90                   	nop
  4006de:	90                   	nop
  4006df:	90                   	nop

00000000004006e0 <__do_global_ctors_aux>:
  4006e0:	55                   	push   %rbp
  4006e1:	48 89 e5             	mov    %rsp,%rbp
  4006e4:	53                   	push   %rbx
  4006e5:	48 83 ec 08          	sub    $0x8,%rsp
  4006e9:	48 8b 05 e8 01 20 00 	mov    0x2001e8(%rip),%rax        # 6008d8 <__CTOR_LIST__>
  4006f0:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4006f4:	74 19                	je     40070f <__do_global_ctors_aux+0x2f>
  4006f6:	bb d8 08 60 00       	mov    $0x6008d8,%ebx
  4006fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400700:	48 83 eb 08          	sub    $0x8,%rbx
  400704:	ff d0                	callq  *%rax
  400706:	48 8b 03             	mov    (%rbx),%rax
  400709:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40070d:	75 f1                	jne    400700 <__do_global_ctors_aux+0x20>
  40070f:	48 83 c4 08          	add    $0x8,%rsp
  400713:	5b                   	pop    %rbx
  400714:	c9                   	leaveq 
  400715:	c3                   	retq   
  400716:	90                   	nop
  400717:	90                   	nop

Disassembly of section .fini:

0000000000400718 <_fini>:
  400718:	48 83 ec 08          	sub    $0x8,%rsp
  40071c:	e8 2f fd ff ff       	callq  400450 <__do_global_dtors_aux>
  400721:	48 83 c4 08          	add    $0x8,%rsp
  400725:	c3                   	retq   
