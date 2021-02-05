*** Settings ***
Library  Collections
Library  requests
Resource  variables.robot
Resource  my_keywords.robot

*** Test Cases ***
Get Random Post
    ${randNum}=    Evaluate    random.sample(range(1, 101), 1)    random
    ${id}=    Set Variable   ${randNum}[0]
    Log To Console  The Random Number is ${id} 
    ${result} =  get  ${URL}/posts/${id}
    Should Be Equal  ${result.status_code}  ${200}
    ${json} =  Set Variable  ${result.json()}
    Verify Keys  ${json}
    Verify ID  ${json}   id   ${id}
