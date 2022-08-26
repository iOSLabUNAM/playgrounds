import UIKit

protocol TransactionCompletedDelegate {
    func didFinishTransaction(value: String)
}

struct Action {
    var delegate: TransactionCompletedDelegate?
    
    func processSomething(_ value: String) {
        print("[Action](main) Star processing in background with: \(value)")
        DispatchQueue.global(qos: .background).async {
            let reversed = String(value.reversed())
            print("[Action](background) Calculation completed")
            DispatchQueue.main.async {
                print("[Action](main) call didFinish")
                self.didFinish(reversed)
            }
        }
        print("[Action](main) Finished processSomething method")
    }
    
    func didFinish(_ string: String) {
        puts("[Action] didFinish with: \(string)")
        delegate?.didFinishTransaction(value: string)
    }
}

struct ViewModel: TransactionCompletedDelegate {
    var action: Action
    
    init() {
        self.action = Action()
        self.action.delegate = self
    }
    
    func mainMethod(string: String){
        print("[ViewModel] Initiated mainMethod with: \(string)")
        action.processSomething("<\(string)>")
    }
    
    func didFinishTransaction(value: String) {
        print("[ViewModel] didFinishTransaction with: \(value)")
    }
}

let view = ViewModel()
view.mainMethod(string: "anita lava la tina")
