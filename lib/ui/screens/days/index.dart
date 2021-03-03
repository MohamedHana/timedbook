// Packages
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Models
import 'package:timedbook/models/day/index.dart';

class DaysScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DaysScreenState();
}

class _DaysScreenState extends State<DaysScreen> {

  final List<DayType> items = [DayType('Workday'), DayType('Holiday'),DayType('Workday'), DayType('Holiday'),DayType('Workday'), DayType('Holiday'),DayType('Workday'), DayType('Holiday'),DayType('Workday'), DayType('Holiday'),DayType('Workday'), DayType('Holiday'),DayType('Workday'), DayType('Holiday'),DayType('Workday'), DayType('Holiday'),DayType('Workday'), DayType('Holiday'),DayType('Workday'), DayType('Holiday'),DayType('Workday'), DayType('Holiday'),DayType('Workday'), DayType('Holiday'),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Day types"),
        backgroundColor: Colors.grey[100],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 80),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListItem(item: items[index]);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AddDialog();
            }
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key key,
    @required this.item,
  }) : super(key: key);

  final item;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(item.name),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.edit,
                  color: Colors.grey[700],
                ),
                splashRadius: 20,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return EditDialog();
                    }
                  );
                },
              ),
              SizedBox(
                width: 0.0,
              ),
              IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.grey[700],
                ),
                splashRadius: 20,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return DeleteDialog();
                    }
                  );
                },
              ),
            ],
          )
        ],
      ),
      padding: EdgeInsets.all(16.0),
    );
  }
}

class EditDialog extends StatefulWidget {
  @override
  _EditDialogState createState() => _EditDialogState();
}

class _EditDialogState extends State<EditDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // title: Text('Day type'),
      content: TextFormField(
        // style: TextStyle(fontSize: 18),
        initialValue: 'Input text',
        maxLength: 15,
        autofocus: true,
        decoration: InputDecoration(
          // labelText: '',
          // errorText: 'Error message',
          isDense: true, // important line
          // contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[500], width: 1.0),
            // borderRadius: BorderRadius.circular(25.0),
          ),
          // suffixIcon: Icon(
          //   Icons.error,
          // ),
        ),
      ),
      actions: [
        FlatButton(
          textColor: Colors.black,
          onPressed: () {

          },
          child: Text('CANCEL'),
        ),
        FlatButton(
          textColor: Colors.green,
          onPressed: () {

          },
          child: Text('EDIT'),
        ),
      ],
    );
  }
}


class DeleteDialog extends StatefulWidget {
  @override
  _DeleteDialogState createState() => _DeleteDialogState();
}

class _DeleteDialogState extends State<DeleteDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // title: Text('Delete'),
      content: Text('Delete Workday type?'),
      actions: [
        FlatButton(
          textColor: Colors.black,
          onPressed: () {

          },
          child: Text('CANCEL'),
        ),
        FlatButton(
          textColor: Colors.red,
          onPressed: () {

          },
          child: Text('DELETE'),
        ),
      ],
    );
  }
}



class AddDialog extends StatefulWidget {
  @override
  _AddDialogState createState() => _AddDialogState();
}

class _AddDialogState extends State<AddDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('New day type'),
      content: TextFormField(
        // style: TextStyle(fontSize: 18),
        // initialValue: '',
        autofocus: true,
        maxLength: 15,
        decoration: InputDecoration(
          // labelText: '',
          // errorText: 'Error message',
          isDense: true, // important line
          // contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[500], width: 1.0),
            // borderRadius: BorderRadius.circular(25.0),
          ),
          // suffixIcon: Icon(
          //   Icons.error,
          // ),
        ),
      ),
      actions: [
        FlatButton(
          textColor: Colors.black,
          onPressed: () {

          },
          child: Text('CANCEL'),
        ),
        FlatButton(
          textColor: Colors.green,
          onPressed: () {

          },
          child: Text('ADD'),
        ),
      ],
    );
  }
}