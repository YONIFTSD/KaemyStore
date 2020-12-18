<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Category extends Model
{
    protected $table = 'category';
    protected $primaryKey = 'id_category';
    
    public static function GetCategory()
    {
        return DB::table('category')
            ->select('category.*')
            ->get();
        
    }
}
