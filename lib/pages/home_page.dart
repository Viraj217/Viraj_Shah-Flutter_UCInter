import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _signOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('Home Page',style: TextStyle(color: Colors.white60),),
        backgroundColor: Colors.black45,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => _signOut(context),
            tooltip: 'Logout',
          ),
        ],
      ),
      body:
        Card(
          margin: EdgeInsets.all(20.0),
          color: Colors.black26,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'The Dark Night',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8.0),
                Image.asset('assets/batman.jpg',
                  height: 150,),
                SizedBox(height: 8.0),
                const SizedBox(width: 25,),
                Row(
                  children: [
                    Text(
                      '2008',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.green[100],
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      '152 min',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.green[100],
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'PG-13',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.green[100],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.green[900],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Action',
                          style: TextStyle(
                            color: Colors.green[100],
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.green[900],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Crime',
                          style: TextStyle(
                            color: Colors.green[100],
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 30,
                      color: Colors.green[200],
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      '9.0/10',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      '(2.5M votes)',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.green[200],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.green[900],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Drama',
                          style: TextStyle(
                            color: Colors.green[100],
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 25,
                      color: Colors.green[200],
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      'Director: ',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.green[200],
                      ),
                    ),
                    Text(
                      'Christopher Nolan',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.green[50],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    Icon(
                      Icons.camera_roll_outlined,
                      size: 25,
                      color: Colors.green[200],
                    ),
                    SizedBox(width: 5.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Writers: ',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.green[200],
                          ),
                        ),
                        Text(
                          'Jonathan Nolan, Christopher Nolan',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green[50],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                    ),
                  ),
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    Icon(
                      Icons.language,
                      size: 25,
                      color: Colors.green[200],
                    ),
                    SizedBox(width: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Language:',
                          style: TextStyle(
                            color: Colors.green[200],
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          'English',
                          style: TextStyle(
                            color: Colors.green[50],
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 100,),
                    Icon(
                      Icons.map_rounded,
                      size: 25,
                      color: Colors.green[200],
                    ),
                    SizedBox(width: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text(
                            'Country: ',
                            style: TextStyle(
                              color: Colors.green[200],
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            'United States',
                            style: TextStyle(
                              color: Colors.green[50],
                              fontSize: 15,
                            ),
                          ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    Icon(
                      Icons.star_rate_outlined,
                      size: 25,
                      color: Colors.green[200],
                    ),
                    SizedBox(width: 8,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Awards:',
                          style: TextStyle(
                          color: Colors.green[100],
                          fontSize: 15,
                        ),
                        ),
                        Text(
                          'Won two Oscars',
                          style: TextStyle(
                            color: Colors.green[50],
                            fontSize: 15,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[300],
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Shuffle',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),


    );
  }
}
