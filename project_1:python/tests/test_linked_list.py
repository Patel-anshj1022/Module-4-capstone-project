from linked_list.linked_list import LinkedList

def test_linked_list():
    ll = LinkedList()
    ll.add("Course 1")
    ll.add("Course 2")
    assert ll.get_all() == ["Course 2", "Course 1"]
