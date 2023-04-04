*** Variables ***

${form}                           xpath=//h5[text() = 'Forms']
${practiceForm}                   xpath=//span[contains(text(),'Practice Form')]
${inputFirstName}                 xpath=//input[@id="firstName"]
${inputLastName}                  xpath=//input[@id="lastName"]
${inputEmail}                     xpath=//input[@id="userEmail"]
${clickGender}                    xpath=//label[@for='gender-radio-1']
${inputMobile}                    xpath=//input[@id="userNumber"]
${selectdob}                      xpath=//input[@id='dateOfBirthInput']
${Wait Until Element Is Visible}  xpath=//div[@class='react-datepicker__month-container']
${selectday}                      xpath=//div[@class='react-datepicker__day react-datepicker__day--027'] 
${inputSubjects}                  xpath=//input[@id='subjectsInput']  
${clickHobbies}                   xpath=//label[@for='hobbies-checkbox-1']
${choosefile}                     xpath=//input[@id='uploadPicture']  
${inputAddress}                   xpath=//textarea[@placeholder="Current Address"]
${selectState}                    xpath=//div[contains(text(), 'Select State')]
${clickState}                     xpath=//div[contains(text(), 'NCR')]
${selectCity}                     xpath=//div[contains(text(), 'Select City')]
${clickCity}                      xpath=//div[contains(text(), 'Delhi')]
${submit}                         xpath://button[@type='submit']
${close}                          xpath://button[@id="closeLargeModal"]
#Get Text
${gtextName}      xpath=//td[text()='Student Name']/following-sibling::td
${gtextEmail}     xpath=//td[text()='Student Email']/following-sibling::td
${gtextGender}    xpath=//td[text()='Gender']/following-sibling::td
${gtextMobile}    xpath=//td[text()='Mobile']/following-sibling::td
${gtextDoB}       xpath=//td[text()='Date of Birth']/following-sibling::td
${gtextSubjects}  xpath=//td[text()='Subjects']/following-sibling::td
${gtextHobbies}   xpath=//td[text()='Hobbies']/following-sibling::td
${gtextPicture}   xpath=//td[text()='Picture']/following-sibling::td
${gtextAddress}   xpath=//td[text()='Address']/following-sibling::td
${gtextSaC}       xpath=//td[text()='State and City']/following-sibling::td
#Values
${studentName}    Nguyễn Châu
${studentEmail}   mchau3801@gmail.com
${Gender}         Male
${Mobile}         0395929398
${DateofBirth}    27 April,2023
${Subject}        English 
${Hobbies}        Sports
${Picture}        mchau.jpg
${Address}        155/5 Hoàng Văn Thụ
${State&City}     NCR Delhi
