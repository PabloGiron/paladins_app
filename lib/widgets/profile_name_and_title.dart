import 'package:flutter/material.dart';
import 'package:paladins_app/models/models.dart';

class ProfileNameAndTitle extends StatelessWidget {

  final List<GetPlayer> getPlayer;

  const ProfileNameAndTitle({Key? key, required this.getPlayer,   }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //final textTheme = Theme.of(context).textTheme;
    
    final size = MediaQuery.of(context).size;

    return Container(
      
      width: double.infinity,
      // height: size.height * 0.50,
      // color: Colors.grey,
      child: Column(
        children: [
          Container(
          margin: EdgeInsets.only(left: 75, right: 75, top: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(75),
              child: FadeInImage(
                width: 135,
                height: 135,
                placeholder: AssetImage('assets/no-image.jpg'), 
                image: NetworkImage(getPlayer[0].avatarImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 7.5),
          Text(getPlayer[0].hirezName, style: Theme.of(context).textTheme.headline1,  overflow: TextOverflow.ellipsis, maxLines: 2, ),
          Text(getPlayer[0].titleProfile, style: Theme.of(context).textTheme.headline2, overflow: TextOverflow.ellipsis, maxLines: 1),
          // Text(  )Theme.of(context).textTheme.headline6
        ],
      ),

    );
  }
}