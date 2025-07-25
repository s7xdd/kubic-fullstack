<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Mail;

class AuthController extends Controller
{
    public function showRegistrationForm()
    {
        $lang = getActiveLanguage();
        return view('auth.register', ['lang' => $lang]);
    }

    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'phone' => ['required', 'regex:/^[0-9]+$/', 'min:10', 'max:15', 'unique:users'],
            'password' => ['required', 'string', 'min:8'],
            'password_confirmation' => ['required_with:password', 'same:password'],
        ]);

        if ($validator->fails()) {
            return redirect('register')
                ->withErrors($validator)
                ->withInput();
        }

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'user_type' => 'customer',
            'password' => Hash::make($request->password),
        ]);

        $details = [
            'name' => $request->name,
            'subject' => 'Registration Successful - Welcome to ' . env('APP_NAME') . '!',
            'body' => " <p> Congratulations and welcome to " . env('APP_NAME') . "! We are delighted to inform you that your registration has been successfully completed. Thank you for choosing us as your trusted partner.</p><br>

            <p>We are committed to providing you with exceptional service and ensuring that your online shopping experience is smooth and hassle-free. If you have any questions or need assistance, our customer support team is here to help.</p><br>
            <p>Thank you for choosing " . env('APP_NAME') . ". </p>"
        ];

        \Mail::to($request->email)->queue(new \App\Mail\SendMail($details));

        Auth::login($user);

        return redirect()->route('home')->with('success', 'Welcome! Your registration was successful. Start shopping with us!');  // Redirect to home page after registration
    }

    public function showLoginForm()
    {
        $lang = getActiveLanguage();
        return view('auth.login', ['lang' => $lang]);
    }

    public function login(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $user = User::where('email', $credentials['email'])
            ->where('user_type', 'customer')
            ->first();

        if (!$user || $user->password === null) {
            return redirect('login')->withErrors(['email' => 'Invalid credentials'])->withInput();
        }

        $remember = $request->has('remember');
        if (Auth::attempt($credentials, $remember)) {
            if (Auth::user()->user_type === 'customer') {
                return redirect()->route('projects.index')->with('success', 'Access successful');
            } else {
                Auth::logout();
                return back()->with('error', 'Access restricted to customers only.');
            }
        }

        return redirect('login')->withErrors(['email' => 'Invalid credentials'])->withInput();
    }

    public function logout()
    {
        Auth::logout();
        return redirect()->route('login');
    }
}
