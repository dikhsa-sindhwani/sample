def get_value_from_nested_object(obj, key):
    keys = key.split('/')
    value = obj
    for k in keys:
        if isinstance(value, dict) and k in value:
            value = value[k]
        else:
            return None
    return value

# Example usage
object1 = {"a": {"b": {"c": "d"}}}
key1 = "a/b/c"
result1 = get_value_from_nested_object(object1, key1)
print(result1)  # Output: d

object2 = {"x": {"y": {"z": "a"}}}
key2 = "x/y/z"
result2 = get_value_from_nested_object(object2, key2)
print(result2)  # Output: a