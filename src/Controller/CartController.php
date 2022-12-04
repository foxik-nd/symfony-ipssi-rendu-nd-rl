<?php

namespace App\Controller;

use App\Repository\ProductRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\Routing\Annotation\Route;

class CartController extends AbstractController
{
    #[Route('/panier', name: 'app_cart_index')]
    public function index(SessionInterface $session, ProductRepository $productRepository): Response
    {
        $panier = $session->get('panier', []);
        $panierWithData = [];
        foreach ($panier as $id => $quantity) {
            $panierWithData[] = [
                'product' => $productRepository->find($id),
                'quantity' => $quantity
            ];
        }

        $total= 0;
        foreach ( $panierWithData as $item){
            $totalItem = $item['product']->getPrice() * $item['quantity'];
            $total += $totalItem;
        }

        return $this->render('cart/index.html.twig', [
            'items' => $panierWithData,
            'total' => $total,
            'controller_name' => 'CartController',
        ]);
    }

    #[Route("/panier/add/{id}", name: 'app_cart_add')]
    public function add($id , SessionInterface $session){
        $panier = $session->get('panier', []);
        if(!empty($panier[$id])){
            $panier[$id]++;
        }else{
            $panier[$id] = 1;
        }
        $session->set('panier', $panier);
        return $this->redirectToRoute('app_cart_index');
    }

    #[Route("/panier/remove/{id}", name: 'app_cart_remove')]
    public function remove($id , SessionInterface $session){
        $panier = $session->get('panier', []);
        if(!empty($panier[$id])){
            unset($panier[$id]);
        }
        $session->set('panier', $panier);
        return $this->redirectToRoute('app_cart_index');
    }

    #[Route("/panier/buy/{id}", name: 'app_cart_buy')]
    public function buy($id , SessionInterface $session){
        $panier = $session->get('panier', []);
        foreach($panier as $item){
            
        }
        $session->set('panier', $panier);
        return $this->redirectToRoute('app_cart_index');
    }


}
