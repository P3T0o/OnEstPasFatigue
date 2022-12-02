import React from "react";
import { getById } from "../api/get";
import { getQuestionsNbr } from "../api/get";

function QuestionNbr() {
    const [questionsNbr, setQuestionNbr] = React.useState(0);
    const [data, setData] = React.useState([]);
    const [id, setId] = React.useState(1);

    React.useEffect(() => {
        getQuestionsNbr().then((data) => {
            setQuestionNbr(data);
        });
    }, []);
    React.useEffect(() => {
        getById(id).then((data) => {
            setData(data);
        });
    }, []);

    return (
        <div className={"questionNbr"}>
            {data[0].question_id + "/" + questionsNbr}
        </div>
    );
}

export default QuestionNbr;