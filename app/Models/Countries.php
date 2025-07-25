<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Countries extends Model
{
    use HasFactory;
    protected $fillable = [
        'countryCode',
        'countryName',
        'currencyCode',
        'fipsCode',
        'isoNumeric',
        'north',
        'south',
        'east',
        'west',
        'capital',
        'continentName',
        'continent',
        'languages',
        'isoAlpha3',
        'geonameId',
        'telephonePrefix',
    ];
}
