<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class IsSuperAndAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        {
            if(Auth::check()) {
                if(auth()->user()->role_id ==4 || 1){
                    return $next($request);
                }else{
                    // return redirect('backend/notfound')->with('error', __('You do not have permission to access this page') );
                    return redirect('/');
                }
            }else{
                return redirect('/login');
            }
        }
    }
}
