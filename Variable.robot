*** Variables ***
${BookStoreApplication}  xpath=//h5[text()='Book Store Application']
${login}                 xpath=//span[contains(text(),'Login')]
${NewUser}               xpath=//button[text()='New User'] 
${inputUsernameR}        xpath=//input[@id="userName"]
${inputPasswordR}        xpath=//input[@id="password"]
${clickiFrame}           xpath=//iframe[@title='reCAPTCHA']
${BtRegister}            xpath=//button[@id='register']              
${inputFirstNameR}       xpath=//input[@id="firstname"]
${inputLastNameR}        xpath=//input[@id="lastname"]
${inputUsernameL}        xpath=//input[@placeholder="UserName"]
${inputPasswordL}        xpath=//input[@placeholder="Password"]
${BtLogin}               xpath=//button[@id="login"]
${BtLogout}              xpath=//button[contains(text(), 'Log out')]
${form}             xpath=//h5[text()='Forms']
${practiceForm}     xpath=//span[contains(text(),'Practice Form')]
${inputFirstNameF}  xpath=//input[@id="firstName"]
${inputLastNameF}   xpath=//input[@id="lastName"]
${inputEmail}       xpath=//input[@id="userEmail"]
${clickGender}      xpath=//label[@for='gender-radio-1']
${inputMobile}      xpath=//input[@id="userNumber"]
${selectdob}        xpath=//input[@id='dateOfBirthInput']
${WUEIV}            xpath=//div[@class='react-datepicker__month-container']
${selectday}        xpath=//div[@class='react-datepicker__day react-datepicker__day--003']
${selectmonth}      xpath=//select[@class="react-datepicker__month-select"]
${selectyear}       xpath=//select[@class="react-datepicker__year-select"]
${inputSubjects}    xpath=//input[@id='subjectsInput']  
${clickHobbies}     xpath=//label[@for='hobbies-checkbox-1']
${choosefile}       xpath=//input[@id='uploadPicture']  
${inputAddress}     xpath=//textarea[@placeholder="Current Address"]
${selectState}      xpath=//div[contains(text(), 'Select State')]
${clickState}       xpath=//div[contains(text(), 'NCR')]
${selectCity}       xpath=//div[contains(text(), 'Select City')]
${clickCity}        xpath=//div[contains(text(), 'Delhi')]
${submit}           xpath=//button[@type='submit']
${close}            xpath=//button[@id="closeLargeModal"]
${mainPage}         xpath=//a[@href="https://demoqa.com"]
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
${gtextUserName}  xpath=//label[@id="userName-value"]
# Values
${studentName}     Nguyễn Châu
${studentEmail}    mchau3801@gmail.com
${Gender}          Male
${Mobile}          0395929398
${DateofBirth}     03 August,2001
${Subject}         English 
${Hobbies}         Sports
${Picture}         mchau.jpg
${Address}         155/5 Hoàng Văn Thụ
${State&City}      NCR Delhi
${userName}        mchau3802
${Password}        Mchau06@
${exAlertMessage}  User Register Successfully.