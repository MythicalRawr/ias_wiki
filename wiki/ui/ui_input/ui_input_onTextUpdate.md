## ![](images/client.png "CLIENT")![](images/callback.png "CALLBACK") [UIInput](ui_input):onTextUpdate

```lua
void UIInput:onTextUpdate(function callback(string newText))
```

> Sets a callback listener for when the user changes updates the input (deleting a character, writing.., etc)

### Arguments

| Type     | Name     | Description                          | Optional |
| -------- | -------- | ------------------------------------ | -------: |
| function | callback | Triggers when user updates the input |          |
| string   | newText  | The new input text                   |          |
