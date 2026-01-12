<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class PayFastController extends Controller
{
    public function initiate(Request $request)
    {
        // Validate customer details
        $request->validate([
            'name'  => 'required|string|max:255',
            'email' => 'required|email|max:255',
        ]);

        // Retrieve and recalculate cart total from session (adjust as needed)
        $cart = Session::get('cart', []); // Change 'cart' to your session key

        if (empty($cart)) {
            return response()->json(['error' => 'Your cart is empty.'], 400);
        }

        $total = collect($cart)->sum(fn($item) => $item['price'] * $item['quantity']);

        if ($total <= 0) {
            return response()->json(['error' => 'Invalid cart total.'], 400);
        }

        $amount = number_format($total, 2, '.', '');

        $data = [
            'merchant_id'    => config('services.payfast.merchant_id'),
            'merchant_key'   => config('services.payfast.merchant_key'),
            'return_url'     => config('services.payfast.return_url'),
            'cancel_url'     => config('services.payfast.cancel_url'),
            'notify_url'     => config('services.payfast.notify_url'),

            'name_first'     => $request->name,
            'email_address'  => $request->email,

            'm_payment_id'   => 'order_' . uniqid(),
            'amount'         => $amount,
            'item_name'      => 'Preciey Order Payment',
            'item_description' => 'Payment for items in cart',
        ];

        // Generate signature
        $passphrase = config('services.payfast.passphrase');

        $signatureString = http_build_query($data);

        if (!empty($passphrase)) {
            $signatureString .= '&passphrase=' . $passphrase; // No urlencode!
        }

        $data['signature'] = md5($signatureString);

        // Determine PayFast URL
        $payfastUrl = config('services.payfast.sandbox')
            ? 'https://sandbox.payfast.co.za/eng/process'
            : 'https://www.payfast.co.za/eng/process';

        return response()->json([
            'url'  => $payfastUrl,
            'data' => $data,
        ]);
    }
}
