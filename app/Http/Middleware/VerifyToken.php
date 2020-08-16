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

        if (strcmp($token, env('API_TOKEN', '')) === 0) {
            return $next($request);
        } else {
            abort(401, 'Unauthorized');
        }
    }
}
