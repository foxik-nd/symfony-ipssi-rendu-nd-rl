<?php

namespace App\Form;

use App\Entity\Article;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use App\Entity\User;

class ArticleType extends AbstractType
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
                "label" => "description",
            ])
            ->add('content', TextType::class, [
                'attr' => ['class' => 'form-control'],
                "label" => "Contenu",
            ])

            ->add('status', ChoiceType::class, [
                'attr' => ['class' => 'form-select'],
                'placeholder' => 'Sélectionner un statut',
                'choices' => [
                    'Désactivé' => 0,
                    'Actif' => 1,
                ],
            ])
            ->add('author',  EntityType::class, [
                'mapped' => false,
                'attr' => ['class' => 'form-select'],
                'class' => User::class,
                'label' => 'Choisissez votre adresse mail',
                'choice_label' => 'email'
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Article::class,
        ]);
    }
}
