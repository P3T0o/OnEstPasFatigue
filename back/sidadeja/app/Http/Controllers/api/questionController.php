<?php

namespace App\Http\Controllers\api;

use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Question;

class questionController extends Controller
{
    // Route qui retourne la question + les réponses liés a la question
    public function show(Question $question){

        $questionReponses = DB::table('questions')
                        ->join('reponses', 'questions.id', '=', 'reponses.question_id')
                        ->select('reponse', 'question', 'question_id', 'reponses.id')
                        ->get();

        return response()->json($questionReponses);
    }

}
