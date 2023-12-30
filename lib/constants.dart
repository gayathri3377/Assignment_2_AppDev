
class Constants {
  static const Map<String, int> fruitsMap = {
    'Dragon Fruit': 99,
    'Mango': 40,
    'Custard Apple': 30,
    'Guava': 30,
    'Banana': 29,
    'Watermelon': 30,
    'Star Fruit': 40,
    'Strawberry':99,
    'Orange':50,
    'Grapes':69,
    'Pineapple':60,
    'Papaya':40,
    'Apple':45

  };


  static const Map<String, int>vegetablesMap = {
    'Drum Stick': 39,
    'Tomato': 26,
    'Brinjal': 39,
    'Carrot': 49,
    'Cucumber': 35,
    'Green chilli': 29,
    'Peas': 59,
    'Cabbage':30,
    'Broccoli':59,
    'Cauliflower':39,
    'Capsicum':49
  };
}
  class DataStore {
    static final List<String> _selectedThings = [];

    static void setMapValue(String keyName) {
      _selectedThings.add(keyName);
    }

    static List<String> getArray() {
      return _selectedThings;
    }

    static int getPrice(String objectName){
      try{
        final correspondingPrice = Constants.fruitsMap.containsKey(objectName)
            ? Constants.fruitsMap[objectName]
            : Constants.vegetablesMap.containsKey(objectName)
            ? Constants.vegetablesMap[objectName]
            : 'Error';
        return int.parse(correspondingPrice.toString());
      } catch(e){
        throw Error();
      }
    }

  }


