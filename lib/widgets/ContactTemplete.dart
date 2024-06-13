import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactTemeplete extends StatefulWidget {
   String tel = '';
  String mobile = '';
  String website = '';
  String email = '';

   ContactTemeplete({super.key,this.tel = '',this.mobile='',this.website='',this.email=''});

  @override
  State<ContactTemeplete> createState() => _ContactTemepleteState();
}

class _ContactTemepleteState extends State<ContactTemeplete> {
  @override
  Widget build(BuildContext context) {
  String tel = widget.tel;
  String mobile = widget.mobile;
  String website = widget.website;
  String email = widget.email;
  
    return  Column(
      children: [
        //  Text('hellp'),
        //  if(tel!='')
              Row(children: [
                    InkWell( // Wrap the content in an InkWell
                                            onTap: () {
                                              launch('tel:$tel'); // Launch email app with recipient
                                            },
                                            child: Row(
                           children: [
                              Container(
                               // width: 20,
                               // height: 20,
                               decoration: BoxDecoration(
                         
                             color: Color.fromARGB(255, 255, 255, 255),
                                            
                                            borderRadius:BorderRadius.circular(999), // Set border width
                                            
                                              ),
                               child: TextButton(child: Text('Call'),onPressed: ()=>{},)),
                                SizedBox(width: 10,),
                             Text(email,softWrap: true,overflow: TextOverflow.ellipsis,style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                           ],
                         ),)
              ],),
         if(widget.mobile!='')
          Row(children: [

          ],),
          if(widget.website!='')
            Row(children: [

            ],),
          if(widget.email!='')
               Row(children: [

               ],)
      ],
    );
  }
}