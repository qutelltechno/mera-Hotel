<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\ReservationPolicy;

class ReservationPolicyController extends Controller
{
    public function index()
    {
        $policies = ReservationPolicy::all();

        return view('frontend.reservation-policy', compact('policies'));
    }
}
