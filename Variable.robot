*** Variables ***
${BSA}              xpath=//h5[text()='Book Store Application']
${Login}            xpath=//span[contains(text(),'Login')]
${NewUser}          xpath=//button[text()='New User'] 
${InputUsernameR}   xpath=//input[@id="userName"]
${InputPasswordR}   xpath=//input[@id="password"]
${ClickiFrame}      xpath=//iframe[@title='reCAPTCHA']
${BtRegister}       xpath=//button[@id='register']              
${InputFirstNameR}  xpath=//input[@id="firstname"]
${InputLastNameR}   xpath=//input[@id="lastname"]
${InputUsernameL}   xpath=//input[@placeholder="UserName"]
${InputPasswordL}   xpath=//input[@placeholder="Password"]
${BtLogin}          xpath=//button[@id="login"]
${BtLogout}         xpath=//button[contains(text(),'Log out')]
${Form}             xpath=//h5[text()='Forms']
${PracticeForm}     xpath=//span[contains(text(),'Practice Form')]
${InputFirstNameF}  xpath=//input[@id="firstName"]
${InputLastNameF}   xpath=//input[@id="lastName"]
${InputEmail}       xpath=//input[@id="userEmail"]
${ClickGender}      xpath=//label[@for='gender-radio-1']
${InputMobile}      xpath=//input[@id="userNumber"]
${Selectdob}        xpath=//input[@id='dateOfBirthInput']
${Wait}             xpath=//div[@class='react-datepicker__month-container']
${Selectday}        xpath=//div[@class="react-datepicker__day react-datepicker__day--003"]
${Selectmonth}      xpath=//select[@class="react-datepicker__month-select"]
${Selectyear}       xpath=//select[@class="react-datepicker__year-select"]
${InputSubjects}    xpath=//input[@id='subjectsInput']  
${ClickHobbies}     xpath=//label[@for='hobbies-checkbox-1']
${Choosefile}       xpath=//input[@id='uploadPicture']  
${InputAddress}     xpath=//textarea[@placeholder="Current Address"]
${SelectState}      xpath=//div[contains(text(), 'Select State')]
${ClickState}       xpath=//div[contains(text(), 'NCR')]
${SelectCity}       xpath=//div[contains(text(), 'Select City')]
${ClickCity}        xpath=//div[contains(text(), 'Delhi')]
${Submit}           xpath=//button[@type='submit']
${Close}            xpath=//button[@id="closeLargeModal"]
${MainPage}         xpath=//a[@href="https://demoqa.com"]
#Get Text
${GtextName}        xpath=//td[text()='Student Name']/following-sibling::td
${GtextEmail}       xpath=//td[text()='Student Email']/following-sibling::td
${GtextGender}      xpath=//td[text()='Gender']/following-sibling::td
${GtextMobile}      xpath=//td[text()='Mobile']/following-sibling::td
${GtextDoB}         xpath=//td[text()='Date of Birth']/following-sibling::td
${GtextSubjects}    xpath=//td[text()='Subjects']/following-sibling::td
${GtextHobbies}     xpath=//td[text()='Hobbies']/following-sibling::td
${GtextPicture}     xpath=//td[text()='Picture']/following-sibling::td
${GtextAddress}     xpath=//td[text()='Address']/following-sibling::td
${GtextSaC}         xpath=//td[text()='State and City']/following-sibling::td
${GtextUserName}    xpath=//label[@id="userName-value"]
# Values
${FName}            Nguyễn
${LName}            Châu
${StudentName}      ${FName}${SPACE}${LName}
${StudentEmail}     mchau3801@gmail.com
${Gender}           Male
${Mobile}           0395929398
${D}                03
${M}                August
${Y}                2001
${DoB}              03 August,2001
${Subject}          English 
${Hobbies}          Sports
${Picture}          mchau.jpg
${Address}          155/5 Hoàng Văn Thụ
${State&City}       NCR Delhi
${UserName}         mchau3855
${Password}         Mchau06@
${LinkPic}          D:/DEMOrobotframework/mchau.jpg
${ExAlertMessage}   User Register Successfully.
@{Fields}  ${GtextName} ${GtextGender} ${GtextMobile} ${GtextDoB} ${GtextSubjects} ${GtextHobbies} ${GtextPicture} ${GtextAddress} ${GtextSaC}
@{Values}  ${StudentName} ${Gender} ${Mobile} ${DoB} ${Subject} ${Hobbies} ${Picture} ${Address} ${State&City}