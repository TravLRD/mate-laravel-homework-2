<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\BlogPost;
use App\Models\User;

class BlogPostSeeder extends Seeder
{
  /**
   * Run the database seeds.
   *
   * @return void
   */
  public function run()
  {
    // User ID for the blog posts
    $userId = 1;

    // Blog post data
    $blogPosts = [
      [
        'title' => 'Indulge in the Sweet Delights of Chocolate Truffles',
        'content' => 'Chocolate truffles are a heavenly treat that melts in your mouth. Learn about different flavors and recipes to enjoy these luxurious confections.',
        'user_id' => 1,
      ],
      [
        'title' => 'The Art of Perfecting French Macarons',
        'content' => 'Discover the secrets behind creating the perfect French macarons. From tips on achieving the delicate shells to filling ideas, elevate your baking skills.',
        'user_id' => 1,
      ],
      [
        'title' => 'Decadent Cakes for Special Occasions',
        'content' => 'Celebrate your special moments with delectable cakes that are a feast for the eyes and taste buds. Explore various cake designs and flavors for every occasion.',
        'user_id' => 1,
      ],
      [
        'title' => 'Exploring the World of Gourmet Cupcakes',
        'content' => 'Delve into the world of gourmet cupcakes and experience a burst of flavors. Discover unique cupcake recipes and decorating techniques to impress your guests.',
        'user_id' => 1,
      ],
      [
        'title' => 'Delicious Homemade Ice Cream Recipes',
        'content' => 'Beat the heat with homemade ice cream that is creamy and delicious. Learn how to make classic and innovative flavors using simple ingredients and techniques.',
        'user_id' => 2,
      ],
    ];

    // Create blog posts
    foreach ($blogPosts as $post) {
      BlogPost::create($post);
    }
  }
}
