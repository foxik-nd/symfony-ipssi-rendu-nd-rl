<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\UserType;
use App\Repository\UserRepository;
use App\Repository\ProductRepository;
use App\Repository\CategoryRepository;
use App\Repository\ArticleRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Doctrine\ORM\EntityManagerInterface;

#[Route('/admin')]
class AdminController extends AbstractController
{

    #[Route('/', name: 'app_admin_index', methods: ['GET'])]
    public function index(UserRepository $userRepository, ProductRepository $productRepository,CategoryRepository $categoryRepository, ArticleRepository $articleRepository): Response
    {
        return $this->render('admin/index.html.twig', [
            'users' => $userRepository->findAll(),
            'products' => $productRepository->findAll(),
            'categories' => $categoryRepository->findAll(),
            'article' => $articleRepository->findAll(),
        ]);
    }


    #[Route('/users', name: 'app_admin_users', methods: ['GET'])]
    public function users(UserRepository $userRepository): Response
    {
        return $this->render('admin/users.html.twig', [
            'users' => $userRepository->findAll(),
        ]);
    }
    #[Route('/products', name: 'app_admin_products', methods: ['GET'])]
    public function products(ProductRepository $productRepository): Response
    {
        return $this->render('admin/products.html.twig', [
            'products' => $productRepository->findAll(),
        ]);
    }
    #[Route('/category', name: 'app_admin_category', methods: ['GET'])]
    public function category(CategoryRepository $categoryRepository): Response
    {
        return $this->render('admin/category.html.twig', [
            'categories' => $categoryRepository->findAll(),
        ]);
    }
    #[Route('/articles', name: 'app_admin_articles', methods: ['GET'])]
    public function articles(ArticleRepository $articlesRepository): Response
    {
        return $this->render('admin/articles.html.twig', [
            'articles' => $articlesRepository->findAll(),
        ]);
    }
}