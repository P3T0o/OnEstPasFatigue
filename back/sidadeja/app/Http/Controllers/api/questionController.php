<?php

namespace App\Http\Controllers\api;

use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Question;
use App\Models\information;

class questionController extends Controller
{
    // Route qui retourne la question + les réponses liés a la question
    public function show(Question $question){

        $questionReponses = DB::table('questions')
                        ->where("questions.id", "$question->id")
                        ->join('reponses', 'questions.id', '=', 'reponses.question_id')
                        ->join('informations', 'questions.id', '=', 'informations.question_id')
                        ->select('reponses.id', 'reponse', 'question', 'info', 'reponses.question_id', 'reponse_bonne')
                        ->get();

        return response()->json($questionReponses);
    }

    // Route qui retourne le nbr de questions
    public function nbrQuestions(){

        $nbrQuestions = Question::all();

        return response()->json(count($nbrQuestions));
    }

}
