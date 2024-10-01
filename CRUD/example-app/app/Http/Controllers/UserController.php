<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Symfony\Component\HttpFoundation\Response;

class UserController extends Controller
{
     /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        $data = User::all();
        $response = [
            'success' => true,
            'message' => 'data list kejadian',
            'data' => $data,
        ];
        return response()->json($response, Response::HTTP_OK);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:60',
            'email' => 'required|max:249',
        ]);
        if ($validator->fails()) {
            $response = [
                'success' => 'false',
                'message' => $validator->errors(),
                'data' => '',
            ];
            return response()->json($response, Response::HTTP_UNPROCESSABLE_ENTITY);
        } else {
            $databaru = User::create([
                'name' => $request->name,
                'email' => $request->email,
            ]);
            $response = [
                'success' => 'true',
                'message' => 'data created',
                'data' => $databaru,
            ];
            return response()->json($response, Response::HTTP_OK);
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
        $data = User::find($id);
        $response = [
            'success' => true,
            'message' => 'data list kejadian',
            'data' => $data,
        ];
        return response()->json($response, Response::HTTP_OK);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
        $data=User::find($id);
        $validator = Validator::make($request->all(), [
            'name' => 'required|max:60',
            'email' => 'required|max:249',
        ]);
        if ($validator->fails()) {
            $response = [
                'success' => 'false',
                'message' => $validator->errors(),
                'data' => '',
            ];
            return response()->json($response, Response::HTTP_UNPROCESSABLE_ENTITY);
        } else {
            $data->update([
                'name' => $request->name,
                'email' => $request->email,
            ]);
            $response = [
                'success' => 'true',
                'message' => 'data created',
                'data' => $data,
            ];
            return response()->json($response, Response::HTTP_OK);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
        User::find($id)->delete();
        $response = [
            'success' => 'true',
            'message' => 'data deleted',
        ];
        return response()->json($response, Response::HTTP_OK);
    }
}
