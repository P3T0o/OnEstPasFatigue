export const getById = (id) => {
    return fetch(`http://127.0.0.1:8000/api/question/${id}`).then((res) => res.json());
};

export const getQuestionsNbr = () => {
    return fetch(`http://127.0.0.1:8000/api/questionsNbr`).then((res) => res.json());
};