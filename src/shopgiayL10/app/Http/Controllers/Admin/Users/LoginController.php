<?php

namespace App\Http\Controllers\Admin\Users;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        return view('admin.users.login', [
            'title' => 'Đăng Nhập Hệ Thống'
        ]);
    }

    // request là nhận data gửi lên từ form
    public function store(Request $request)
    {
        $this -> validate($request, [
                'email' => 'required|email:filter',
                'password' => 'required'
        ]);

        if(Auth::attempt([
            // Kiểm tra thông tin người dùng có khớp với data không
            'email' => $request->input('email'),
            'password' => $request -> input('password')
        ], $request -> input('remember')))
        {
            return redirect()->route('admin');
        }

        session()->flash('error', 'email hoặc mật khẩu không chính xác');
        return redirect() -> back();
    }
}