<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\BirthdayType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\Validator\Constraints\NotBlank;

class UserFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('email', EmailType::class, [
                'label' => 'user.index.table.email',
                'attr' => [
                    'placeholder' => 'user.index.table.email',
                ]
            ])
            ->add('plainPassword', PasswordType::class, [
                // instead of being set onto the object directly,
                // this is read and encoded in the controller
                'mapped' => false,
                'label' => 'user.index.table.password',
                'attr' => ['autocomplete' => 'new-password',
                'placeholder' => 'user.index.table.password'],
                'constraints' => [
                    new NotBlank([
                        'message' => 'Veuillez renseigner votre mot de passe',
                    ]),
                    new Length([
                        'min' => 6,
                        'minMessage' => 'Votre mot de passe doit contenir au moins {{ limit }} caractères',
                        // max length allowed by Symfony for security reasons
                        'max' => 4096,
                    ]),
                ],
            ])
            ->add('firstName', TextType::class, [
                'label' => 'user.index.table.firstName',
                'attr' => [
                    'placeholder' => 'user.index.table.firstName',
                ]
            ])
            ->add('lastName', TextType::class, [
                'label' => 'user.index.table.lastName',
                'attr' => [
                    'placeholder' => 'user.index.table.lastName',
                ]
            ])
            ->add('birth_at', BirthdayType::class, [
                'label' => 'user.index.table.birthAt',
                'attr' => [
                    'placeholder' => 'user.index.table.birthAt',
                ]
            ])
            ->add('address', TextType::class, [
                'label' => 'user.index.table.address',
                'attr' => [
                    'placeholder' => 'user.index.table.address',
                ]
            ])
            ->add('secondAddress', TextType::class, [
                'label' => 'user.index.table.secondAddress',
                'attr' => [
                    'placeholder' => 'user.index.table.secondAddress',
                ]
            ])
            ->add('city', TextType::class, [
                'label' => 'user.index.table.city',
                'attr' => [
                    'placeholder' => 'user.index.table.city',
                ]
            ])
            ->add('country', TextType::class, [
                'label' => 'user.index.table.country',
                'attr' => [
                    'placeholder' => 'user.index.table.country',
                ]
            ])
            ->add('telephone', NumberType::class, [
                'label' => 'user.index.table.telephone',
                'attr' => [
                    'placeholder' => 'user.index.table.telephone',
                ]
            ])
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
