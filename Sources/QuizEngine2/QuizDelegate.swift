import Foundation

public protocol QuizDelegate {
    associatedtype Question
    associatedtype Answer

    typealias AnswerCallback = (Answer) -> Void
    func answer(for question: Question, completion: @escaping AnswerCallback)
    func didCompleteQuiz(withAnswers: [(question: Question, answer: Answer)])
}
