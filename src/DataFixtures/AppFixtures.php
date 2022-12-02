<?php

namespace App\DataFixtures;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use App\Entity\User;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class AppFixtures extends Fixture
{
    private UserPasswordHasherInterface $hasher;

    public function __construct(UserPasswordHasherInterface $hasher)
    {
        $this->hasher = $hasher;
    }

    public function load(ObjectManager $manager): void
    {
        //User
        for($i =0; $i<10; $i++){
            $user = new User();
            $user->setName('test'.$i);
            $user->setFirstname($i.'test');
            $user->setEmail('test'.$i.'@test.com');
            $user->setRoles(['ROLE_USER']);
            $user->setPlainPassword('password');
            $manager->persist($user);
        }
        $manager->flush();
    }
}
