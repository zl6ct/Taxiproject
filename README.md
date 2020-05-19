# Project overview
My project is a web app which could store information about the Uber or Lyft experience. The website includes two kinds of user, driver and passenger. In the first iteration, I update the login page. 
# Implement
Xampp PHPMYADMIN
Google Sign in for website API
Firebase
# Process
![image](https://github.com/zl6ct/Taxiproject/blob/master/images/index.png)
In the login page we can sign in as a driver or a passenger. You need to register if you are not a user. 
![image](https://github.com/zl6ct/Taxiproject/blob/master/images/register.png)
the data will be stored into the local database, which I used Xmapp to visualize it.
![image](https://github.com/zl6ct/Taxiproject/blob/master/images/database.png)
After I register, I can sign in
![image](https://github.com/zl6ct/Taxiproject/blob/master/images/login.png)
If you input wrong password, it will remind you and you need to sign in again.
![image](https://github.com/zl6ct/Taxiproject/blob/master/images/wrongpassword.png)
After we log in, we can see the homepage.
![image](https://github.com/zl6ct/Taxiproject/blob/master/images/homepage.png)
For a driver, add a new car or delet a car will change the information stored in database. Get average rate will get your average rates.
![image](https://github.com/zl6ct/Taxiproject/blob/master/images/carregister.png)
![image](https://github.com/zl6ct/Taxiproject/blob/master/images/delet.png)
![image](https://github.com/zl6ct/Taxiproject/blob/master/images/drivertable.png)
update information will change the driver tabel.

# Second iteration
But there will be a problem when I try to add the sign in with Google into this web.
![image](https://github.com/zl6ct/Taxiproject/blob/master/images/wrongurl.png)
Because the Google SSO sign in use the Oath2.0, which doesn't support domain including localhost. In order to integrate Google Sign-In into my web app, I have to move the web from local to firebase, which will give me a domain without localhost.
I need to create the project and move the html and css files into firebase
![image](https://github.com/zl6ct/Taxiproject/blob/master/images/firebasehomepage.png)
need to create a new database, and also php.
![image](https://github.com/zl6ct/Taxiproject/blob/master/images/code1.png)
I need to init the firebase, but windows user need to input "Set-ExecutionPolicy RemoteSigned -Scope Process" in cmd, which will let them login as administrator. After init the firebase, we can login and deploy it.
![image](https://github.com/zl6ct/Taxiproject/blob/master/images/code3.png)
Now we can add the google sign in 
![image](https://github.com/zl6ct/Taxiproject/blob/master/images/code4.png)
And we can choose account
![image](https://github.com/zl6ct/Taxiproject/blob/master/images/chooseaccount.png)


















