import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weeklyasgflutter/models/budget.dart';
import 'nav.dart';

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _titleBudget = "";
  String _amountBudget = "";
  String _typeBudget = "Income";
  DateTime _dateBudget = DateTime.now();
  List<String> listBudget = ['Income', 'Expense'];
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add a new budget'),
      ),
      drawer: const MyDrawer(),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _titleBudget = value!;
                  });
                },
                onSaved: (String? value) {
                  _titleBudget = value!;
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Title cannot be empty!';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: InputDecoration(
                  labelText: 'Amount',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                onChanged: (String? value) {
                  setState(() {
                    _amountBudget = value!;
                  });
                },
                onSaved: (String? value) {
                  _amountBudget = value!;
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Amount cannot be empty!';
                  }
                  return null;
                },
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 40.0,
                    right: 40.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Center(
                          child: Column(
                            children: [
                              const Text('Choose type'),
                              DropdownButton(
                                value: _typeBudget,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: listBudget.map((String items) {
                                  return DropdownMenuItem(
                                    value: items,
                                    child: Text(items),
                                  );
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _typeBudget = newValue!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        height: 40,
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all(Colors.blue),
                          ),
                          onPressed: () {
                            showDatePicker(
                              context: context,
                              initialDate: _dateBudget,
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2045),
                            ).then((date) {
                              setState(() {
                                if (date != null) _dateBudget = date;
                              });
                            });
                          },
                          child: const Text(
                            'Choose date',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Center(
                child: SizedBox(
                  width: 100,
                  height: 50,
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Budget.listBudget.add(Budget(_titleBudget,
                            _amountBudget, _typeBudget, _dateBudget));
                        _titleController.clear();
                        _amountController.clear();
                        _titleBudget = "";
                        _amountBudget = "";
                        _dateBudget = DateTime.now();
                      }
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
