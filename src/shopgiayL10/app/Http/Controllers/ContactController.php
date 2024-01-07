<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function index()
    {
        $title = 'Liên Hệ'; // Đặt giá trị cho biến $title

        return view('contact', compact('title'));
    }
}
