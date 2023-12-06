<?php

namespace App\Http\Controllers;

use App\Classes\DummyLLM1;
use App\Classes\DummyLLM1Adapter;
use App\Classes\DummyLLM2;
use App\Classes\DummyLLM2Adapter;
use App\Models\Chat;
use App\Models\ChatHistory;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class ApiController extends Controller
{


    public function testProject()
    {
        return "api working";
    }

    public function saveUsers(Request $request)
    {

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = $request->password;
        $success = $user->save();
        if ($success) {
            return response()->json([
                'massage' => 'regestration successful',
                'data' => $user
            ], 200);
        } else {
            return response()->json([
                'massage' => 'an error occurred',
            ], 500);
        }
    }

    public function loginUser(Request $request)
    {
        $user = User::where('email', '=', $request->email)->first();
        if ($user) {
            if (Hash::check($request->password, $user->password)) {
                return response()->json([
                    'massage' => 'login successful',
                    'data' => $user
                ], 200);

            } else {
                return response()->json([
                    'massage' => 'wrong password'

                ], 200);
            }
        } else {
            return response()->json([
                'massage' => 'no user found'

            ], 200);
        }

    }


    public function sendMessage(Request $request)
    {
        $llm = $request->get('llm');

        if (!isset($llm)) {
            $llm = 1;
        }
        if ($llm == 1) {
            $dummyLLMAdapter = new DummyLLM1Adapter(new DummyLLM1());

        } else {
            $dummyLLMAdapter = new DummyLLM2Adapter(new DummyLLM2());

        }
        $user = User::where('id', '=', $request->id)->first();
        if ($user) {

            $response = $dummyLLMAdapter->getResponse($request->get('query'));

            $ch = new ChatHistory();
            $ch->userId = $request->id;
            $ch->query = $request->get('query');
            $ch->answer = $response;
            $ch->save();

            return response()->json([
                'response' => $response,
            ], 200);
        } else {
            return response()->json([
                'massage' => 'an error occurred'
            ], 500);
        }
    }

    public function anonymousMessage(Request $request)
    {

        $llm = $request->get('llm');

        if (!isset($llm)) {
            $llm = 1;
        }
        if ($llm == 1) {
            $dummyLLMAdapter = new DummyLLM1Adapter(new DummyLLM1());

        } else {
            $dummyLLMAdapter = new DummyLLM2Adapter(new DummyLLM2());

        }

        $response = $dummyLLMAdapter->getResponse($request->get('query'));
        if ($response) {
            return response()->json([
                'response' => $response,
            ], 200);
        } else {
            return response()->json([
                'massage' => 'an error occurred'
            ], 500);
        }
    }
    public function getChatHistory(Request $request)
    {
        $ch = ChatHistory::where('userId', '=', $request->id)->get();
        if ($ch) {
            return response()->json([
                'response' => $ch,
            ], 200);
        } else {
            return response()->json([
                'massage' => 'an error occurred'
            ], 500);
        }
    }
}
