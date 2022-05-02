import 'package:flutter/material.dart';

class FilaList extends StatelessWidget {
  FilaList({Key? key}) : super(key: key);

  final double? headingRowHeight = 1000;
  final _verticalDivider = const VerticalDivider(
    color: Color.fromARGB(38, 0, 0, 0),
    thickness: 1,
  );
  final _truckImage = SizedBox(
    width: 30.00,
    height: 30.00,
    child: Image.asset('assets/images/truck.png'),
  );
  final _bitremImage = SizedBox(
    width: 50.00,
    height: 50.00,
    child: Image.asset('assets/images/bitrem.png'),
  );
  final _trucImage = SizedBox(
    width: 30.00,
    height: 30.00,
    child: Image.asset('assets/images/truc.png'),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: DataTable(
          headingRowColor: MaterialStateProperty.resolveWith<Color?>(
              (Set<MaterialState> states) {
            return Color.fromARGB(156, 202, 190, 190); // Use the default value.
          }),
          columnSpacing: 50,
          dataRowHeight: 110,
          showBottomBorder: true,
          columns: [
            const DataColumn(
                label: Text(
              'Número',
              style: TextStyle(
                color: Colors.black,
              ),
            )),
            DataColumn(label: _verticalDivider),
            const DataColumn(
                label: Text(
              'Tipo',
              style: TextStyle(
                color: Colors.black,
              ),
            )),
            DataColumn(label: _verticalDivider),
            const DataColumn(
                label: Text(
              'Data/Time',
              style: TextStyle(
                color: Colors.black,
              ),
            )),
            DataColumn(label: _verticalDivider),
            const DataColumn(
                label: Text(
              'Vez Cooperado',
              style: TextStyle(
                color: Colors.black,
              ),
            )),
            DataColumn(label: _verticalDivider),
            const DataColumn(
                label: Text(
              'Datalhes do Veículo',
              style: TextStyle(
                color: Colors.black,
              ),
            )),
          ],
          rows: [
            DataRow(cells: [
              const DataCell(Text('001',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              DataCell(_trucImage),
              DataCell(_verticalDivider),
              const DataCell(Text('22/03/2022 \n 18:42:55',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'PAULO ROBERTO POA 1 \n Marcou a vez na Matriz \n AC AP AM BA CE MA PA PE PI RO TO',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'GVQ6758 - CVB (SCANIA - R114 GA 4X2NZ 380 ANO:2007) \n Engata com BF - FNK-2C47 / BT - ENM-6F79',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
            ]),
            DataRow(cells: [
              const DataCell(Text('002',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              DataCell(_trucImage),
              DataCell(_verticalDivider),
              const DataCell(Text('14/03/2022 \n 10:17:31',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'JAN XIMENES NOLASCO 1 \n Marcou a vez na Matriz \n AC AL AP BA CE MA PA PE PI RN RO RR TO',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'NEI3084 - CVB (SCANIA - R114 GA 4X2NZ 380 ANO:2005) \n Engata com BF - ODS-0G14 / BT - FUQ-9B33',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
            ]),
            DataRow(cells: [
              const DataCell(Text('003',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              DataCell(_trucImage),
              DataCell(_verticalDivider),
              const DataCell(Text('15/03/2022 \n 14:27:59',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'KIRILL CARRASQUEIRA SOUTO 1 \n Marcou a vez na Matriz \n AC AL AP BA CE MA PA PB PE PI RN RO RR SC TO',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'JXZ6826 - CVB (SCANIA - R114 GA 4X2NZ 380 ANO:2008) \n Engata com BF - ESS-8368 / BT - EOE576',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
            ]),
            DataRow(cells: [
              const DataCell(Text('001',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              DataCell(_bitremImage),
              DataCell(_verticalDivider),
              const DataCell(Text('17/03/2022 \n 19:13:29',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'LÍCIA MARCONDES INFANTE 1 \n Marcou a vez na Matriz \n AL AP BA CE MA PB PE PI RO RR TO',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'JXZ6826 - CVB (SCANIA - R114 GA 4X2NZ 380 ANO:2008) \n Engata com BF - ESS-8368 / BT - EOE576',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
            ]),
            DataRow(cells: [
              const DataCell(Text('001',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              DataCell(_truckImage),
              DataCell(_verticalDivider),
              const DataCell(Text('16/03/2022 \n 14:01:11',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'ENOQUE RESENDE QUINTELA 1 \n Marcou a vez na Matriz \n AC AL BA CE PA PB PI RN  RR SC TO',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'MZF9269 - CVB (SCANIA - G420 420 A4X27 ANO:2011) \n Engata com BF - FUH-0G27 / BT - FUE-5F27 \n Data Chegada: 19/03',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
            ]),
            DataRow(cells: [
              const DataCell(Text('004',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              DataCell(_trucImage),
              DataCell(_verticalDivider),
              const DataCell(Text('15/03/2022 \n 17:09:43',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'FILIPE LAGOS GOULART 1 \n Marcou a vez na Matriz \n AL BA CE MA PA PB PE PI RN RO RR',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'KVN8860 - TS (VOLVO - G420 420 A4X2 ANO:2011) \n Engata com BF - ESS-8368 / BT - EEOE-5766',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
            ]),
            DataRow(cells: [
              const DataCell(Text('005',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              DataCell(_trucImage),
              DataCell(_verticalDivider),
              const DataCell(Text('17/03/2022 \n 08:05:53',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'GELSON LUCAS CHOUSA 1 \n Marcou a vez na Matriz \n AC AL AP CE MA PA PB PI RN RO TO',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'GVQ6758 - CVB (SCANIA - R114 GA 4X2NZ 380 ANO:2007) \n Engata com BF - FNK-2C47 / BT - ENM-6F79',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
            ]),
            DataRow(cells: [
              const DataCell(Text('006',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              DataCell(_trucImage),
              DataCell(_verticalDivider),
              const DataCell(Text('17/03/2022 \n 12:01:26',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'ALCINO VALADIM PAZ 1 \n Marcou a vez na Matriz \n AC AL AP BA CE MA PA PB PE PI RN RO RR SC',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'NEI3084 - CVB (SCANIA - R114 GA 4X2NZ 380 ANO:2005) \n Engata com BF - ODS-0G14 / BT - FUQ-9B33',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
            ]),
            DataRow(cells: [
              const DataCell(Text('002',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              DataCell(_bitremImage),
              DataCell(_verticalDivider),
              const DataCell(Text('18/03/2022 \n 18:37:58',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'ADELINA SOUSA SIMÕES 1 \n Marcou a vez na Matriz \n AL AP BA CE PB PE RN RO RR TO',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'KVN8860 - TS (VOLVO - G420 420 A4X2 ANO:2011) \n Engata com BF - ESS-8368 / BT - EEOE-5766',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
            ]),
            DataRow(cells: [
              const DataCell(Text('003',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              DataCell(_bitremImage),
              DataCell(_verticalDivider),
              const DataCell(Text('19/03/2022 \n 20:30:57',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'EDDY MODESTO ZAGALO 1 \n Marcou a vez na Matriz \n AC AL AP BA CE MA PA PB PE PI RN RO RR SC TO',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'MZF9269 - CVB (SCANIA - G420 420 A4X27 ANO:2011) \n Engata com BF - FUH-0G27 / BT - FUE-5F27 \n Data Chegada: 25/03',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
            ]),
            DataRow(cells: [
              const DataCell(Text('002',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              DataCell(_truckImage),
              DataCell(_verticalDivider),
              const DataCell(Text('20/3/2022 \n 16:52:07',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'NICHOLAS PÊCEGO GOUVEIA 1 \n Marcou a vez na Matriz \n AP BA CE MA PA PE PI RN SC TO',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'MZF9269 - CVB (SCANIA - G420 420 A4X27 ANO:2011) \n Engata com BF - FUH-0G27 / BT - FUE-5F27 \n Data Chegada: 27/03',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
            ]),
            DataRow(cells: [
              const DataCell(Text('003',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              DataCell(_truckImage),
              DataCell(_verticalDivider),
              const DataCell(Text('20/03/2022 \n 20:31:11',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'NATHAN BELMONTE TEVES 1 \n Marcou a vez na Matriz \n AC AL AP BA CE MA PA PB PE PI RN RO RR SC TO',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'GVQ6758 - CVB (SCANIA - R114 GA 4X2NZ 380 ANO:2007) \n Engata com BF - FNK-2C47 / BT - ENM-6F79',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
            ]),
            DataRow(cells: [
              const DataCell(Text('004',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              DataCell(_bitremImage),
              DataCell(_verticalDivider),
              const DataCell(Text('21/03/2022 \n 11:55:16',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'MATHIAS BEIRIZ ARANTES 1 \n Marcou a vez na Matriz \n AC AL BA CE MA PA PB PE PI TO',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'NEI3084 - CVB (SCANIA - R114 GA 4X2NZ 380 ANO:2005) \n Engata com BF - ODS-0G14 / BT - FUQ-9B33',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
            ]),
            DataRow(cells: [
              const DataCell(Text('004',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              DataCell(_truckImage),
              DataCell(_verticalDivider),
              const DataCell(Text('21/03/2022 \n 18:07:29',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'NAYR PEIXOTO CARVALHAL 1 \n Marcou a vez na Matriz \n AC AL AP BA CE MA PA PB PE PI RN RO RR',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'JXZ6826 - CVB (SCANIA - R114 GA 4X2NZ 380 ANO:2008) \n Engata com BF - ESS-8368 / BT - EOE576',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
            ]),
            DataRow(cells: [
              const DataCell(Text('005',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              DataCell(_truckImage),
              DataCell(_verticalDivider),
              const DataCell(Text('21/03/2022 \n 18:42:55',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'NATANIEL RUAS MARINS 1 \n Marcou a vez na Matriz \n AC AL AP BA CE MA PA PB PE PI RN RO RR SC TO',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'KVN8860 - TS (VOLVO - G420 420 A4X2 ANO:2011) \n Engata com BF - ESS-8368 / BT - EEOE-5766',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
            ]),
            DataRow(cells: [
              const DataCell(Text('006',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              DataCell(_truckImage),
              DataCell(_verticalDivider),
              const DataCell(Text('22/03/2022 \n 13:32:14',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'JASON ORRIÇA PESCADA 1 \n Marcou a vez na Matriz \n AP BA CE PE PI RN RO SC TO',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
              DataCell(_verticalDivider),
              const DataCell(Text(
                  'NEI3084 - CVB (SCANIA - R114 GA 4X2NZ 380 ANO:2005) \n Engata com BF - ODS-0G14 / BT - FUQ-9B33',
                  style: TextStyle(
                    color: Colors.black,
                  ))),
            ]),
          ],
        ),
      ),
    );
  }
}
