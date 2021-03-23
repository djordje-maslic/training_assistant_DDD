import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:reminder_app/application/body_measures/body_measures_actor/body_measures_actor_bloc.dart';
import 'package:reminder_app/application/body_measures/body_measures_form/body_measures_form_bloc.dart';
import 'package:reminder_app/application/body_measures/body_measures_watcher/body_measures_watcher_bloc.dart';
import 'package:reminder_app/domain/body_measures/body_measures.dart';
import 'package:reminder_app/domain/body_measures/body_measures_failures.dart';
import 'package:reminder_app/domain/body_measures/i_body_measures_repository.dart';
import 'package:reminder_app/domain/body_measures/value_objects.dart';
import 'package:reminder_app/domain/core/value_objects.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';

class MockBodyMeasures extends Mock implements BodyMeasures {}

// Create mock object.

class MocIBodyMeasuresRepository extends Mock
    implements IBodyMeasuresRepository {}

void main() {
  MockBodyMeasures mockBodyMeasures;
  MocIBodyMeasuresRepository mockBodyMeasuresRepository;
  BodyMeasuresFormBloc bodyMeasuresFormBloc;

  setUp(() {
    mockBodyMeasures = MockBodyMeasures();
    mockBodyMeasuresRepository = MocIBodyMeasuresRepository();
    bodyMeasuresFormBloc = BodyMeasuresFormBloc(mockBodyMeasuresRepository);
  });
  group('body measures bloc test', () {
    test(
      'initial state',
      () {
        bodyMeasuresFormBloc
            .add(const BodyMeasuresFormEvent.bodyMeasuresWeightChanged(200));
        expect(
            bodyMeasuresFormBloc.state.bodyMeasures.bodyMeasuresHeight
                .getOrCrash(),
            0.0);
        expect(
            bodyMeasuresFormBloc.state.bodyMeasures.bodyMeasuresWeight
                .getOrCrash(),
            0);
      },
    );

    blocTest(
      'load success body measures watcher bloc',
      build: () {
        return BodyMeasuresWatcherBloc(mockBodyMeasuresRepository);
      },
      act: (bloc) {
        bloc.add(
          BodyMeasuresWatcherEvent.bodyMeasureReceived(
            right(
              [
                BodyMeasures(
                  id: UniqueId.withUniqueString('123'),
                  userId: UniqueId.withUniqueString('123'),
                  bodyMeasuresDate: MeasuresDate(123),
                  bodyMeasuresWeight: UserWeight(100),
                  bodyMeasuresHeight: UserHeight(100),
                ),
              ].toImmutableList(),
            ),
          ),
        );
      },
      expect: [
        BodyMeasuresWatcherState.loadSuccess(
          [
            BodyMeasures(
              id: UniqueId.withUniqueString('123'),
              userId: UniqueId.withUniqueString('123'),
              bodyMeasuresDate: MeasuresDate(123),
              bodyMeasuresWeight: UserWeight(100),
              bodyMeasuresHeight: UserHeight(100),
            ),
          ].toImmutableList(),
        ),
      ],
    );
  });
  blocTest(
    ' body measures watcher bloc',
    build: () {
      return BodyMeasuresWatcherBloc(mockBodyMeasuresRepository);
    },
    act: (bloc) {
      bloc.add(const BodyMeasuresWatcherEvent.watchAllStarted());
    },
    expect: [
      const BodyMeasuresWatcherState.loadInProgress(),
    ],
  );

  final BodyMeasures bodyMeasures = BodyMeasures(
    id: UniqueId.withUniqueString('1234567'),
    userId: UniqueId.withUniqueString('1234567'),
    bodyMeasuresDate: MeasuresDate(1234567),
    bodyMeasuresWeight: UserWeight(80),
    bodyMeasuresHeight: UserHeight(180),
  );

  blocTest('body measures actor test delete body measures',
      build: () => BodyMeasuresActorBloc(mockBodyMeasuresRepository),
      act: (bloc) {
        bloc.add(BodyMeasuresActorEvent.deleted(bodyMeasures));
      },
      expect: [
        const BodyMeasuresActorState.actionInProgress(),
      ]);

  blocTest('body measures actor delete failure test', build: () {
    when(mockBodyMeasuresRepository.delete(any))
        .thenAnswer((_) async => left(const BodyMeasuresFailure.unexpected()));

    return BodyMeasuresActorBloc(mockBodyMeasuresRepository);
  }, act: (bloc) {
    bloc.add(BodyMeasuresActorEvent.deleted(BodyMeasures.empty()));
  }, expect: [
    const BodyMeasuresActorState.actionInProgress(),
    const BodyMeasuresActorState.deleteFailure(
        BodyMeasuresFailure.unexpected()),
  ]);

  blocTest('body measures actor test delete success', build: () {
    when(mockBodyMeasuresRepository.delete(any))
        .thenAnswer((_) async => right(unit));

    return BodyMeasuresActorBloc(mockBodyMeasuresRepository);
  }, act: (bloc) {
    bloc.add(BodyMeasuresActorEvent.deleted(BodyMeasures.empty()));
  }, expect: [
    const BodyMeasuresActorState.actionInProgress(),
    const BodyMeasuresActorState.deleteSuccess(),
  ]);

  blocTest('body measures form bloc test input', build: () {
    when(mockBodyMeasuresRepository.update(bodyMeasures))
        .thenAnswer((_) async => right(unit));

    return BodyMeasuresFormBloc(mockBodyMeasuresRepository);
  }, act: (bloc) {
    bloc.add( BodyMeasuresFormEvent.initialized(optionOf(bodyMeasures)));
    bloc.add(const BodyMeasuresFormEvent.bodyMeasuresHeightChanged(100));
    bloc.add(const BodyMeasuresFormEvent.bodyMeasuresDateChanged(12345678));
    bloc.add(const BodyMeasuresFormEvent.bodyMeasuresWeightChanged(90));
    bloc.add(const BodyMeasuresFormEvent.bodyMeasuresSaved());
  }, expect: [
    BodyMeasuresFormState(
        bodyMeasures: BodyMeasures(
          id: UniqueId.withUniqueString('1234567'),
          userId: UniqueId.withUniqueString('1234567'),
          bodyMeasuresDate: MeasuresDate(1234567),
          bodyMeasuresWeight: UserWeight(80),
          bodyMeasuresHeight: UserHeight(180),
        ),
        showErrorMessages: false,
        isEditing: true,
        isSaving: false,
        saveFailureOrSuccessOption: none()),
    BodyMeasuresFormState(
        bodyMeasures: BodyMeasures(
          id: UniqueId.withUniqueString('1234567'),
          userId: UniqueId.withUniqueString('1234567'),
          bodyMeasuresDate: MeasuresDate(1234567),
          bodyMeasuresWeight: UserWeight(80),
          bodyMeasuresHeight: UserHeight(100),
        ),
        showErrorMessages: false,
        isEditing: true,
        isSaving: false,
        saveFailureOrSuccessOption: none()),
    BodyMeasuresFormState(
        bodyMeasures: BodyMeasures(
          id: UniqueId.withUniqueString('1234567'),
          userId: UniqueId.withUniqueString('1234567'),
          bodyMeasuresDate: MeasuresDate(12345678),
          bodyMeasuresWeight: UserWeight(80),
          bodyMeasuresHeight: UserHeight(100),
        ),
        showErrorMessages: false,
        isEditing: true,
        isSaving: false,
        saveFailureOrSuccessOption: none()),
    BodyMeasuresFormState(
        bodyMeasures: BodyMeasures(
          id: UniqueId.withUniqueString('1234567'),
          userId: UniqueId.withUniqueString('1234567'),
          bodyMeasuresDate: MeasuresDate(12345678),
          bodyMeasuresWeight: UserWeight(90),
          bodyMeasuresHeight: UserHeight(100),
        ),
        showErrorMessages: false,
        isEditing: true,
        isSaving: false,
        saveFailureOrSuccessOption: none()),

  ]);

  tearDown(() {
    bodyMeasuresFormBloc.close();
  });
}
