<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\RepeatedType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class UserType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        if ($options['type'] === 'base') {


            $builder
                ->add('email', EmailType::class, [
                    'attr' => ['class' => 'form-control'],
                    "label" => "Adresse Email"
                ])
                ->add('name', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                    "label" => "Votre nom"
                ])
                ->add('firstname', TextType::class, [
                    'attr' => ['class' => 'form-control'],
                    "label" => "Votre prénom"
                ]);
        } else {

            $builder
                ->add('plainPassword', RepeatedType::class, array(
                    'type'              => PasswordType::class,
                    'mapped'            => false,
                    'first_options'     => array('label' => 'New password',                'attr' => ['class' => 'form-control'],),
                    'second_options'    => array('label' => 'Confirm new password',                 'attr' => ['class' => 'form-control'],),
                    'invalid_message' => 'The password fields must match.',
                ));
        }
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => User::class,
            'type' => 'base',
        ]);
        $resolver->setAllowedTypes('type', 'string');
    }
}
