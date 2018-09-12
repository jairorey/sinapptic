<?php

namespace Sinapptic\Http\Controllers\Auth;

use Sinapptic\users;
use Validator;
use Sinapptic\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\ThrottlesLogins;
use Illuminate\Foundation\Auth\AuthenticatesAndRegistersUsers;

class AuthController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Registration & Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users, as well as the
    | authentication of existing users. By default, this controller uses
    | a simple trait to add these behaviors. Why don't you explore it?
    |
    */

    use AuthenticatesAndRegistersUsers, ThrottlesLogins;

    /**
     * Create a new authentication controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest', ['except' => ['logout', 'getLogout']]);
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|max:255',
            'email' => 'required|email|max:255|unique:users',
            'password' => 'required|confirmed|min:6',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return user
     */
    protected function create(array $data)
    {
        return users::create([
            'email' => $data['email'],
            'identity' => $data['identity'],
            'name' => $data['name'], 
            'lastname' => $data['lastname'], 
            'nick' => $data['nick'],
            'rol_id' => $data['rol_id'], 
            'departamento_id' => $data['departamento_id'], 
            'titulo_id' => $data['titulo_id'], 
            'password' => bcrypt($data['password']),
            'born' => $data['born'], 
            'sex' => $data['sex'], 
            'address1' => $data['address1'], 
            'address2' => $data['address2'], 
            'cell' => $data['cell'], 
            'phone' => $data['phone'], 
            'email' => $data['email'], 
            'ext' => $data['ext'], 
            'active' => $data['active']
        ]);
    }

    public function logout()
    {
        \Auth::logout();
        return redirect()->route('home');
    }

    protected $loginPath = '/';
    protected $redirectPath = '/';

}
