#include <iostream>    // cout
#include <typeinfo>    // for 'typeid'

class Person {
	public:
		virtual ~Person() {}
};

class Employee : public Person {
};

// 6Person
// 8Employee
// P6Person
// 8Employee
// 8Employee

int main() 
{
	Person person;
	Employee employee;
	Person* ptr = &employee;
	Person& ref = employee;
	// The string returned by typeid::name is implementation-defined
	std::cout << typeid(person).name() << std::endl;   // Person (statically known at compile-time)
	std::cout << typeid(employee).name() << std::endl; // Employee (statically known at compile-time)
	std::cout << typeid(ptr).name() << std::endl;      // Person* (statically known at compile-time)
	std::cout << typeid(*ptr).name() << std::endl;     // Employee (looked up dynamically at run-time
	//           because it is the dereference of a
	//           pointer to a polymorphic class)
	std::cout << typeid(ref).name() << std::endl;      // Employee (references can also be polymorphic)

	Person* p = nullptr;
	try {
		typeid(*p); // not undefined behavior; throws std::bad_typeid
	}
	catch (...) {
		std::cout << "std::bad_typeid" << std::endl;
	}

	Person& pRef = *p; // Undefined behavior: dereferencing null
	typeid(pRef);      // does not meet requirements to throw std::bad_typeid
	//std::cout << typeid(pRef).name() << std::endl;  //Segmentation fault
	// because the expression for typeid is not the result
	// of applying the unary * operator
}
