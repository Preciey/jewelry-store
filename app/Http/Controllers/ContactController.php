<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ContactController extends Controller
{
    public function send(Request $request)
    {
        $request->validate([
            'name'    => 'required|string',
            'email'   => 'required|email',
            'message' => 'required|string',
        ]);

        Mail::raw(
            "Name: {$request->name}\nEmail: {$request->email}\n\nMessage:\n{$request->message}",
            function ($mail) {
                $mail->to('care@mimiestore.co.za')
                     ->subject('New Contact Form Message');
            }
        );

        return response()->json(['success' => true]);
    }
}
