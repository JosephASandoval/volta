import { combineReducers } from "redux";
import sessionErrorsReducer from "./session_errors_reducer";
import review from "./review_errors_reducer";

const errorsReducer = combineReducers({
  sessionErrors: sessionErrorsReducer,
  review,
});

export default errorsReducer;
