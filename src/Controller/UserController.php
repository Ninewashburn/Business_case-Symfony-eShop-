<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\UserFormType;
use App\Repository\UserRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/user')]
class UserController extends AbstractController
{
    private EntityManagerInterface $entityManager;

    /**
     * @param EntityManagerInterface $entityManager
     */
    public function __construct(EntityManagerInterface $entityManager)
    {
        $this->entityManager = $entityManager;
    }

    #[Route('/', name: 'user_index')]
    public function index(UserRepository $userRepository): Response
    {
        return $this->render('user/index.html.twig', [
            'controller_name' => 'UserController',
            'users' => $userRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'user_new')]
    public function new(Request $request): Response
    {
        $user = $this->getUser();
        if ($user === null) {
            return $this->redirectToRoute('app_login');
        }

        return $this->createFormFromEntity($request, new User());
    }

    #[Route('/show/{id}', name: 'user_show')]
    public function show(User $user): Response
    {
        return $this->render('user/show.html.twig', [
            'user' => $user,
        ]);
    }

    #[Route('/edit/{id}', name: 'user_edit')]
    public function edit(Request $request, User $user): Response
    {
        return $this->createFormFromEntity($request, $user, 'user/edit.html.twig');
    }

    #[Route('/delete/{id}', name: 'user_delete')]
    public function delete(User $user): Response
    {
//        $user = $this->getUser();
//        if ($user === null) {
//            return $this->redirectToRoute('app_login');
//        }

        $this->entityManager->remove($user);
        $this->entityManager->flush();
        return $this->redirectToRoute('user_index');
    }

    private function createFormFromEntity(Request $request, User $user, string $template = 'user/new.html.twig'): Response
    {
        $form = $this->createForm(UserFormType::class, $user);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $this->entityManager->persist($user);
            $this->entityManager->flush();
            return $this->redirectToRoute('user_index');
        }
        return $this->render($template, [
            'form' => $form->createView(),
        ]);
    }
}
