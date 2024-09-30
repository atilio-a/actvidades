<?php

namespace Illuminate\Foundation\Auth;

use Illuminate\Auth\Events\Registered;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

trait RegistersUsers
{
    use RedirectsUsers;

    /**
     * Show the application registration form.
     *
     * @return \Illuminate\View\View
     */
    public function showRegistrationForm()
    {
        return view('auth.register');
    }

    /**
     * Handle a registration request for the application.
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Http\JsonResponse
     */
    public function register(Request $request)
    {
        $this->validator($request->all())->validate();

        event(new Registered($user = $this->create($request->all())));

        // caambio saco del login
        // $this->guard()->login($user);

        if ($response = $this->registered($request, $user)) {
            return $response;
        }

        // return back()->withErrors(['email' => 'usuario PENDIENTE de activacion. Por Favor espere que el administrador active la cuenta en 24hs .']);
        return redirect()->route('login')->with('message', 'Cuenta creada pero usuario PENDIENTE de activacion. Por Favor espere que el administrador active la cuenta en 24hs .');

        return $request->wantsJson()
                    ? new JsonResponse([], 201)
                    : redirect($this->redirectPath());
    }

    /**
     * Get the guard to be used during registration.
     *
     * @return \Illuminate\Contracts\Auth\StatefulGuard
     */
    protected function guard()
    {
        return Auth::guard();
    }

    /**
     * The user has been registered.
     */
    protected function registered(Request $request, $user)
    {
    }
}
