<?php

namespace App\Controller;

use App\Entity\Product;
use App\Form\ProductFormType;
use App\Repository\ProductRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/product')]
class ProductController extends AbstractController
{

    private EntityManagerInterface $entityManager;
    private ProductRepository $productRepository;

    /**
     * @param EntityManagerInterface $entityManager
     */


    /**
     * @param ProductRepository $productRepository
     */
    public function __construct(ProductRepository $productRepository, EntityManagerInterface $entityManager)
    {
        $this->productRepository = $productRepository;
        $this->entityManager = $entityManager;
    }


    #[Route('/', name: 'product_index')]
    public function index(ProductRepository $productRepository): Response
    {
        return $this->render('product/index.html.twig', [
            'products' => $productRepository->findAll()
        ]);
    }

    #[Route('/new', name: 'product_new')]
    public function new(Request $request): Response
    {
        $this->denyAccessUnlessGranted('ROLE_ADMIN');
        $user = $this->getUser();
        if ($user === null) {
            return $this->redirectToRoute('app_login');
        }

        return $this->createFormFromEntity($request, new Product());
    }

    #[Route('/{id}', name: 'product_detail')]
    public function show(Product $products): Response
    {
        return $this->render('product/detail.html.twig', [
            'product' => $products,
        ]);
    }

    #[Route('/edit/{title}', name: 'product_edit')]
    public function edit(Request $request, Product $product): Response
    {
        $user = $this->getUser();
        if ($user === null) {
            /*            $this->addFlash('message', 'Connexion réussie !');*/
            return $this->redirectToRoute('app_login');
        }

        return $this->createFormFromEntity($request, $product, 'product/edit.html.twig');
    }

    #[Route('/delete/{title}', name: 'product_delete')]
    public function delete(Product $product): Response
    {
        $user = $this->getUser();
        if ($user === null) {
            return $this->redirectToRoute('app_login');
        }

        $this->entityManager->remove($product);
        $this->entityManager->flush();
        return $this->redirectToRoute('product_index');
    }

    private function createFormFromEntity(Request $request, Product $product, string $template = 'product/new.html.twig'): Response
    {
        $form = $this->createForm(ProductFormType::class, $product);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $this->entityManager->persist($product);
            $this->entityManager->flush();
            return $this->redirectToRoute('product_index');
        }
        return $this->render($template, [
            'form' => $form->createView(),
        ]);
    }
}
