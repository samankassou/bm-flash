<?php

namespace App\Models;

use DB;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Product extends Model
{
    use HasFactory;

    /**
     * Scope a query to only include vip products.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeIsVip($query)
    {
        return $query->where('is_vip', 1);
    }

    /**
     * Scope a query to only include not vip products.
     *
     * @param  \Illuminate\Database\Eloquent\Builder  $query
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopeIsNotVip($query)
    {
        return $query->where('is_vip', 0);
    }

    protected $appends = ['averageRating'];

    public function getAverageRatingAttribute()
    {
        return $this->avgReview()->avg('rating') ?: '0';
    }


    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function seller()
    {
        return $this->belongsTo(Vendor::class, 'vendor_id');
    }

    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }

    public function gallery()
    {
        return $this->hasMany(ProductGallery::class);
    }

    public function specifications()
    {
        return $this->hasMany(ProductSpecification::class);
    }

    public function reviews()
    {
        return $this->hasMany(ProductReview::class);
    }


    public function variants()
    {
        return $this->hasMany(ProductVariant::class);
    }

    public function activeVariants()
    {
        return $this->hasMany(ProductVariant::class)->select(['id', 'name', 'product_id']);
    }



    public function variantItems()
    {
        return $this->hasMany(ProductVariantItem::class);
    }

    public function avgReview()
    {
        // return $this->hasMany(ProductReview::class)->where('status', 1)->select('*', DB::raw('AVG(rating) AS avg_rating'));
        return $this->hasMany(ProductReview::class)->where('status', 1);
    }
}
