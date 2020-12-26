cheatsheet do
  title 'AppleScript (JXA)'
  docset_file_name 'applescript-jxa'

  introduction <<-EOM
    Variant of AppleScript with a JavaScript interface
  EOM

  category do
    id 'I/O'

    entry do
      name 'STDOUT'
      notes <<-EOM
        final expression is output to STDOUT

        ```javascript
        #! /usr/bin/env osascript -l JavaScript

        "hello, world";
        ```
      EOM
    end
  end
end
