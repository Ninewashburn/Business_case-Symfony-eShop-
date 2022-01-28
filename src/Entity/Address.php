<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use App\Repository\AddressRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;

#[ORM\Entity(repositoryClass: AddressRepository::class)]
#[ApiResource]
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

    #[ORM\ManyToMany(targetEntity: User::class, mappedBy: 'address')]
    private $users;

    #[ORM\OneToOne(mappedBy: 'address', targetEntity: Delivery::class, cascade: ['persist', 'remove'])]
    private $delivery;

    public function __construct()
    {
        $this->users = new ArrayCollection();
    }

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

    /**
     * @return Collection|User[]
     */
    public function getUsers(): Collection
    {
        return $this->users;
    }

    public function addUser(User $user): self
    {
        if (!$this->users->contains($user)) {
            $this->users[] = $user;
            $user->addAddress($this);
        }

        return $this;
    }

    public function removeUser(User $user): self
    {
        if ($this->users->removeElement($user)) {
            $user->removeAddress($this);
        }

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
            $this->delivery->setAddress(null);
        }

        // set the owning side of the relation if necessary
        if ($delivery !== null && $delivery->getAddress() !== $this) {
            $delivery->setAddress($this);
        }

        $this->delivery = $delivery;

        return $this;
    }
}
