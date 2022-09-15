extern fun malloc(size: u64): ptr<void>;
extern fun calloc(nmemb: u64, size: u64): ptr<void>;
extern fun realloc(loc: ptr, size: u64): ptr<void>;
extern fun free(loc: ptr): void;
extern fun printf(format: ptr<char>, ...): void;

# create a type-generic function named allocate_for_class that returns a pointer to a new heap
# allocated object of the given type
def allocate_for_class<T>(): ptr<T> {
		return malloc(sizeof<T>()) as ptr<T>;
}

def class Person {
	var name: ptr<char> = "";
	var name_len: ulong = 0;
	var age: uint = 0;

	def init(name: ptr<char>, name_len: u64, age: i32) {
		self.name = name;
		self.age = age;
	}

	# define a function that prints out the persons name 
	def fun print_name() {
		printf("%s\n", self.name);
	}
}

def main(argv: ptr<ptr<char>>, argc: i32): f32 {
	const a: char = "bruh \n moment";
	# take in a name and age, allocates memory 
	# for a Person struct, and returns a pointer to it

	# check if we have the right number of arguments
	if argc != 3 {
		printf("Usage: ./main <name> <age> \n bruh");
		return 2;
	}

	var name: ptr<char> = argv[1];
	var name_len: u64 = strlen(name);


	
	return 0;
}

# create a function that parsers a string to an integer 
def parse_int(str: ptr<char>, len: u64): i32 {
	var i: u64 = 0;
	var num: i32 = 0;
	var negative: bool = false;

	if str[0] == '-' {
		negative = true;
		i = 1;
	}

	while i < len {
		num = num * 10 + (str[i] - '0');
		i = i + 1;
	}

	if negative {
		num = -num;
	}

	return num;
}


# create a function that says Hello World
def fun hello_world() {
	printf("Hello World\n");
}


