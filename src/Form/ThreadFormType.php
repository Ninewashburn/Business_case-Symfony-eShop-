<?php

namespace App\Form;

use App\Entity\SubType;
use App\Entity\Thread;
use Doctrine\ORM\EntityRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class ThreadFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('subject', TextType::class, [
                'label' => false,
                'attr' => [
                    'placeholder' => 'article.index.table.name',
                ]
            ])

            ->add('subtype', EntityType::class, [
                'label' => 'Sous-rubrique',
                'class' => SubType::class,
                'choice_label' => 'name',
                'query_builder' => function (EntityRepository $er) {
                    return $er->createQueryBuilder('subtype')
                        ->orderBy('subtype.name', 'ASC');
                }
            ])
            ->add('submitButton', SubmitType::class, [
                'label' => 'general.button.submit',
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Thread::class,
        ]);
    }
}
