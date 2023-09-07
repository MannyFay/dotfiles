<?php

declare(strict_types=1);

namespace Nvim\Lua\User\Core;

use Nvim\Lua\Core\Index as CoreIndex;

class Index extends CoreIndex
{
    public function __construct()
    {
        parent::__construct();
    }
}

function index(): Index
{
    return new Index();
}

function count(): int
{
    $a = 4;
    $b = 5;
    $sum = $a + $b;

    return $sum;
}

function sum(int $a, int $b): int
{
    return $a + $b;
}

