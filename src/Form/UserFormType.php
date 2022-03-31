<?php

namespace App\Form;

use App\Entity\Address;
use App\Entity\User;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\BirthdayType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class UserFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('email', EmailType::class, [
                'label' => false,
                'attr' => [
                    'placeholder' => 'user.index.table.email',
                ]
            ])
            ->add('password', PasswordType::class, [
                'label' => false,
                'attr' => [
                    'placeholder' => 'user.index.table.password',
                ]
            ])
            ->add('firstName', TextType::class, [
                'label' => false,
                'attr' => [
                    'placeholder' => 'user.index.table.firstName',
                ]
            ])
            ->add('lastName', TextType::class, [
                'label' => false,
                'attr' => [
                    'placeholder' => 'user.index.table.lastName',
                ]
            ])
            ->add('telephone', NumberType::class, [
                'label' => false,
                'attr' => [
                    'placeholder' => 'user.index.table.telephone',
                ]
            ])
            ->add('birth_at', BirthdayType::class, [
                'label' => false,
                'attr' => [
                    'placeholder' => 'user.index.table.telephone',
                ]
            ])
//            ->add('address', EntityType::class, [
//                'label' => false,
//                'class' => Address::class,
//                'multiple' => true,
//                'attr' => [
//                    'placeholder' => 'user.index.table.adresse',
//                ]
//            ])
            ->add('submit', SubmitType::class, [
                'label' => 'general.button.submit',
            ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
        'data_class' => User::class,
        'attr' => [
            'novalidate' => 'novalidate'
        ]
    ]);
    }
}
