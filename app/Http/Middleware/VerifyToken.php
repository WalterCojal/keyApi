<?php

namespace App\Http\Middleware;

use Illuminate\Support\Facades\Log;
use Closure;

class VerifyToken
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $token = $request->header('Authorization');
        Log::info($token);

        return $next($request);
    }
}
