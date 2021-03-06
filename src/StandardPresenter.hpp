#ifndef TOUCH_TYPING_STANDARD_PRESENTER_HPP
#define TOUCH_TYPING_STANDARD_PRESENTER_HPP

#include "Output.hpp"

#include <string>

namespace touch_typing {

struct OutputResult;

class StandardPresenter : public Output {
private:
    auto onGotInputText(const std::string& inputText) -> void override;
    auto onGotOutputResult(OutputResult result) -> void override;
};

} // namespace touch_typing

#endif // TOUCH_TYPING_STANDARD_PRESENTER_HPP
