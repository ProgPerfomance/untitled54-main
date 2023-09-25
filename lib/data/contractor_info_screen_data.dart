final Map<String, Object> contractorInfoFull = {
  'id': "id1",
  'name': 'ПИК',
  'contractorType': 'Инд. исп.',
  'rating': 96,
  'registeredAt': DateTime.now().subtract(const Duration(days: 140)),
  'isVerified': true,
};

final List<Map<String, Object>> reviews = [
  {
    'id': "id1",
    'client': 'OOO "МОР"',
    'rating': 9,
    'description': 'Очень оперативно доставили.',
  },
  {
    'id': "id2",
    'client': 'одо "ИЛМС"',
    'rating': 3,
    'description': 'И так сойдёт!',
  },
];

final List<Map<String, Object>> carPark = [
  {
    'id': "id1",
    'name': '1"',
  },
  {
    'id': "id2",
    'name': '2',
  },
  {
    'id': "id2",
    'name': '2',
  },
];
