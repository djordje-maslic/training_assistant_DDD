import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:kt_dart/kt.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:provider/provider.dart';
import 'package:reminder_app/application/exercise/form_bloc/exercise_form_bloc.dart';
import 'package:reminder_app/domain/exercise/value_objects.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/build_context_x.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/duration_picker_providers.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/misc/set_presentation_classes.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/widgets/bad_reps_number_picker.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/widgets/distance_field_widget.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/widgets/good_reps_number_picker.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/widgets/reps_number_picker.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/widgets/set_duration_widget.dart';
import 'package:reminder_app/presentation/exercise/exercise_form/widgets/weights_field_widget.dart';

class SetListWidget extends StatelessWidget {
  const SetListWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocListener<ExerciseFormBloc, ExerciseFormState>(
      listenWhen: (p, c) =>
          p.exercise.setsList.isFull != c.exercise.setsList.isFull,
      listener: (context, state) {
        if (state.exercise.setsList.isFull) {
          FlushbarHelper.createError(
            message: 'You can only add ${SetsList.maxLength} sets!',
            duration: const Duration(seconds: 5),
          ).show(context);
        }
      },
      child: Consumer2<FormSets, HeightDurationPickerProvider>(
        builder: (context, formSets, heightPicker, child) {
          return ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              if (Provider.of<HeightDurationPickerProvider>(context)
                      .value
                      .length ==
                  index) {
                Provider.of<HeightDurationPickerProvider>(context)
                    .value
                    .insert(index,300.0);
              }

              return SetTile(
                index: index,
                key: ValueKey(context.formSets[index].id),
              );
            },
            itemCount: formSets.value.size,
          );
        },
      ),
    );
  }
}

class SetTile extends HookWidget {
  final int index;

