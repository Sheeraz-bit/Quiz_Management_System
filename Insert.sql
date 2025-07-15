INSERT INTO quiz(question, opt_a, opt_b, opt_c, opt_d, answer) VALUES
-- 1
('What is Java?', 'A platform', 'A language', 'Both platform and language', 'None of the above', 'C'),
-- 2
('Which keyword declares a constant?', 'const', 'final', 'static', 'immutable', 'B'),
-- 3
('Which of these is not in java.util package?', 'List', 'Map', 'Tree', 'Scanner', 'C'),
-- 4
('Size of int in Java?', '16 bits', '32 bits', '64 bits', 'Depends on architecture', 'B'),
-- 5
('Which method starts a thread?', 'run()', 'start()', 'init()', 'main()', 'B'),
-- 6
('Exception on division by zero?', 'NullPointerException', 'IOException', 'ArithmeticException', 'ClassNotFoundException', 'C'),
-- 7
('Keyword for inheritance?', 'extends', 'implements', 'inherits', 'derives', 'A'),
-- 8
('Default boolean value?', 'true', 'false', 'null', '0', 'B'),
-- 9
('Which package has List?', 'java.util', 'java.lang', 'java.io', 'java.net', 'A'),
-- 10
('Interface for iteration?', 'Iterable', 'Iterator', 'Comparable', 'Serializable', 'A'),
-- 11
('Which is unchecked exception?', 'IOException', 'SQLException', 'ArithmeticException', 'ClassNotFoundException', 'C'),
-- 12
('super() refers to?', 'Current class', 'Parent class constructor', 'Static method', 'Interface default', 'B'),
-- 13
('Method overloading is?', 'Same name different params', 'Same signature in subclass', 'Different return types only', 'All true', 'A'),
-- 14
('What is wrapper for int?', 'Integer', 'Int', 'iWrapper', 'Num', 'A'),
-- 15
('String is immutable?', 'True', 'False', 'Only in Java 9+', 'Depends on implementation', 'A'),
-- 16
('Select valid enum declaration', 'enum Color {RED}', 'Color enum {RED}', 'enum {RED}', 'enum;Color;', 'A'),
-- 17
('Finally block executes when?', 'After try', 'After catch', 'Even if return in try', 'Only on exceptions', 'C'),
-- 18
('Generics introduced in Java version?', 'Java 4', 'Java 5', 'Java 6', 'Java 7', 'B'),
-- 19
('Which keyword prevents inheritance?', 'stop', 'final', 'private', 'static', 'B'),
-- 20
('Collection without duplicates?', 'List', 'Set', 'Queue', 'Map', 'B'),
-- 21
('Interface methods are by default?', 'public', 'private', 'protected', 'package-private', 'A'),
-- 22
('Lambda introduced in?', 'Java 7', 'Java 8', 'Java 9', 'Java 6', 'B'),
-- 23
('Use synchronized keyword for?', 'Serialization', 'Concurrency control', 'Testing', 'Parsing', 'B'),
-- 24
('Serializable interface is?', 'Marker', 'Functional', 'Abstract', 'Generic', 'A'),
-- 25
('Thread.sleep() throws?', 'InterruptedException', 'RuntimeException', 'Error', 'IOException', 'A'),
-- 26
('Which is immutable collection?', 'ArrayList', 'HashSet', 'Collections.unmodifiableList()', 'LinkedList', 'C'),
-- 27
('Default value for object reference?', '0', 'undefined', 'null', 'None', 'C'),
-- 28
('Enhances for loop syntax:', 'for(int i: arr)', 'foreach(int i in arr)', 'loop(int i; arr)', 'iterate(int i: arr)', 'A'),
-- 29
('StringBuilder vs StringBuffer?', 'Buffer is faster', 'Builder is synchronized', 'Builder is synchronized', 'Both same', 'B'),
-- 30
('Which method to get length of array?', 'size()', 'length()', 'getLength()', 'count()', 'B'),
-- 31
('== on objects compares?', 'Value', 'Reference', 'hashcode', 'content equality', 'B'),
-- 32
('HashMap permits null key?', 'Yes', 'No', 'Only in Java 8+', 'Only in values', 'A'),
-- 33
('volatile keyword ensures?', 'Visibility guarantee', 'Atomicity', 'Security', 'None', 'A'),
-- 34
('abstract class instantiation?', 'Allowed', 'Not allowed', 'Allowed via new', 'Allowed if no methods', 'B'),
-- 35
('Default access modifier is?', 'public', 'private', 'protected', 'package-private', 'D'),
-- 36
('Static import introduced in Java?', 'Java 4', 'Java 5', 'Java 6', 'Java 7', 'B'),
-- 37
('Checked exceptions must be?', 'Handled or declared', 'Ignored', 'Only runtime', 'Auto-handled', 'A'),
-- 38
('String method to compare content?', '==', 'compare()', 'equals()', 'match()', 'C'),
-- 39
('Which class loads classes?', 'ClassLoader', 'Class', 'Loader', 'Compiler', 'A'),
-- 40
('Convert string to int?', 'Integer.parseInt()', 'String.toInt()', 'parse.Int()', 'Int.parse()', 'A'),
-- 41
('Which is thread-safe?', 'Vector', 'ArrayList', 'HashMap', 'LinkedList', 'A'),
-- 42
('Inner class can be?', 'static', 'non-static', 'anonymous', 'All of the above', 'D'),
-- 43
('interface vs abstract class?', 'No methods in interface', 'Interface can have default', 'Abstract cannot', 'None', 'B'),
-- 44
('What is JRE?', 'Java Ready Environment', 'Java Runtime Environment', 'Java Runtime Extension', 'None', 'B'),
-- 45
('What is JDK?', 'Java Development Kit', 'Java Deployment Kit', 'Java Design Kit', 'None', 'A'),
-- 46
('Generics support?', 'Type erasure', 'Reification', 'Recompilation', 'None', 'A'),
-- 47
('Stream API from Java?', 'Java 7', 'Java 8', 'Java 9', 'Java 6', 'B'),
-- 48
('Optional added in Java?', '7', '8', '9', '10', 'B'),
-- 49
('What is a functional interface?', 'Interface with static method', 'Interface with one abstract method', 'Any interface', 'Interface with default method', 'B'),
-- 50
('Default method in interface needs?', 'abstract', 'default keyword', 'public', 'static', 'B'),
-- 51
('Boxing means?', 'Primitive to wrapper', 'Wrapper to primitive', 'Copying objects', 'Cloning', 'A'),
-- 52
('Enum extends?', 'Enum', 'java.lang.Enum', 'Object', 'None', 'B'),
-- 53
('Which is final method?', 'Cannot override', 'Cannot overload', 'Both', 'None', 'A'),
-- 54
('Which is good for key-value pairs?', 'List', 'Set', 'Map', 'Queue', 'C'),
-- 55
('Thread priorities range?', '1–5', '1–10', '0–10', '0–5', 'B'),
-- 56
('join() on thread does?', 'Remove thread', 'Pause main until thread dies', 'Terminate thread', 'None', 'B'),
-- 57
('RuntimeException is checked?', 'Yes', 'No', 'Only in Java 7', 'Depends', 'B'),
-- 58
('Scanner uses what package?', 'java.io', 'java.util', 'java.lang', 'java.net', 'B'),
-- 59
('StringBuffer is?', 'Immutable', 'Mutable', 'Final', 'Static', 'B'),
-- 60
('FileReader located in?', 'java.io', 'java.nio', 'java.util', 'java.lang', 'A'),
-- 61
('Which method of Thread class?', 'wait()', 'sleep()', 'yield()', 'All of above', 'D'),
-- 62
('Method overriding needs same?', 'Name only', 'Signature only', 'Signature return type and exceptions', 'None', 'C'),
-- 63
('Which collection is sorted?', 'HashMap', 'HashSet', 'TreeSet', 'LinkedHashSet', 'C'),
-- 64
('Which interface represents a double-ended queue?', 'List', 'Deque', 'Queue', 'Map', 'B'),
-- 65
('Which exception indicates class not found?', 'InstantiationException', 'IllegalAccessException', 'ClassNotFoundException', 'NoClassDefFoundError', 'C'),
-- 66
('Thread group manages?', 'Collection', 'Threads', 'Singletons', 'Exceptions', 'B'),
-- 67
('System.out is?', 'OutputStream', 'PrintStream', 'DataOutputStream', 'Writer', 'B'),
-- 68
('volatile variable updated?', 'Immediately visible to all threads', 'Cached only', 'Atomic update', 'Lazy update', 'A'),
-- 69
('Which is marker interface?', 'Cloneable', 'List', 'Runnable', 'Serializable', 'D'),
-- 70
('Which is mutable class?', 'String', 'StringBuilder', 'Integer', 'Double', 'B'),
-- 71
('static methods can access?', 'Instance variables', 'Static variables', 'Both', 'None', 'B'),
-- 72
('main method must be?', 'public static void main(String[] args)', 'private static void', 'public void main()', 'public static int main()', 'A'),
-- 73
('Which operator is null-safe?', '?.', '?:', '!?.', 'No operator', 'D'),
-- 74
('What is diamond operator <>', 'Type inference in generics', 'Less memory', 'Better performance', 'Deprecated syntax', 'A'),
-- 75
('Iterator removal safe?', 'List)', 'Map', 'Set', 'Collection', 'C'),
-- 76
('Which class used for date in Java 8?', 'Date', 'Calendar', 'LocalDate', 'SimpleDateFormat', 'C'),
-- 77
('Which method formats date?', 'format()', 'parse()', 'of()', 'create()', 'A'),
-- 78
('Try-with-resources introduced in?', 'Java 6', 'Java 7', 'Java 8', 'Java 9', 'B'),
-- 79
('Suppress warnings annotation?', '@SafeVarargs', '@SuppressWarnings', '@Override', '@Deprecated', 'B'),
-- 80
('Which reflects class at runtime?', 'Reflection', 'Annotation', 'Serialization', 'Collection', 'A'),
-- 81
('Which method sorts list?', 'Collections.sort()', 'List.sort()', 'sort()', 'order()', 'A'),
-- 82
('Which converts list to stream?', 'list.stream()', 'list.toStream()', 'stream(list)', 'list.asStream()', 'A'),
-- 83
('Which exception is thrown by new?', 'NullPointerException', 'OutOfMemoryError', 'InstantiationException', 'IOException', 'B'),
-- 84
('Which cannot be serialized?', 'StringBuffer', 'ArrayList', 'Transient variables', 'Serializable objects', 'C'),
-- 85
('Assert keyword enabled by?', '-ea flag', '-enable', '-assert', 'None', 'A'),
-- 86
('Which collects garbage?', 'JVM', 'JIT', 'GC', 'JIT compiler', 'C'),
-- 87
('Which is JIT?', 'Just-In-Time compiler', 'Java Input Tool', 'Java Integration Tool', 'Joint Interface Tool', 'A'),
-- 88
('Compile-time polymorphism is?', 'Method overriding', 'Method overloading', 'Interface implementation', 'Class instantiation', 'B'),
-- 89
('Runtime polymorphism is?', 'Overloading', 'Overriding', 'Abstract class', 'Final method', 'B'),
-- 90
('Which is immutable list in Java 9?', 'Arrays.asList()', 'List.of()', 'Collections.singleton()', 'None', 'B'),
-- 91
('Which method on Optional?', 'get()', 'orElse()', 'map()', 'All', 'D'),
-- 92
('Which annotation denotes test method?', '@Test', '@Run', '@Check', '@Validate', 'A'),
-- 93
('Stream filter returns?', 'Map', 'List', 'Stream', 'Set', 'C'),
-- 94
('Which can be local class?', 'Static', 'Non-static', 'Both', 'Neither', 'C'),
-- 95
('Which char literal is valid?', '’a’', '"a"', 'a', "'ab'", 'A'),
-- 96
('Sublist from List method?', 'subList()', 'slice()', 'segment()', 'part()', 'A'),
-- 97
('Which keyword for exception chaining?', 'throw', 'throws', 'Throwable', 'chained', 'A'),
-- 98
('Default value for int?', '0', 'null', 'undefined', '-1', 'A'),
-- 99
('Which path separator on Windows?', ';', ':', ',', '|', 'A'),
--100
('Which JVM argument shows memory usage?', '-Xmx', '-Xms', '-verbose:gc', '-showMem', 'C');
