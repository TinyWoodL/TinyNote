<?php

abstract class Person
{
    protected $weapon;

    public function __construct()
    {

    }

    public function setWeapon($weapon)
    {
        $this->weapon = $weapon;
    }

    public function attack()
    {
        $this->weapon->attack();
    }
}

interface Weapon
{
    public function attack();
}

class Sword implements Weapon
{
    public function attack()
    {
        echo "attack with sword";
    }
}

class Knight extends Person
{
    public function __construct()
    {

    }
}

$knight = new Knight();
$knight->setWeapon(new Sword());
$knight->attack();