  const SetTile({
    Key key,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final set = context.formSets.getOrElse(
      index,
      (_) => SetItemPrimitive.empty(),
    );
    final badRepsStateController = useTextEditingController(
      text: context.formSets[index].badReps.toString(),
    );
    final hoursFormFieldController = useTextEditingController(
        text:
            (context.formSets[index].setDuration / 3600000).floor().toString());
    final minFormFieldController = useTextEditingController(
        text:
            (((context.formSets[index].setDuration % 3600000) / 60000).floor())
                .toString());
    final secFormFieldController = useTextEditingController(
        text:
            ((((context.formSets[index].setDuration % 3600000) % 60000) / 1000)
                    .floor())
                .toString());


    final sizeOfDurationPicker = useState<double>(100.0);

    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      actionExtentRatio: 0.15,
      secondaryActions: [
        IconSlideAction(
          caption: 'Delete',
          icon: Icons.delete,
          color: Colors.red,
          onTap: () {
            context.formSets = context.formSets.minusElement(set);
            context.read<ExerciseFormBloc>().add(
                  ExerciseFormEvent.exerciseSetsChanged(context.formSets),
                );
          },
        )
      ],
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                right: 15,
                child: Text(
                  '${index + 1}.',
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              ListTile(
                // leading:

                title: Stack(

                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                const Text('reps:'),
                                SizedBox(
                                  width: 150,
                                  height: 70,
                                  child: RepsNumberPicker(
                                    index: index,
                                    set: set,
                                    badRepsStateController:
                                        badRepsStateController,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                const Text('weights:'),
                                SizedBox(
                                  width: 110,
                                  height: 70,
                                  child: WeightsFieldWidget(
                                      index: index, set: set),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                const Text('good:'),
                                SizedBox(
                                  width: 150,
                                  height: 70,
                                  child: GoodRepsNumberPicker(
                                    index: index,
                                    set: set,
                                    badRepsStateController:
                                        badRepsStateController,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                const Text('distance:'),
                                SizedBox(
                                  width: 110,
                                  height: 70,
                                  child: DistanceFieldWidget(
                                      index: index, set: set),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 50,
                            ),
                            Column(
                              children: [
                                const Text('bad:'),
                                SizedBox(
                                    width: 60,
                                    height: 60,
                                    child: BadRepsNumberPicker(
                                      index: index,
                                      set: set,
                                      badRepsStateController:
                                          badRepsStateController,
                                    )),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                Provider.of<HeightDurationPickerProvider>(
                                        context,
                                        listen: false)
                                    .value[index] = 0;



                                sizeOfDurationPicker.value == 0
                                    ? sizeOfDurationPicker.value = 100
                                    : sizeOfDurationPicker.value = 0;
                              },
                              child: SetDurationWidget(
                                index: index,
                                hoursFormFieldController:
                                    hoursFormFieldController,
                                minFormFieldController: minFormFieldController,
                                secFormFieldController: secFormFieldController,
                                set: set,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),

                    DurationPickerWidget(

                      index: index,
                      hoursFormFieldController: hoursFormFieldController,
                      minFormFieldController: minFormFieldController,
                      secFormFieldController: secFormFieldController,
                      set: set,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DurationPickerWidget extends HookWidget {
  final int index;
  final TextEditingController hoursFormFieldController;
  final TextEditingController minFormFieldController;
  final TextEditingController secFormFieldController;
  final SetItemPrimitive set;

  const DurationPickerWidget({
    Key key,
    @required this.index,
    @required this.hoursFormFieldController,
    @required this.minFormFieldController,
    @required this.secFormFieldController,
    @required this.set,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {


    final color = useState<Color>(Colors.grey);

        return AnimatedPositioned(
          duration: const Duration(milliseconds: 100),
          bottom:
              Provider.of<HeightDurationPickerProvider>(context).value[index],
          right:
              Provider.of<HeightDurationPickerProvider>(context).value[index],
          onEnd: () {
            color.value = Colors.grey;
          },
          child: Card(

            color: color.value,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 8, top: 8, right: 28, bottom: 28),
              child: Row(
                children: [
                  Column(
                    children: [
                      RaisedButton(
                        onPressed: () {
                        final   int sumDurationMilliseconds = (int.tryParse(
                               hoursFormFieldController.text) *
                               3600000) + (int.tryParse(
                               minFormFieldController.text) *
                               60000) + (int.tryParse(
                               secFormFieldController.text) *
                               1000);
                          context.formSets = context.formSets.map((setList) =>
                          setList == set
                              ? set.copyWith(
                              setDuration: sumDurationMilliseconds)
                              : setList);
                          context.read<ExerciseFormBloc>().add(
                              ExerciseFormEvent.exerciseSetsChanged(
                                  context.formSets));

                          Provider.of<HeightDurationPickerProvider>(context,
                                  listen: false)
                              .value[index] = 300.0;
                          color.value = Colors.white;


                        },
                        child: const Text(
                          'OK',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),

                    ],
                  ),
                  Column(children: [
                    const Text(
                      'h',
                      style: TextStyle(fontSize: 17),
                    ),
                    NumberPicker.integer(
                      textMapper: (value){if(int.tryParse(value) >9){return value;}else{return '0$value';}},
                      infiniteLoop: true,
                      listViewWidth: 70,
                      initialValue: int.tryParse(hoursFormFieldController.text),
                      minValue: 0,
                      maxValue: 23,
                      onChanged: (value) {
                        hoursFormFieldController.text = value.toString();
                        final   int sumDurationMilliseconds = (int.tryParse(
                            hoursFormFieldController.text) *
                            3600000) + (int.tryParse(
                            minFormFieldController.text) *
                            60000) + (int.tryParse(
                            secFormFieldController.text) *
                            1000);
                        context.formSets = context.formSets.map((setList) =>
                        setList == set
                            ? set.copyWith(
                            setDuration: sumDurationMilliseconds)
                            : setList);
                      },
                    ),
                  ]),
                  Column(children: [
                    const Text(
                      'min',
                      style: TextStyle(fontSize: 17),
                    ),
                    NumberPicker.integer(
                      textMapper: (value){if(int.tryParse(value) >9){return value;}else{return '0$value';}},
                      infiniteLoop: true,
                      listViewWidth: 70,
                      initialValue: int.tryParse(minFormFieldController.text),
                      minValue: 0,
                      maxValue: 59,
                      onChanged: (value) {
                        minFormFieldController.text = value.toString();
                        final   int sumDurationMilliseconds = (int.tryParse(
                            hoursFormFieldController.text) *
                            3600000) + (int.tryParse(
                            minFormFieldController.text) *
                            60000) + (int.tryParse(
                            secFormFieldController.text) *
                            1000);
                        context.formSets = context.formSets.map((setList) =>
                        setList == set
                            ? set.copyWith(
                            setDuration: sumDurationMilliseconds)
                            : setList);
                      },
                    ),
                  ]),
                  Column(
                    children: [
                      const Text(
                        'sec',
                        style: TextStyle(fontSize: 17),
                      ),
                      NumberPicker.integer(
                        textMapper: (value){if(int.tryParse(value) >9){return value;}else{return '0$value';}},
                        infiniteLoop: true,
                        listViewWidth: 70,
                        initialValue:
                            int.tryParse(secFormFieldController.text),
                        minValue: 0,
                        maxValue: 59,
                        onChanged: (value) {
                          secFormFieldController.text = value.toString();
                          final   int sumDurationMilliseconds = (int.tryParse(
                              hoursFormFieldController.text) *
                              3600000) + (int.tryParse(
                              minFormFieldController.text) *
                              60000) + (int.tryParse(
                              secFormFieldController.text) *
                              1000);
                          context.formSets = context.formSets.map((setList) =>
                          setList == set
                              ? set.copyWith(
                              setDuration: sumDurationMilliseconds)
                              : setList);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );

  }
}
