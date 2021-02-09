import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:reminder_app/application/body_measures/body_measures_form/body_measures_form_bloc.dart';
import 'package:reminder_app/application/body_measures/body_measures_watcher/body_measures_watcher_bloc.dart';
import 'package:reminder_app/domain/body_measures/body_measures.dart';
import 'package:reminder_app/domain/body_measures/i_body_measures_repository.dart';
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
    mockBodyMeasuresRepository =
        MocIBodyMeasuresRepository();
    bodyMeasuresFormBloc = BodyMeasuresFormBloc(mockBodyMeasuresRepository);
  });
  group('body measures bloc test', () {
    test('initial state', () {
      expect(
          bodyMeasuresFormBloc.state.bodyMeasures.bodyMeasuresHeight
              .getOrCrash(),
          0.0);
    });

    blocTest(
      'initial state of body measures form',
      build: () {

        return BodyMeasuresWatcherBloc(mockBodyMeasuresRepository);
      },
      act: (bloc) {
        bloc.add(BodyMeasuresWatcherEvent.bodyMeasureReceived(right([BodyMeasures.empty()].toImmutableList())));
      },
      expect: [

        BodyMeasuresWatcherState.loadSuccess([BodyMeasures.empty()].toImmutableList()),
        

      ],
    );
  });

  tearDown(() {
    bodyMeasuresFormBloc.close();
  });
}
