<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use App\Repository\DeliveryRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: DeliveryRepository::class)]
#[ApiResource]
class Delivery
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'string', length: 255)]
    private $delivery_date;

    #[ORM\Column(type: 'string', length: 255)]
    private $status;

    #[ORM\OneToOne(inversedBy: 'delivery', targetEntity: OrderLine::class, cascade: ['persist', 'remove'])]
    private $orderLine;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDeliveryDate(): ?string
    {
        return $this->delivery_date;
    }

    public function setDeliveryDate(string $delivery_date): self
    {
        $this->delivery_date = $delivery_date;

        return $this;
    }

    public function getStatus(): ?string
    {
        return $this->status;
    }

    public function setStatus(string $status): self
    {
        $this->status = $status;

        return $this;
    }

    public function getOrderLine(): ?OrderLine
    {
        return $this->orderLine;
    }

    public function setOrderLine(?OrderLine $orderLine): self
    {
        $this->orderLine = $orderLine;

        return $this;
    }

}
