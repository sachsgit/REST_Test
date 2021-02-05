*** Settings ***
Library  Collections
Library  requests
Resource  variables.robot
Resource  my_keywords.robot

*** Test Cases ***
GET First Post
    ${id} =	Set Variable	1
    ${result} =  get  ${URL}/posts/${id}
    Should Be Equal  ${result.status_code}  ${200}
    ${json} =  Set Variable  ${result.json()}
    Verify Keys  ${json}
    Verify ID  ${json}   id   ${id}
