Test the markov graph probability computation and drawing

  $ . "$TESTDIR"/setup
  $ aiohex transitions --session-id $(sid 1)
  Transitions for session 00000000-0000-0000-0000-000000000001:
  
  +---+                    +------+
  | 1 | ---  33 % --->     | exit |
  +---+                    +------+
  
                           +---+
        ---  33 % --->     | 3 |
                           +---+
  
                           +---+
        ---  33 % --->     | 2 |
                           +---+
  +---+                    +---+
  | 2 | --- 100 % --->     | 3 |
  +---+                    +---+
  
  
  +---+                    +---+
  | 3 | ---  50 % --->     | 1 |
  +---+                    +---+
  
  
  $ aiohex transitions
  Aggregated transitions:
  
  +---+                    +------+
  | 1 | ---  50 % --->     | exit |
  +---+                    +------+
  
                           +---+
        ---  25 % --->     | 3 |
                           +---+
  
                           +---+
        ---  25 % --->     | 2 |
                           +---+
  +---+                    +---+
  | 2 | ---  67 % --->     | 3 |
  +---+                    +---+
  
                           +---+
        ---  33 % --->     | 1 |
                           +---+
  
  +---+                    +---+
  | 3 | ---  40 % --->     | 1 |
  +---+                    +---+
  
                           +---+
        ---  20 % --->     | 2 |
                           +---+
  
