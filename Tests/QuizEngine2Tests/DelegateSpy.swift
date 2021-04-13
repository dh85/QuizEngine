import Foundation
import QuizEngine2

class DelegateSpy: QuizDelegate {
    var questionsAsked = [String]()
    var answerCompletions = [(String) -> Void]()

    var completedQuizzes = [[(String, String)]]()

    func answer(for question: String, completion: @escaping (String) -> Void) {
        questionsAsked.append(question)
        answerCompletions.append(completion)
    }

    func didCompleteQuiz(withAnswers answers: [(question: String, answer: String)]) {
        completedQuizzes.append(answers)
    }
}
