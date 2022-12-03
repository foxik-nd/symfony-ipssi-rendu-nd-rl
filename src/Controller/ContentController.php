<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Controller\ArticleController;

class ContentController extends AbstractController
{
    #[Route('/', name: 'app_content', methods: ['GET'])]
    public function index()
{
    $response = $this->forward('App\Controller\ArticleController::last3');

    // ... further modify the response or return it directly

    return $response;
}
}
