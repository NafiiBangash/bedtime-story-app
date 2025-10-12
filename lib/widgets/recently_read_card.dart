import 'package:flutter/material.dart';

class RecentlyReadCard extends StatelessWidget {
  const RecentlyReadCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 133,
      width: 142,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage('assets/images/theme-1.png'),fit: BoxFit.cover)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 17,
                  width: 43,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(34),
                  ),
                  child: Center(child: Text('Jungle',style: TextStyle(fontSize: 8,color: Colors.white),)),
                ),
                Container(
                  height: 17,
                  width: 39,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(34),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/icons/time.png',height: 10,width: 10,fit: BoxFit.cover,),
                      SizedBox(width: 3.0,),
                      Text('0:20',style: TextStyle(color: Colors.white,fontSize: 8),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 45,
            width: double.infinity,
            padding: const EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/theme_footer.png')
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('The Giggle Garden',style: TextStyle(color: Colors.white,fontSize: 10),),
                SizedBox(height: 3,),
                Row(
                  children: [
                    Image.asset('assets/images/animoji.png',height: 20,width: 20,fit: BoxFit.cover,),
                    const SizedBox(width: 5,),
                    Text('The Giggle Garden',style: TextStyle(color: Colors.white,fontSize: 8),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
