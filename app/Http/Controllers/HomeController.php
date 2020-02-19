<?php

namespace Framework\Http\Controllers;

use Illuminate\Http\Request;
use View;
use Session;
use Illuminate\Http\Response;
Use Framework\User;
use Framework\Http\Requests\UserRequest;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    /*
    * The function is used get user list
    */    
    public function getUserList(){
        $users = User::getUserList();
        $html = View::make('_user_list',['users' =>$users])->render();
        return response()->json(['html'=>$html]);
    }

    /*
    * The function is used view user detail 
    * @param $id user primary key in user table 
    */  
    public function editUser($id){
        $user = User::getUserById($id);
        if(!empty($user)){
            return view('update_form',['user'=>$user]);
        }
        abort(404);
    }

    /*
    * The function is used to delete user (Soft delete) 
    * @param $post conatains user id 
    */      
    public function deleteUser(Request $resquest){
        $post = $resquest->all();
        $result = User::deleteUser($post);
        if($result['success']){
            return response()->json(['success'=>true,'message'=>$result['message']]);
        }else{
            return response()->json(['success'=>false,'message'=>$result['message']]);
        }
        
    }

    /*
    * The function is used to update user detail
    * @param $post
    */ 
    public function updateUser(UserRequest $request){
        $post = $request->all();
        try{
            $result = User::updateUser($post);
            if($result['success']){
                Session::flash('success', true); 
                Session::flash('message', $result['message']); 
                return redirect('/home');
            }
        }catch (Exception $e) {
            Session::flash('error', true); 
            Session::flash('message', $e->getMessage()); 
            return redirect('/home');
        }    
    }

}
