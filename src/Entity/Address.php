<?php

namespace App\Entity;

use App\Repository\AddressRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: AddressRepository::class)]
class Address
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column(type: 'integer')]
    private $id;

    #[ORM\Column(type: 'string', length: 255)]
    private $firstAddress;

    #[ORM\Column(type: 'string', length: 255, nullable: true)]
    private $secondAddress;

    #[ORM\Column(type: 'string', length: 255)]
    private $country;

    #[ORM\Column(type: 'string', length: 50)]
    private $city;

    #[ORM\Column(type: 'string', length: 30)]
    private $zipCode;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFirstAddress(): ?string
    {
        return $this->firstAddress;
    }

    public function setFirstAddress(string $firstAddress): self
    {
        $this->firstAddress = $firstAddress;

        return $this;
    }

    public function getSecondAddress(): ?string
    {
        return $this->secondAddress;
    }

    public function setSecondAddress(?string $secondAddress): self
    {
        $this->secondAddress = $secondAddress;

        return $this;
    }

    public function getCountry(): ?string
    {
        return $this->country;
    }

    public function setCountry(string $country): self
    {
        $this->country = $country;

        return $this;
    }

    public function getCity(): ?string
    {
        return $this->city;
    }

    public function setCity(string $city): self
    {
        $this->city = $city;

        return $this;
    }

    public function getZipCode(): ?string
    {
        return $this->zipCode;
    }

    public function setZipCode(string $zipCode): self
    {
        $this->zipCode = $zipCode;

        return $this;
    }
}
