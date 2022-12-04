<?php

namespace App\Form;

use App\Entity\Category;
use App\Entity\Product;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\CallbackTransformer;
use App\Entity\User;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;


class ProductType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('title', TextType::class, [
                'attr' => ['class' => 'form-control'],
                "label" => "Nom de l'article",
            ])
            ->add('description', TextType::class, [
                'attr' => ['class' => 'form-control'],
                "label" => "description"
            ])
            ->add('price',NumberType::class, [
                'attr' => ['class' => 'form-control'],
                 "label" => "prix"
                ])

            ->add('quantity', IntegerType::class, [
                'attr' => ['class' => 'form-control'],
                "label" => "quantité",
                ])
            ->add('origin', ChoiceType::class, [
                'attr' => ['class' => 'form-select'],
                'placeholder' => 'Sélectionner des pays de provenance',
                'choices' => [
                    'Etats-Unis' => 'Etats-Unis',
                    'France' => 'France',
                    'Angleterre' => 'Angleterre',
                    'Maroc' => 'Maroc',
                    'Canada' => 'Canada',
                    'Espagne' => 'Espagne',
                    'Brésil' => 'Brésil',
                    'Colombie' => 'Colombie',   
                ],

            ])
            ->add('status', ChoiceType::class, [
                'attr' => ['class' => 'form-select'],
                'placeholder' => 'Sélectionner un statut',
                'choices' => [
                    'Désactivé' => 0,
                    'Actif' => 1,
                ],
            ])
            ->add('seller', EntityType::class, [
                'mapped' => false,
                'attr' => ['class' => 'form-select'],
                'class' => User::class,
                'label' => 'Choisissez votre adresse mail',
                'choice_label' => 'email'
            ])
            ->add('category', EntityType::class, [
                'mapped' => false,
                'attr' => ['class' => 'form-select'],
                'class' => Category::class,
                'label' => 'Choisissez votre category',
                'choice_label' => 'name'
            ])
            ->add('image', TextType::class, [
                'attr' => ['class' => 'form-control'],
                "label" => "nom de l'image",
            ])
            
        ;

        $builder->get('origin')
            ->addModelTransformer(new CallbackTransformer(
                function ($originArray) {
                     // transform the array to a string
                     return count($originArray)? $originArray[0]: null;
                },
                function ($originString) {
                     // transform the string back to an array
                     return [$originString];
                }
        ));
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Product::class,
        ]);
    }
}
