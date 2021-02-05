*** Settings ***
Library  Collections
Library  requests
Library  OperatingSystem
Resource  variables.robot
Resource  my_keywords.robot

*** Test Cases ***
GET All Posts
    ${result} =  get  ${URL}/posts/
    Should Be Equal  ${result.status_code}  ${200}
    ${actualJSON} =  Set Variable  ${result.json()}
    ${fileData}=   Get file   ${allPostsFile}
    ${objJSON}=   Evaluate   json.loads(r'''${fileData}''')   json
    Should Be Equal As Strings    ${objJSON}    ${actualJSON}
