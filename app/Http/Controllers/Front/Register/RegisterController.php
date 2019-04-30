<?php

namespace App\Http\Controllers\Front\Register;
use Auth;
use App\User;
use App\Userinfo;
use App\Resellercode;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Input;

class RegisterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if($user = Auth::user())
        {
            return redirect('/');
        }else{
            $register = 'register';
            return view('front.register.'.$register);
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        if (User::where('email', '=', $request->input("useremail"))->count() > 0) {
            echo 'emailexist';
        }else{
                $user = new User();
                $user->email=$request->input("useremail");
                $user->password=bcrypt($request->input("userpassword"));
                $user->user_role=2;
                $user->remember_token=$request->input("_token");
                $user->is_active=0;
                $user->created_at=date("Y-m-d H:i:s");
                $user->updated_at=date("Y-m-d H:i:s");
                $user->save();
                $userId = $user->id;
                echo 'useraddsucess';
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
