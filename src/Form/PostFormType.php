<?php

namespace App\Form;

use App\Entity\Post;
use App\Entity\Thread;
use Doctrine\ORM\EntityRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class   PostFormType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('content', TextType::class, [
                'label' => false,
                'attr' => [
                    'placeholder' => 'article.index.table.name',
                ]
            ])

            ->add('thread', EntityType::class, [
                'class' => Thread::class,
                'label' => 'Sujet',
                'choice_label' => 'subject',
                'query_builder' => function (EntityRepository $er) {
                    return $er->createQueryBuilder('thread')
                        ->orderBy('thread.subject', 'ASC');
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
            'data_class' => Post::class,
        ]);
    }
}
