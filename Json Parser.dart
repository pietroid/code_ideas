
// A new approach to parsing json
//
// Usage: 
// ```
// NewDataClass dataClassInstance = NewDataClass(json);
// print(dataClassInstance.id);
// ```

class NewDataClass extends Json {
  NewDataClass(super.json);

  int get id => Get<int>('id');
}

class Json {
  final Map<String, dynamic> json;

  Json(this.json);

  T Get<T>(String key) => json[key] as T;
  T Set<T>(String key) => json[key] as T;
}
