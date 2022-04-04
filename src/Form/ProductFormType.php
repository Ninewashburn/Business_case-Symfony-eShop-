<?php

namespace App\Form;

use App\Entity\Product;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
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
                'label' => 'product.index.table.title',
                'attr' => [
                    'placeholder' => 'product.index.table.title',
                ]
            ])
            ->add('description', TextareaType::class, [
                'label' => 'product.index.table.description',
                'attr' => [
                    'placeholder' => 'product.index.table.description',
                ]
            ])
            ->add('price', NumberType::class, [
                'label' => 'product.index.table.price',
                'attr' => [
                    'placeholder' => 'product.index.table.price',
                ]
            ])
            ->add('quantity', NumberType::class, [
                'label' => 'product.index.table.quantity',
                'attr' => [
                    'placeholder' => 'product.index.table.quantity',
                ]
            ])
            ->add('image', TextType::class, [
                'label' => 'product.index.table.image',
                'attr' => [
                    'placeholder' => 'product.index.table.image',
                ]
            ])
            ->add('cover', TextType::class, [
                'label' => 'product.index.table.cover',
                'attr' => [
                    'placeholder' => 'product.index.table.cover',
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
