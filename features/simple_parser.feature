Feature: Specification of a text-based tree and the corresponding parser

  Scenario: A simple tree
    Given a simple tree
          
      +- A
      | +- B
      | +- C
      +- B

    Then  it should be converted to the following ruby data structure

          [
            [ {},
              "A",
              {},
              [ [ {},       # incoming edge properties
                  "B",      # node identifier
                  {},       # node properties
                  []        # array of children
                ],
                [ {},
                  "C",
                  {},
                  []
                ],
              ],
            ]
            [ {},
              "B",
              {},
              []
            ]
          ]
