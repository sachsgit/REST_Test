*** Keywords ***
Verify Keys
    [Documentation]     This keywords Verifies the JSON Keys
    [Arguments]  ${json} 
    ${keys}=  set variable   ${json.keys()}
    should contain  ${keys}  userId
    should contain  ${keys}  id
    should contain  ${keys}  title
    should contain  ${keys}  body
    Set Global Variable      ${json}

Verify ID
    [Documentation]     This keywords Verifies the Field Value
    [Arguments]  ${json}   ${field}    ${expectedValue}
    ${actualValue} =  Get From Dictionary  ${json}  ${field}
    Should Be True  ${actualValue} == ${expectedValue}