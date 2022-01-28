<?php

namespace App\Entity;

use App\Repository\OrderLineRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: OrderLineRepository::class)]
class OrderLine
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'integer')]
    private $quantity;

    #[ORM\OneToOne(mappedBy: 'orderLine', targetEntity: Delivery::class, cascade: ['persist', 'remove'])]
    private $delivery;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getQuantity(): ?int
    {
        return $this->quantity;
    }

    public function setQuantity(int $quantity): self
    {
        $this->quantity = $quantity;

        return $this;
    }

    public function getDelivery(): ?Delivery
    {
        return $this->delivery;
    }

    public function setDelivery(?Delivery $delivery): self
    {
        // unset the owning side of the relation if necessary
        if ($delivery === null && $this->delivery !== null) {
            $this->delivery->setOrderLine(null);
        }

        // set the owning side of the relation if necessary
        if ($delivery !== null && $delivery->getOrderLine() !== $this) {
            $delivery->setOrderLine($this);
        }

        $this->delivery = $delivery;

        return $this;
    }
}
