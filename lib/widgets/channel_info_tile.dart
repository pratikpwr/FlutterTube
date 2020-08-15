import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/channel_models.dart';

class ChannelInfoTile extends StatelessWidget {
  final Channel _channel;

  ChannelInfoTile(this._channel);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(8),
        //padding: EdgeInsets.all(20.0),
        height: 350.0,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 1),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Image.network(
              _channel.bannerUrl,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 6),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 38.0,
                        backgroundImage:
                            NetworkImage(_channel.profilePictureUrl),
                      ),
                      SizedBox(width: 15.0),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _channel.title,
                              style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              '${_channel.subscriberCount} subscribers',
                              style: GoogleFonts.poppins(
                                color: Colors.grey[600],
                                fontSize: 14.0,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    _channel.description,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.poppins(),
                    maxLines: 7,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
