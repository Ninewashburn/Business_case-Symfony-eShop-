<?php

namespace App\Form;

use App\Entity\Product;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ProductFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {

        $builder
            ->add('title', TextType::class, [
                'label' => false,
                'attr' => [
                    'placeholder' => 'product.index.table.title',
                ]
            ])
            ->add('description', TextareaType::class, [
                'label' => false,
                'attr' => [
                    'placeholder' => 'article.index.table.description',
                ]
            ])
            ->add('price', TextType::class, [
                'label' => 'Prix',
                'attr' => [
                    'placeholder' => 'user.index.table.price',
                ]
            ])
            ->add('quantity', TextType::class, [
                'label' => 'Quantité',
                'attr' => [
                    'placeholder' => 'user.index.table.quantity',
                ]
            ])
            ->add('image', TextType::class, [
                'label' => 'Image',
                'attr' => [
                    'placeholder' => 'user.index.table.image',
                ]
            ])
            ->add('cover', TextType::class, [
                'label' => 'Cover',
                'attr' => [
                    'placeholder' => 'user.index.table.cover',
                ]
            ])
            ->add('submit', SubmitType::class, [
                'label' => 'general.button.submit',
            ]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Product::class,
            'attr' => [
                'novalidate' => 'novalidate'
            ]
        ]);
    }
}
