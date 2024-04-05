import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/IPODetailsData/IPODetails_Bloc.dart';
import '../blocs/IPODetailsData/IPODetails_events.dart';
import '../blocs/IPODetailsData/IPODetails_states.dart';
import '../model/IPODetails_Model.dart';
import '../repo/ipo_repo.dart';
import '../model/ipo_details.dart';

class IPODetailsPage extends StatefulWidget {
  @override
  _IPODetailsPageState createState() => _IPODetailsPageState();
}

class _IPODetailsPageState extends State<IPODetailsPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(title: const Text('IPODetails List')),
          body: _buildListIPO()
      );
  }

  Widget _buildListIPO() {
    return BlocProvider(
      create: (context) => IPOBloc(
        IPODetailsRepository(),
      )..add(GetIPODetailsListEvent()),
      child: BlocBuilder<IPOBloc, IPOState>(  // BlocBuilder builds widget when state is updated.
        builder: (context, state) {
          if (state is IPODetailsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is IPODetailsError) {
            return const Center(child:  Text("Error"));
          }
          if (state is IPODetailsLoaded) {
            List<IpoDeatilsDemo> userList = state.ipoList;
            return ListView.builder(
                itemCount: userList.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    child: Card(
                        color: Theme.of(context).primaryColor,
                        child: ListTile(
                            title: Text(
                              '${userList[index].name}  ${userList[index].code}',
                              style: const TextStyle(color: Colors.white),
                            ),

                            subtitle: Text(
                              '${userList[index].iD}',
                              style: const TextStyle(color: Colors.white),
                            ),
                  ),
                    ),
                  );
                });
          }

          return Container();
        },
      ),
    );
  }


}